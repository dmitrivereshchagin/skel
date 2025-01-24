" ~/.vim/plugin/alias.vim

if exists('g:loaded_alias')
  finish
endif
let g:loaded_alias = 1

let s:ECHO = mine#echo#WithPrefix('Alias:')

function! s:Alias(args) abort
  if len(a:args) != 2
    call s:ECHO.Error('Exactly two arguments required')
    return
  endif
  execute mine#alias#Command(a:args[0], a:args[1])
endfunction

command -nargs=* Alias  call s:Alias([<f-args>])
