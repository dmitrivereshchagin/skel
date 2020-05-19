" ~/.vim/after/ftplugin/htmldjango.vim

let b:commentary_format = '{# %s #}'
call filetype#UndoPlugin('unlet b:commentary_format')

let b:surround_{char2nr('-')} = "{% \r %}"
call filetype#UndoPlugin("unlet b:surround_{char2nr('-')}")

let b:surround_{char2nr('=')} = "{{ \r }}"
call filetype#UndoPlugin("unlet b:surround_{char2nr('=')}")
