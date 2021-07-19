" ~/.vim/after/ftplugin/elixir.vim

nnoremap <buffer> <LocalLeader>=  :<C-U>Format<CR>
call filetype#UndoPlugin('nunmap <buffer> <LocalLeader>=')

inoreabbrev <buffer> _M  __MODULE__
call filetype#UndoPlugin('iunabbrev <buffer> _M')
