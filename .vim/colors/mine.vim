" ~/.vim/colors/mine.vim

set background=dark
highlight clear
if exists('g:syntax_on')
  syntax reset
endif
let g:colors_name = 'mine'

highlight CursorLine    cterm=NONE     ctermfg=NONE         ctermbg=DarkGray
highlight DiffAdd       cterm=NONE     ctermfg=DarkGreen    ctermbg=NONE
highlight DiffChange    cterm=NONE     ctermfg=DarkCyan     ctermbg=NONE
highlight DiffDelete    cterm=NONE     ctermfg=DarkRed      ctermbg=NONE
highlight DiffText      cterm=NONE     ctermfg=DarkMagenta  ctermbg=NONE
highlight VertSplit     cterm=NONE     ctermfg=NONE         ctermbg=NONE
highlight Folded        cterm=bold     ctermfg=NONE         ctermbg=NONE
highlight FoldColumn    cterm=NONE     ctermfg=NONE         ctermbg=NONE
highlight SignColumn    cterm=NONE     ctermfg=NONE         ctermbg=NONE
highlight Pmenu         cterm=NONE     ctermfg=Black        ctermbg=LightGray
highlight PmenuSel      cterm=NONE     ctermfg=White        ctermbg=Blue
highlight QuickFixLine  cterm=NONE     ctermfg=White        ctermbg=Blue
highlight Search        cterm=NONE     ctermfg=White        ctermbg=Blue
highlight SpellBad      cterm=NONE     ctermfg=White        ctermbg=DarkRed
highlight TabLine       cterm=reverse  ctermfg=NONE         ctermbg=NONE
highlight Visual        cterm=NONE     ctermfg=NONE         ctermbg=DarkGray
highlight WarningMsg    cterm=NONE     ctermfg=Red          ctermbg=NONE
highlight WildMenu      cterm=NONE     ctermfg=White        ctermbg=Blue
highlight Comment       cterm=NONE     ctermfg=LightCyan    ctermbg=NONE

highlight! link CursorColumn      CursorLine
highlight! link CursorLineNr      LineNr
highlight! link LineNr            NonText
highlight! link Sneak             Normal
highlight! link SpecialKey        NonText
highlight! link SpellCap          SpellBad
highlight! link SpellLocal        SpellBad
highlight! link SpellRare         SpellBad
highlight! link StatusLineTerm    StatusLine
highlight! link StatusLineTermNC  StatusLineNC
highlight! link Title             Normal

highlight Constant    NONE
highlight Identifier  NONE
highlight PreProc     NONE
highlight Special     NONE
highlight Statement   NONE
highlight Type        NONE
