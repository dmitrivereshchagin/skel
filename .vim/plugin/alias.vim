" ~/.vim/plugin/alias.vim

if exists('g:loaded_alias')
  finish
endif
let g:loaded_alias = 1

function! s:Command(args) abort
  if len(a:args) != 2
    call s:Shout('Exactly two arguments required')
    return
  endif
  execute alias#Command(a:args[0], a:args[1])
endfunction

function! s:Shout(message) abort
  echohl ErrorMsg
  echomsg 'Alias:' a:message
  echohl NONE
endfunction

command -nargs=* Alias  call s:Command([<f-args>])
