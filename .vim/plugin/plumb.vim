" ~/.vim/plugin/plumb.vim

if exists('g:loaded_plumb')
  finish
endif
let g:loaded_plumb = 1

if !exists('g:plumb_rules')
  let g:plumb_rules = []
endif

command -nargs=+ Plumb
    \ execute mine#plumb#MatchingCommand(<q-args>, g:plumb_rules)

nnoremap <Plug>PlumbWORD
    \ :<C-U>Plumb <C-R>=expand('<cWORD>')<CR><CR>

if !hasmapto('<Plug>PlumbWORD', 'n')
  nmap <unique> <Leader><CR>  <Plug>PlumbWORD
endif

xnoremap <Plug>PlumbVisual
    \ :<C-U>Plumb <C-R>=mine#plumb#Visual()<CR><CR>

if !hasmapto('<Plug>PlumbVisual', 'x')
  xmap <unique> <Leader><CR>  <Plug>PlumbVisual
endif
