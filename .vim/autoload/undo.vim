" ~/.vim/autoload/undo.vim

function! undo#ftplugin(...) abort
  call s:append('b:undo_ftplugin', a:000)
endfunction

function! undo#indent(...) abort
  call s:append('b:undo_indent', a:000)
endfunction

function! s:append(varname, commands) abort
  let l:commands = copy(a:commands)
  if exists(a:varname)
    call insert(l:commands, {a:varname})
  endif
  let {a:varname} = join(l:commands, ' | ')
endfunction
