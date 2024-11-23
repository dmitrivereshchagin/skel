" ~/.vim/plugin/alias.vim

if exists('g:loaded_alias')
  finish
endif
let g:loaded_alias = 1

let s:ECHO = echo#WithPrefix('Alias:')

function! s:Command(args) abort
  if len(a:args) != 2
    call s:ECHO.Error('Exactly two arguments required')
    return
  endif
  execute alias#Command(a:args[0], a:args[1])
endfunction

command -nargs=* Alias  call s:Command([<f-args>])
