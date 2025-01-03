" ~/.vim/autoload/mine/filetype.vim

function! s:AddCommand(varname, command, rest) abort
  let l:args = get(a:rest, 0, [])
  let l:commands = s:ExpandCommand(a:command, l:args)
  if exists(a:varname)
    call insert(l:commands, {a:varname})
  endif
  let {a:varname} = join(l:commands, '|')
endfunction

function! s:ExpandCommand(command, args) abort
  if !empty(a:args)
    return map(copy(a:args), 'join([a:command, v:val])')
  endif
  return [a:command]
endfunction

function! mine#filetype#UndoPlugin(command, ...) abort
  call s:AddCommand('b:undo_ftplugin', a:command, a:000)
endfunction

function! mine#filetype#UndoIndent(command, ...) abort
  call s:AddCommand('b:undo_indent', a:command, a:000)
endfunction

function! mine#filetype#Ensure(filetype) abort
  if &filetype is# a:filetype && did_filetype()
    " Don't trigger FileType event again for the same file type.
    return
  endif
  let &filetype = a:filetype
endfunction
