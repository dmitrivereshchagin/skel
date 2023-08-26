" ~/.vim/after/ftplugin/elixir.vim

let b:surround_{char2nr('>')} = "<<\r>>"
call filetype#UndoPlugin('unlet! b:surround_' . char2nr('>'))

nnoremap <buffer> <LocalLeader>=  :<C-U>Format<CR>
call filetype#UndoPlugin('silent! nunmap <buffer> <LocalLeader>=')

inoreabbrev <buffer> @o  @opaque
inoreabbrev <buffer> @s  @spec
inoreabbrev <buffer> @t  @type
inoreabbrev <buffer> @T  @typep
call filetype#UndoPlugin('silent! iunabbrev <buffer>', ['@o', '@s', '@t', '@T'])

inoreabbrev <buffer> @b  @behaviour
inoreabbrev <buffer> @c  @callback
call filetype#UndoPlugin('silent! iunabbrev <buffer>', ['@b', '@c'])

inoreabbrev <buffer> <expr> @i  v:char is# "\<CR>" ? '@impl true' : '@impl'
call filetype#UndoPlugin('silent! iunabbrev <buffer> @i')

inoreabbrev <buffer> _M  __MODULE__
inoreabbrev <buffer> _S  __STACKTRACE__
call filetype#UndoPlugin('silent! iunabbrev <buffer>', ['_M', '_S'])
