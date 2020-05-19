" ~/.vim/autoload/filetype.vim

function! s:Append(varname, command, ...) abort
  let l:commands = s:Apply(a:command, get(a:, 1, []))
  if exists(a:varname)
    call insert(l:commands, {a:varname})
  endif
  let {a:varname} = join(l:commands, '|')
endfunction

function! s:Apply(command, args) abort
  if !empty(a:args)
    return map(copy(a:args), 'join([a:command, v:val])')
  endif
  return [a:command]
endfunction

function! filetype#UndoPlugin(command, ...) abort
  call call('s:Append', ['b:undo_ftplugin', a:command] + a:000)
endfunction

function! filetype#UndoIndent(command, ...) abort
  call call('s:Append', ['b:undo_indent', a:command] + a:000)
endfunction
