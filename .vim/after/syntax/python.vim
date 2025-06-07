" ~/.vim/after/syntax/python.vim

syntax region pythonDocstring
    \ keepend
    \ start=/\%(^\s*\)\@<=[rR]\?"""/
    \ skip=/\\\\\|\\"/
    \ end=/"""/
    \ contains=pythonDoctest,pythonTodo,@Spell
    \ fold
syntax region pythonDocstring
    \ keepend
    \ start=/\%(^\s*\)\@<=[rR]\?'''/
    \ skip=/\\\\\|\\'/
    \ end=/'''/
    \ contains=pythonDoctest,pythonTodo,@Spell
    \ fold

silent! syntax clear pythonDoctest
syntax region pythonDoctest
    \ start=/^\s*>>>/
    \ end=/^\s*$/
    \ contained
    \ contains=@NoSpell
    \ transparent

highlight link pythonDocstring  Comment
