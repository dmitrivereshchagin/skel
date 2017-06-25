" ~/.vim/colors/mine.vim

highlight clear

if exists('g:syntax_on')
  syntax reset
endif

let g:colors_name = expand('<sfile>:t:r')

highlight DiffAdd         ctermfg=DarkGreen    ctermbg=NONE
highlight DiffChange      ctermfg=DarkCyan     ctermbg=NONE
highlight DiffDelete      ctermfg=DarkRed      ctermbg=NONE
highlight DiffText        ctermfg=DarkMagenta  ctermbg=NONE       cterm=NONE
highlight VertSplit                                               cterm=NONE
highlight Folded          ctermfg=NONE         ctermbg=NONE       cterm=bold
highlight FoldColumn                           ctermbg=NONE
highlight SignColumn                           ctermbg=NONE
highlight Pmenu                                ctermbg=LightGray
highlight PmenuSel        ctermfg=LightGray    ctermbg=Black
highlight SpellBad        ctermfg=White        ctermbg=DarkRed
highlight SpellCap        ctermfg=White        ctermbg=DarkCyan
highlight SpellLocal      ctermfg=White        ctermbg=DarkCyan
highlight SpellRare       ctermfg=White        ctermbg=DarkCyan
highlight TabLine         ctermfg=NONE         ctermbg=NONE       cterm=reverse
highlight WarningMsg      ctermfg=Red

if &background ==# 'dark'
  highlight LineNr        ctermfg=Blue
  highlight CursorLineNr  ctermfg=Blue
  highlight QuickFixLine  ctermfg=White        ctermbg=Blue
  highlight Search        ctermfg=White        ctermbg=Blue
  highlight WildMenu      ctermfg=White        ctermbg=Blue
endif
