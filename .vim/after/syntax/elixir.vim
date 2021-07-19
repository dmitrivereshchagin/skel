" ~/.vim/after/syntax/elixir.vim

silent! syntax clear elixirUnusedVariable

syntax cluster elixirDocStringContained contains=elixirTodo,@Spell

syntax match elixirDocAttribute /@\w*doc\>/

highlight link elixirDocAttribute Comment

highlight link elixirDocSigilDelimiter  Comment
highlight link elixirDocStringDelimiter Comment
