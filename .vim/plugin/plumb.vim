" ~/.vim/plugin/plumb.vim

if exists('g:loaded_plumb')
  finish
endif
let g:loaded_plumb = 1

let s:echo = mine#echo#WithPrefix('Plumb: ')

if !exists('g:plumb_rules')
  let g:plumb_rules = []
endif

function! s:MatchingCommand(data) abort
  for l:rule in g:plumb_rules
    let l:match = matchstr(a:data, l:rule.matches)
    if !empty(l:match)
      return substitute(l:match, l:rule.matches, l:rule.execute, '')
    endif
  endfor
  return "call s:echo.Error('No matching command')"
endfunction

command -nargs=1 Plumb
    \ execute s:MatchingCommand(<q-args>)

nnoremap <Plug>Plumb
    \ :<C-U>Plumb <C-R>=expand('<cWORD>')<CR><CR>

if !hasmapto('<Plug>Plumb', 'n')
  nmap <unique> <Leader><CR>  <Plug>Plumb
endif
