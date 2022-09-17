" ~/.vim/after/ftplugin/elixir.vim

nnoremap <buffer> <LocalLeader>=  :<C-U>Format<CR>
call filetype#UndoPlugin('silent! nunmap <buffer> <LocalLeader>=')

inoreabbrev <buffer> _M  __MODULE__
call filetype#UndoPlugin('silent! iunabbrev <buffer> _M')
