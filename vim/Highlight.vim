
hi SpecialKey      term=bold ctermfg=4 guifg=Blue
hi NonText         term=bold ctermfg=12 gui=bold guifg=Blue
hi Directory       term=bold ctermfg=4 guifg=Blue
hi ErrorMsg        term=standout ctermfg=15 ctermbg=1 guifg=White guibg=Red
hi IncSearch       term=reverse cterm=reverse gui=reverse
hi Search          term=reverse ctermbg=11 guibg=Yellow
hi MoreMsg         term=bold ctermfg=2 gui=bold guifg=SeaGreen
hi ModeMsg         term=bold cterm=bold gui=bold
hi LineNr          term=underline ctermfg=245 guifg=Brown
hi Question        term=standout ctermfg=2 gui=bold guifg=SeaGreen
hi StatusLine      term=bold,reverse cterm=bold,reverse gui=bold,reverse
hi StatusLineNC    term=reverse cterm=reverse gui=reverse
hi VertSplit       term=reverse cterm=reverse gui=reverse
hi Title           term=bold ctermfg=5 gui=bold guifg=Magenta
hi Visual          term=reverse ctermbg=7 guibg=LightGrey
hi VisualNOS       term=bold,underline cterm=bold,underline gui=bold,underline
hi WarningMsg      term=standout ctermfg=1 guifg=Red
hi WildMenu        term=standout ctermfg=0 ctermbg=11 guifg=Black guibg=Yellow
hi Folded          term=standout ctermfg=4 ctermbg=248 guifg=DarkBlue guibg=LightGrey
hi FoldColumn      term=standout ctermfg=4 ctermbg=248 guifg=DarkBlue guibg=Grey
hi DiffAdd         term=bold ctermbg=81 guibg=LightBlue
hi DiffChange      term=bold ctermbg=225 guibg=LightMagenta
hi DiffDelete      term=bold ctermfg=12 ctermbg=159 gui=bold guifg=Blue guibg=LightCyan
hi DiffText        term=reverse cterm=bold ctermbg=9 gui=bold guibg=Red
hi SignColumn      term=standout ctermfg=4 ctermbg=248 guifg=DarkBlue guibg=Grey
hi SpellBad        term=reverse ctermbg=224 gui=undercurl guisp=Red
hi SpellCap        term=reverse ctermbg=81 gui=undercurl guisp=Blue
hi SpellRare       term=reverse ctermbg=225 gui=undercurl guisp=Magenta
hi SpellLocal      term=underline ctermbg=14 gui=undercurl guisp=DarkCyan
hi Pmenu           ctermbg=225 guibg=LightMagenta
hi PmenuSel        ctermbg=7 guibg=Grey
hi PmenuSbar       ctermbg=248 guibg=Grey
hi PmenuThumb      cterm=reverse gui=reverse
hi TabLine         term=underline cterm=underline ctermfg=0 ctermbg=7 gui=underline guibg=LightGrey
hi TabLineSel      term=bold cterm=bold gui=bold
hi TabLineFill     term=reverse cterm=reverse gui=reverse
hi CursorColumn    term=reverse ctermbg=7 guibg=Grey90
hi CursorLine      term=underline cterm=underline guibg=Grey90
hi Cursor          guifg=bg guibg=fg
hi lCursor         guifg=bg guibg=fg
hi MatchParen      term=reverse ctermbg=14 guibg=Cyan

hi Comment         term=bold ctermfg=4 guifg=Blue
hi Constant        term=underline ctermfg=1 guifg=Magenta
hi Special         term=bold ctermfg=5 guifg=SlateBlue
hi Identifier      term=underline ctermfg=6 guifg=DarkCyan
hi Statement       term=bold ctermfg=130 gui=bold guifg=Brown
hi PreProc         term=underline ctermfg=5 guifg=Purple
hi Type            term=underline ctermfg=2 gui=bold guifg=SeaGreen
hi Underlined      term=underline cterm=underline ctermfg=5 gui=underline guifg=SlateBlue
hi Ignore          ctermfg=15 guifg=bg
hi Error           term=reverse ctermfg=15 ctermbg=9 guifg=White guibg=Red
hi Todo            term=standout ctermfg=0 ctermbg=11 guifg=Blue guibg=Yellow

"
" Links
"

hi link String           Constant
hi link Character        Constant
hi link Number           Constant
hi link Boolean          Constant
hi link Float            Number
hi link Function         Identifier
hi link Conditional      Statement
hi link Repeat           Statement
hi link Label            Statement
hi link Operator         Statement
hi link Keyword          Statement
hi link Exception        Statement
hi link Include          PreProc
hi link Define           PreProc
hi link Macro            PreProc
hi link PreCondit        PreProc
hi link StorageClass     Type
hi link Structure        Type
hi link Typedef          Type
hi link Tag              Special
hi link SpecialChar      Special
hi link Delimiter        Special
hi link SpecialComment   Special
hi link Debug            Special
hi WhiteSpace      ctermbg=248 guibg=gray
hi link vimTodo          Todo
hi link vimCommand       Statement
hi link vimOption        PreProc
hi link vimErrSetting    vimError
hi link vimAutoEvent     Type
hi link vimGroup         Type
hi link vimHLGroup       vimGroup
hi link vimFuncName      Function
hi link vimNumber        Number
hi link vimAddress       vimMark
hi link vimAutoCmd       vimCommand
hi link vimLet           vimCommand
hi link vimMap           vimCommand
hi link vimMark          Number
hi link vimSyntax        vimCommand
hi link vimInsert        vimString
hi link vimBehaveModel   vimBehave
hi link vimBehaveError   vimError
hi link vimBehave        vimCommand
hi link vimFTCmd         vimCommand
hi link vimFTOption      vimSynType
hi link vimFTError       vimError
hi link vimFunctionError   vimError
hi link vimLineComment   vimComment
hi link vimSpecFile      Identifier
hi link vimOper          Operator
hi link vimComment       Comment
hi link vimString        String
hi link vimSubst         vimCommand
hi link vimRegister      SpecialChar
hi link vimCmplxRepeat   SpecialChar


hi link vimNotation      Special
hi link vimCtrlChar      SpecialChar
hi link vimFuncVar       Identifier
hi link vimContinue      Special
hi link vimAugroupKey    vimCommand



hi link vimSep           Delimiter
hi link vimOperError     Error
hi link vimFuncKey       vimCommand
hi link vimFuncSID       Special

hi link vimEchoHL        vimCommand


hi link vimFunc          vimError
hi link vimNorm          vimCommand
hi link vimNotFunc       vimCommand
hi link vimUserCommand   vimCommand


hi link vimPattern       Type
hi link vimSpecFileMod   vimSpecFile
hi link vimHighlight     vimCommand


hi link vimSetString     vimString


hi link vimUserAttrb     vimSpecial
hi link vimUserAttrbKey   vimOption
hi link vimUserAttrbCmplt   vimSpecial
hi link vimUserCmdError   Error
hi link vimUserAttrbCmpltFunc   Special
hi link vimCommentString   vimString
hi link vimEnvvar        PreProc
hi link vimPatSepErr     vimPatSep
hi link vimPatSep        SpecialChar
hi link vimPatSepZ       vimPatSep
hi link vimPatSepZone    vimString
hi link vimPatSepR       vimPatSep

hi link vimNotPatSep     vimString
hi link vimStringCont    vimString
hi link vimSubstTwoBS    vimString
hi link vimSubstSubstr   SpecialChar


hi link vimSubst1        vimSubst
hi link vimSubstDelim    Delimiter

hi link vimSubstFlagErr   vimError

hi link vimCollClassErr   vimError
hi link vimSubstFlags    Special
hi link vimMarkNumber    vimNumber
hi link vimPlainMark     vimMark
hi link vimPlainRegister   vimRegister
hi link vimSetMod        vimOption
hi link vimSetSep        Statement
hi link vimAbb           vimCommand
hi link vimMapMod        vimBracket





hi link vimEchoHLNone    vimGroup
hi link vimMapBang       vimCommand

hi link vimMapModKey     vimFuncSID
hi link vimMapModErr     vimError



hi link vimMenuName      PreProc
hi link vimMenuMod       vimMapMod
hi link vimMenuNameMore   vimMenuName


hi link vimBracket       Delimiter
hi link vimUserFunc      Normal
hi link vimElseIfErr     Error
hi link vimBufnrWarn     vimWarn

hi link vimGroupSpecial   Special

hi link vimSynError      Error
hi link vimSynContains   vimSynOption
hi link vimSynKeyContainedin   vimSynContains
hi link vimSynNextgroup   vimSynOption
hi link vimSynType       vimSpecial

hi link vimSynCase       Type
hi link vimSynCaseError   vimError


hi link vimGroupAdd      vimSynOption
hi link vimGroupRem      vimSynOption
hi link vimSynKeyOpt     vimSynOption

hi link vimMtchComment   vimComment
hi link vimSynMtchOpt    vimSynOption
hi link vimSynRegPat     vimString


hi link vimSynPatRange   vimString
hi link vimSynNotPatRange   vimSynRegPat
hi link vimSynRegOpt     vimSynOption
hi link vimSynReg        Type
hi link vimSynMtchGrp    vimSynOption


hi link vimSyncC         Type


hi link vimSyncError     Error



hi link vimSyncGroupName   vimGroupName
hi link vimSyncKey       Type
hi link vimSyncGroup     vimGroupName
hi link vimSyncNone      Type




hi link vimHiGroup       vimGroupName
hi link vimHiAttrib      PreProc
hi link vimFgBgAttrib    vimHiAttrib
hi link vimHiAttribList   vimError



hi link vimHiGuiRgb      vimNumber
hi link vimHiCtermError   vimError
hi link vimHiTerm        Type
hi link vimHiCTerm       vimHiTerm
hi link vimHiStartStop   vimHiTerm
hi link vimHiCtermFgBg   vimHiTerm
hi link vimHiGui         vimHiTerm
hi link vimHiGuiFont     vimHiTerm
hi link vimHiGuiFgBg     vimHiTerm
hi link vimHiKeyError    vimError

hi link vimCommentTitle   PreProc

hi link vimSearchDelim   Statement
hi link vimSearch        vimString

hi link perlTodo         Todo
hi link perlPOD          perlComment
hi link perlElseIfError   Error
hi link perlConditional   Conditional
hi link perlRepeat       Repeat
hi link perlOperator     Operator
hi link perlControl      PreProc
hi link perlStatementStorage   perlStatement
hi link perlStatementControl   perlStatement
hi link perlStatementScalar   perlStatement
hi link perlStatementRegexp   perlStatement
hi link perlStatementNumeric   perlStatement
hi link perlStatementList   perlStatement
hi link perlStatementHash   perlStatement
hi link perlStatementIOfunc   perlStatement
hi link perlStatementFiledesc   perlStatement


hi link perlStatementVector   perlStatement
hi link perlStatementFiles   perlStatement
hi link perlStatementFlow   perlStatement
hi link perlStatementInclude   perlStatement
hi link perlStatementScope   perlStatement
hi link perlStatementProc   perlStatement
hi link perlStatementSocket   perlStatement
hi link perlStatementIPC   perlStatement
hi link perlStatementNetwork   perlStatement
hi link perlStatementPword   perlStatement
hi link perlStatementTime   perlStatement
hi link perlStatementMisc   perlStatement
hi link perlStatementNew   perlStatement
hi link perlVarPlain     perlIdentifier
hi link perlVarNotInMatches   perlIdentifier
hi link perlVarSlash     perlIdentifier
hi link perlPackageRef   perlType

hi link perlVarSimpleMember   perlIdentifier
hi link perlMethod       perlIdentifier
hi link perlVarPlain2    perlIdentifier
hi link perlFunctionName   perlIdentifier
hi link perlVarSimpleMemberName   perlString
hi link perlFiledescRead   perlIdentifier
hi link perlFiledescStatement   perlIdentifier
hi link perlSpecialString   perlSpecial
hi link perlSpecialStringU   perlSpecial
hi link perlSpecialMatch   perlSpecial
hi link perlNotEmptyLine   Error

hi link perlSpecialBEOM   perlSpecial
hi link perlMatchStartEnd   perlStatement
hi link perlShellCommand   perlString
hi link perlNumber       Number
hi link perlFloat        Float
hi link perlMatch        perlString
hi link perlComment      Comment
hi link perlSubstitutionSQ   perlString
hi link perlSubstitutionDQ   perlString
hi link perlSubstitutionSlash   perlString
hi link perlSubstitutionHash   perlString
hi link perlSubstitutionBracket   perlString
hi link perlSubstitutionCurly   perlString
hi link perlSubstitutionPling   perlString


hi link perlTranslationSlash   perlString
hi link perlTranslationHash   perlString
hi link perlTranslationBracket   perlString
hi link perlTranslationCurly   perlString
hi link perlString       String
hi link perlBrackets     Error
hi link perlStringStartEnd   perlString
hi link perlStringUnexpanded   perlString
hi link perlQQ           perlString
hi link perlHereDoc      perlString





hi link perlStatementPackage   perlStatement
hi link perlPackageDecl   perlType
hi link perlStatementSub   perlStatement
hi link perlFunctionPrototype   perlFunction
hi link perlFunctionPRef   perlType
hi link perlFunction     Function
hi link perlSharpBang    PreProc
hi link perlFormatName   perlIdentifier
hi link perlFormatField   perlString

hi link perlDATA         perlComment
hi link perlInclude      Include
hi link perlSpecial      Special
hi link perlCharacter    Character
hi link perlType         Type
hi link perlIdentifier   Identifier
hi link perlLabel        Label
hi link perlStatement    Statement
hi link perlList         perlStatement
hi link perlMisc         perlStatement
hi link perlStorageClass   perlType
hi link perlSpecialAscii   perlSpecial
hi link perlSpecialDollar   perlSpecial


hi link vimScriptDelim   Comment

hi link rubyConditional   Conditional
hi link rubyTodo         Todo
hi link rubyStringEscape   Special
hi link rubyInterpolationDelimiter   Delimiter

hi link rubyInstanceVariable   rubyIdentifier
hi link rubyClassVariable   rubyIdentifier
hi link rubyGlobalVariable   rubyIdentifier
hi link rubyPredefinedVariable   rubyPredefinedIdentifier
hi link rubyInvalidVariable   Error
hi link rubyNoInterpolation   rubyString


hi link rubyString       String




hi link rubyRegexpSpecial   Special
hi link rubyRegexpComment   Comment

hi link rubyRegexpCharClass   rubyRegexpSpecial
hi link rubyRegexpEscape   rubyRegexpSpecial

hi link rubyRegexpQuantifier   rubyRegexpSpecial
hi link rubyRegexpAnchor   rubyRegexpSpecial
hi link rubyRegexpDot    rubyRegexpCharClass
hi link rubyASCIICode    Character
hi link rubyInteger      Number
hi link rubyFloat        Float


hi link rubyConstant     Type
hi link rubySymbol       Constant
hi link rubyBlockParameter   rubyIdentifier

hi link rubyPredefinedConstant   rubyPredefinedIdentifier
hi link rubyRegexpDelimiter   rubyStringDelimiter
hi link rubyRegexp       rubyString
hi link rubyStringDelimiter   Delimiter
hi link rubySymbolDelimiter   rubyStringDelimiter



hi link rubyBoolean      Boolean
hi link rubyPseudoVariable   Constant

hi link rubyOperator     Operator


hi link rubyFunction     Function
hi link rubyDefine       Define
hi link rubyClass        rubyDefine
hi link rubyModule       rubyDefine

hi link rubyConditionalModifier   rubyConditional
hi link rubyRepeatModifier   rubyRepeat
hi link rubyControl      Statement







hi link rubyRepeat       Repeat
hi link rubyOptionalDo   rubyRepeat


hi link rubyKeyword      Keyword
hi link rubyBeginEnd     Statement
hi link rubyAccess       Statement
hi link rubyAttribute    Statement
hi link rubyEval         Statement
hi link rubyException    Exception
hi link rubyInclude      Include
hi link rubySharpBang    PreProc
hi link rubySpaceError   rubyError
hi link rubyComment      Comment

hi link rubyDocumentation   Comment

hi link rubyDataDirective   Delimiter
hi link rubyData         Comment
hi link rubyIdentifier   Identifier
hi link rubyPredefinedIdentifier   rubyIdentifier
hi link rubyPseudoOperator   rubyOperator
hi link rubyError        Error

hi link pythonStatement   Statement
hi link pythonFunction   Function
hi link pythonRepeat     Repeat
hi link pythonConditional   Conditional
hi link pythonOperator   Operator
hi link pythonPreCondit   PreCondit
hi link pythonTodo       Todo
hi link pythonComment    Comment
hi link pythonDecoratorName   Function
hi link pythonDecorator   Define
hi link pythonEscape     Special
hi link pythonString     String
hi link pythonRawString   String




hi link vimEmbedError    vimError

hi link vimAuHighlight   vimHighlight
hi link vimError         Error
hi link vimKeyCodeError   vimError
hi link vimWarn          WarningMsg
hi link vimAutoCmdOpt    vimOption
hi link vimAutoSet       vimCommand
hi link vimCondHL        vimCommand
hi link vimElseif        vimCondHL
hi link vimSynOption     Special
hi link vimKeyCode       vimSpecFile
hi link vimSpecial       Type
hi link vimFold          Folded
hi link vimHLMod         PreProc
hi link vimKeyword       Statement
hi link vimStatement     Statement
hi link cStatement       Statement
hi link cLabel           Label
hi link cConditional     Conditional
hi link cRepeat          Repeat
hi link cTodo            Todo
hi link cSpecial         SpecialChar
hi link cFormat          cSpecial
hi link cString          String
hi link cCppString       cString
hi link cCharacter       Character
hi link cSpecialError    cError
hi link cSpecialCharacter   cSpecial
hi link cCurlyError      cError
hi link cErrInParen      cError

hi link cErrInBracket    cError


hi link cParenError      cError
hi link cIncluded        cString
hi link cCommentSkip     cComment
hi link cCommentString   cString
hi link cComment2String   cString
hi link cCommentStartError   cError

hi link cUserLabel       Label

hi link cOctalZero       PreProc
hi link cCppOut          Comment
hi link cCppOut2         cCppOut
hi link cCppSkip         cCppOut
hi link cNumber          Number
hi link cFloat           Float
hi link cOctal           Number
hi link cOctalError      cError




hi link cSpaceError      cError
hi link cCommentL        cComment
hi link cCommentStart    cComment
hi link cComment         Comment
hi link cCommentError    cError
hi link cOperator        Operator
hi link cType            Type
hi link cStructure       Structure
hi link cStorageClass    StorageClass
hi link cConstant        Constant
hi link cPreCondit       PreCondit
hi link cInclude         Include
hi link cDefine          Macro

hi link cPreProc         PreProc
hi link cError           Error

hi link helpHeadline     Statement
hi link helpSectionDelim   PreProc
hi link helpIgnore       Ignore
hi link helpExample      Comment
hi link helpBar          Ignore
hi link helpStar         Ignore
hi link helpHyperTextJump   Subtitle
hi link helpHyperTextEntry   String

hi link helpVim          Identifier
hi link helpOption       Type
hi link helpHeader       PreProc
hi link helpNote         Todo
hi link helpSpecial      Special

hi link helpNotVi        Special
hi link helpComment      Comment
hi link helpConstant     Constant
hi link helpString       String
hi link helpCharacter    Character
hi link helpNumber       Number
hi link helpBoolean      Boolean
hi link helpFloat        Float
hi link helpIdentifier   Identifier
hi link helpFunction     Function
hi link helpStatement    Statement
hi link helpConditional   Conditional
hi link helpRepeat       Repeat
hi link helpLabel        Label
hi link helpOperator     Operator
hi link helpKeyword      Keyword
hi link helpException    Exception
hi link helpPreProc      PreProc
hi link helpInclude      Include
hi link helpDefine       Define
hi link helpMacro        Macro
hi link helpPreCondit    PreCondit
hi link helpType         Type
hi link helpStorageClass   StorageClass
hi link helpStructure    Structure
hi link helpTypedef      Typedef
hi link helpSpecialChar   SpecialChar
hi link helpTag          Tag
hi link helpDelimiter    Delimiter
hi link helpSpecialComment   SpecialComment
hi link helpDebug        Debug
hi link helpUnderlined   Underlined
hi link helpError        Error
hi link helpTodo         Todo
hi link helpURL          String
hi link helpExampleStart   helpIgnore
hi link Subtitle         Identifier

