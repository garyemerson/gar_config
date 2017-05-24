param([Parameter(Mandatory=$true)]
      [string] $File)

& C:\\Windows\\Microsoft.NET\\Framework\\v4.0.30319\\csc.exe /debug /nologo $File
if ($?)
{
    $basename = (dir $File | select BaseName).BaseName 
    if ($basename -ne $null)
    {
        $exe = $(".\" + $basename + ".exe") 
        Write-Output ("Running " + $exe)
        & $exe
    }
}
