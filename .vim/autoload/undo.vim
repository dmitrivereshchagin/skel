" ~/.vim/autoload/undo.vim

if exists('g:autoloaded_undo')
  finish
endif
let g:autoloaded_undo = 1

function! s:undo(plugin, commands)
  let commands = copy(a:commands)
  if exists('b:undo_' . a:plugin)
    call insert(commands, b:undo_{a:plugin})
  endif
  let b:undo_{a:plugin} = join(commands, '|')
endfunction

function! undo#ftplugin(...)
  call s:undo('ftplugin', a:000)
endfunction

function! undo#indent(...)
  call s:undo('indent', a:000)
endfunction
