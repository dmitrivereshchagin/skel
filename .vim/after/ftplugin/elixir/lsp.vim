" ~/.vim/after/ftplugin/elixir/lsp.vim

if exists(':ALELint') != 2
  finish
endif

let b:ale_elixir_elixir_ls_release =
    \ $HOME . '/src/github.com/elixir-lsp/elixir-ls/release'
call mine#filetype#UndoPlugin('unlet! b:ale_elixir_elixir_ls_release')

let b:ale_elixir_elixir_ls_config =
    \ {'elixirLS': {'dialyzerEnabled': v:false}}
call mine#filetype#UndoPlugin('unlet! b:ale_elixir_elixir_ls_config')

let b:ale_linters = ['elixir_ls']
call mine#filetype#UndoPlugin('unlet! b:ale_linters')
