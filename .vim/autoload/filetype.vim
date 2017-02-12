" ~/.vim/autoload/filetype.vim

function! filetype#UndoFtplugin(...) abort
  call s:AppendCommands('b:undo_ftplugin', a:000)
endfunction

function! filetype#UndoIndent(...) abort
  call s:AppendCommands('b:undo_indent', a:000)
endfunction

function! s:AppendCommands(varname, commands) abort
  let l:commands = copy(a:commands)
  if exists(a:varname)
    call insert(l:commands, {a:varname})
  endif
  let {a:varname} = join(l:commands, ' | ')
endfunction
