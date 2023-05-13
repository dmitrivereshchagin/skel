" ~/.vim/after/ftplugin/elixir.vim

nnoremap <buffer> <LocalLeader>=  :<C-U>Format<CR>
call filetype#UndoPlugin('silent! nunmap <buffer> <LocalLeader>=')

let b:surround_{char2nr('>')} = "<<\r>>"
call filetype#UndoPlugin('unlet! b:surround_' . char2nr('>'))

inoreabbrev <buffer> @o  @opaque
inoreabbrev <buffer> @s  @spec
inoreabbrev <buffer> @t  @type
inoreabbrev <buffer> @T  @typep
call filetype#UndoPlugin('silent! iunabbrev <buffer>', ['@o', '@s', '@t', '@T'])

inoreabbrev <buffer> @b  @behaviour
inoreabbrev <buffer> @c  @callback
inoreabbrev <buffer> @i  @impl true
call filetype#UndoPlugin('silent! iunabbrev <buffer>', ['@b', '@c', '@i'])

inoreabbrev <buffer> _M  __MODULE__
call filetype#UndoPlugin('silent! iunabbrev <buffer> _M')
