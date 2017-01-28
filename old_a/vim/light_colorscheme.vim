" Set 'background' back to the default.  The value can't always be estimated
" and is then guessed.
hi clear Normal
set bg&

" Remove all existing highlighting and set the defaults.
hi clear

" Load the syntax highlighting defaults, if it's enabled.
if exists("syntax_on")
  syntax reset
endif

hi SpecialKey      term=bold ctermfg=DarkBlue guifg=Blue
hi NonText         term=bold ctermfg=Blue gui=bold guifg=Blue
hi Directory       term=bold ctermfg=DarkBlue guifg=Blue
hi ErrorMsg        term=standout ctermfg=White ctermbg=DarkRed guifg=White guibg=Red
hi IncSearch       term=reverse cterm=reverse gui=reverse
hi Search          term=reverse ctermbg=Yellow guibg=Yellow
hi MoreMsg         term=bold ctermfg=DarkGreen gui=bold guifg=SeaGreen
hi ModeMsg         term=bold cterm=bold ctermfg=Red gui=bold
hi LineNr          term=underline ctermfg=DarkGray guifg=DarkGray
hi Question        term=standout ctermfg=DarkGreen gui=bold guifg=SeaGreen
hi StatusLine      term=bold,reverse cterm=bold,reverse gui=bold,reverse
hi StatusLineNC    term=reverse cterm=reverse gui=reverse
hi VertSplit       term=reverse cterm=reverse gui=reverse
hi Title           term=bold ctermfg=DarkMagenta gui=bold guifg=Magenta
hi Visual          term=reverse ctermbg=DarkGray guibg=DarkGray
hi WarningMsg      term=standout ctermfg=DarkRed guifg=Red
hi WildMenu        term=standout ctermfg=Black ctermbg=Yellow guifg=Black guibg=Yellow
hi Folded          term=standout ctermfg=DarkBlue ctermbg=Gray guifg=DarkBlue guibg=LightGrey
hi FoldColumn      term=standout ctermfg=DarkBlue ctermbg=Gray guifg=DarkBlue guibg=Grey
hi DiffAdd         term=bold ctermbg=Cyan guibg=LightBlue
hi DiffChange      term=bold ctermbg=LightMagenta guibg=LightMagenta
hi DiffDelete      term=bold ctermfg=Blue ctermbg=Cyan gui=bold guifg=Blue guibg=LightCyan
hi DiffText        term=reverse cterm=bold ctermbg=Red gui=bold guibg=Red
hi SignColumn      term=standout ctermfg=DarkBlue ctermbg=Gray guifg=DarkBlue guibg=Grey
hi SpellBad        term=reverse ctermbg=Red gui=undercurl guisp=Red
hi SpellCap        term=reverse ctermbg=Cyan gui=undercurl guisp=Blue
hi SpellRare       term=reverse ctermbg=Magenta gui=undercurl guisp=Magenta
hi SpellLocal      term=underline ctermbg=DarkCyan gui=undercurl guisp=DarkCyan
hi Pmenu           ctermbg=Magenta guibg=LightMagenta
hi PmenuSel        ctermbg=Gray guibg=Grey
hi PmenuSbar       ctermbg=Gray guibg=Grey
hi PmenuThumb      cterm=reverse gui=reverse
hi TabLine         term=NONE cterm=NONE ctermbg=LightGray ctermfg=DarkGray gui=NONE guibg=Gray guifg=NONE
hi TabLineFill     term=reverse cterm=NONE ctermbg=LightGray ctermfg=NONE gui=reverse guibg=bg guifg=NONE
hi TabLineSel      term=NONE cterm=NONE ctermbg=Blue ctermfg=White gui=bold guibg=bg guifg=NONE
hi CursorColumn    term=reverse ctermbg=Gray guibg=Grey90
hi CursorLine      term=underline cterm=underline 
hi CursorLineNr    term=bold ctermfg=DarkYellow gui=bold guifg=DarkYellow
hi ColorColumn     term=reverse ctermbg=Magenta guibg=LightRed
hi MatchParen      term=underline cterm=underline ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE
hi Comment         term=bold ctermfg=DarkBlue guifg=DarkBlue
hi Constant        term=underline ctermfg=DarkRed guifg=Magenta
hi Special         term=bold ctermfg=DarkMagenta guifg=SlateBlue
hi Identifier      term=underline ctermfg=DarkCyan guifg=DarkCyan
hi Statement       term=bold ctermfg=DarkYellow gui=bold guifg=Brown
hi PreProc         term=underline ctermfg=DarkMagenta guifg=Purple
hi Type            term=underline ctermfg=DarkGreen gui=bold guifg=SeaGreen
hi Underlined      term=underline cterm=underline ctermfg=DarkMagenta gui=underline guifg=SlateBlue
hi Ignore          ctermfg=Gray guifg=bg
hi Error           term=reverse ctermfg=White ctermbg=Red guifg=White guibg=Red
hi Todo            term=standout ctermfg=Black ctermbg=Yellow guifg=Blue guibg=Yellow
hi WhiteSpace      ctermbg=Gray guibg=lightgray

let g:colors_name = expand("<sfile>:t:r")

