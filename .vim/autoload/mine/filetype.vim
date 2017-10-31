" ~/.vim/autoload/mine/filetype.vim

function! mine#filetype#UndoFtplugin(commands) abort
  call s:AppendCommands('b:undo_ftplugin', a:commands)
endfunction


function! mine#filetype#UndoIndent(commands) abort
  call s:AppendCommands('b:undo_indent', a:commands)
endfunction


function! s:AppendCommands(varname, commands) abort
  let l:commands = mine#value#EnsureList(copy(a:commands))
  if exists(a:varname)
    call insert(l:commands, {a:varname})
  endif
  let {a:varname} = join(l:commands, ' | ')
endfunction
