#Write-Output "Sourcing PowerShell profile"
$env:ProfileSourced = $true

if (Get-Command Set-Site -ErrorAction SilentlyContinue) {
    Set-Site SN1 -ErrorAction SilentlyContinue
}

# Alias functions
#set-alias vim 'C:\Program Files (x86)\Vim\vim74\gvim.exe'
function v { vim $args }
function cgrep { grep --color=always $args }

# Adding to path
$pathIncludeFile = [System.Environment]::ExpandEnvironmentVariables("%garPath%")
$pathIncludeFile += "\shell_config\path_include"

foreach ($line in (Get-Content $pathIncludeFile)) {
    $directory = [System.Environment]::ExpandEnvironmentVariables($line)
    $env:Path = $env:Path + ";$directory"
}

# Setting environment variables
$garPath = [System.Environment]::ExpandEnvironmentVariables("%garPath%")
$environmentVarFile = $garPath + "\shell_config\environment_var"

# FortuneParser.exe "$garPath\shell_config\fortune.txt" | cowsay.exe

foreach($line in (Get-Content $environmentVarFile)) {
    $nameStartIndex = $line.Indexof(" ") + 1
    $valueStartIndex = $line.Indexof("=") + 1
    $name = $line.Substring($nameStartIndex, $valueStartIndex - $nameStartIndex - 1)
    $value = $line.Substring($valueStartIndex)
    $value = [System.Environment]::ExpandEnvironmentVariables($value)

    [Environment]::SetEnvironmentVariable($name, $value)
}

<#
if ((Test-Path "$Home\pshist.csv") -and
    ($Global:HistoryAppended -eq $null -or $Global:HistoryAppended -eq $false))
{
    Import-Csv "$HOME\pshist.csv" | Add-History
    $Global:HistoryAppended = $true
}
#>

if (Test-Path "C:\Users\gamoh\Documents\util_scripts\") {
    $env:Path = $env:Path + ";C:\Users\gamoh\Documents\util_scripts\"
}

Register-EngineEvent -SourceIdentifier PowerShell.Exiting -Action {
    # TODO: Add logic to make sure that the resulting history file is larger
    # than the original therefore allowing the prevention of loosing information
    # when overwriting the file

    Get-History | Export-Csv -Append "$HOME\pshist.csv"
} | Out-Null

function Print-History {
    Import-Csv "$HOME\pshist.csv" | Format-Table -AutoSize
}

Remove-Item Alias:\cd -ErrorAction SilentlyContinue
function cd {
    if ($args.Count -eq 0) {
        $pwd = $HOME
    } elseif ($args[0] -eq '-') {
        $pwd = $OLDPWD
    } else {
        $pwd = $args[0]
    }
    
    $tmp = pwd
    
    if ($pwd) {
        Set-Location $pwd
    }
    
    Set-Variable -Name OLDPWD -Value $tmp -Scope global
}

function Get-ProcessTree {
    # Copyright (c) 2014 Atif Aziz. All rights reserved.
    #
    # Licensed under the Apache License, Version 2.0 (the "License");
    # you may not use this file except in compliance with the License.
    # You may obtain a copy of the License at
    #
    #    http://www.apache.org/licenses/LICENSE-2.0
    #
    # Unless required by applicable law or agreed to in writing, software
    # distributed under the License is distributed on an "AS IS" BASIS,
    # WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    # See the License for the specific language governing permissions and
    # limitations under the License.

    # Adapted from http://p0w3rsh3ll.wordpress.com/2012/10/12/show-processtree/

    <# 
    .SYNOPSIS
        PowerShell 2.0 script to get processes tree

    .EXAMPLE
        Get-ProcessTree -Verbose | select Id, Level, IndentedName, ParentId
    #>


    [CmdletBinding()]
    param([string]$ComputerName, [int]$IndentSize = 2)
    
    $indentSize   = [Math]::Max(1, [Math]::Min(12, $indentSize))
    $computerName = ($computerName, ".")[[String]::IsNullOrEmpty($computerName)]
    $processes    = Get-WmiObject Win32_Process -ComputerName $computerName
    $pids         = $processes | select -ExpandProperty ProcessId
    $parents      = $processes | select -ExpandProperty ParentProcessId -Unique
    $liveParents  = $parents | ? { $pids -contains $_ }
    $deadParents  = Compare-Object -ReferenceObject $parents -DifferenceObject $liveParents `
                  | select -ExpandProperty InputObject
    $processByParent = $processes | Group-Object -AsHashTable ParentProcessId
    
    function Write-ProcessTree($process, [int]$level = 0) {
        $id = $process.ProcessId
        $parentProcessId = $process.ParentProcessId
        $process = Get-Process -Id $id -ComputerName $computerName
        $indent = New-Object String(' ', ($level * $indentSize))
        $process `
        | Add-Member NoteProperty ParentId $parentProcessId -PassThru `
        | Add-Member NoteProperty Level $level -PassThru `
        | Add-Member NoteProperty IndentedName "$indent$($process.Name)" -PassThru 
        $processByParent.Item($id) `
        | ? { $_ } `
        | % { Write-ProcessTree $_ ($level + 1) }
    }

    $processes `
    | ? { $_.ProcessId -ne 0 -and ($_.ProcessId -eq $_.ParentProcessId -or $deadParents -contains $_.ParentProcessId) } `
    | % { Write-ProcessTree $_ }
}

function Print-ProccesTree {
    Get-ProcessTree -Verbose | select Id, Level, IndentedName
}

function fortune($Path) {
    [System.IO.File]::ReadAllText($Path) -replace "`r`n", "`n" -split "`n%`n" | Get-Random
}
#fortune $home\Dropbox\Windows\fortune.txt | cowsay

function prompt {
    # Print current time
    $time = Get-Date
    $time = "[$($time.ToString("HH:mm:ss"))]"
    $cwd = "$($executionContext.SessionState.Path.CurrentLocation)"
    $cwd = $cwd.Replace($HOME, "~")
    Write-Host "$([char]0x250c)PS $time $cwd`n$([char]0x2514)" -ForegroundColor DarkGray -NoNewLine

    $PrompEndStr = "$([char]0x263b)"
    Write-Host "$($PrompEndStr * ($nestedPromptLevel + 1))" -NoNewLine -ForegroundColor DarkYellow

    # Do this otherwise PowerShell doesn't know if you actually printed a
    # prompt and will automatically add its own prompt
    return " "
}


if ((gcm test-path -ErrorAction:SilentlyContinue) -and (test-path c:\torus\torusprofile.ps1)) { . c:\torus\torusprofile.ps1 } # auto-generated-by-torus-client

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
