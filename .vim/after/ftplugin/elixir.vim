" ~/.vim/after/ftplugin/elixir.vim

let b:surround_{char2nr('>')} = "<<\r>>"
call mine#filetype#UndoPlugin('unlet! b:surround_' . char2nr('>'))

nnoremap <buffer> <LocalLeader>=  :<C-U>Format<CR>
call mine#filetype#UndoPlugin('silent! nunmap <buffer> <LocalLeader>=')

inoreabbrev <buffer> @o  @opaque
inoreabbrev <buffer> @t  @type
inoreabbrev <buffer> @T  @typep
call mine#filetype#UndoPlugin('silent! iunabbrev <buffer>', ['@o', '@t', '@T'])

inoreabbrev <buffer> @s  @spec
call mine#filetype#UndoPlugin('silent! iunabbrev <buffer> @s')

inoreabbrev <buffer> @b  @behaviour
inoreabbrev <buffer> @c  @callback
call mine#filetype#UndoPlugin('silent! iunabbrev <buffer>', ['@b', '@c'])

inoreabbrev <buffer> <expr> @i  v:char is# "\<CR>" ? '@impl true' : '@impl'
call mine#filetype#UndoPlugin('silent! iunabbrev <buffer> @i')

inoreabbrev <buffer> _M  __MODULE__
inoreabbrev <buffer> _S  __STACKTRACE__
call mine#filetype#UndoPlugin('silent! iunabbrev <buffer>', ['_M', '_S'])
