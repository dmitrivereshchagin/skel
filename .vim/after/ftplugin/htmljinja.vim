" ~/.vim/after/ftplugin/htmljinja.vim

let b:commentary_format = '{# %s #}'
let b:surround_{char2nr('-')} = "{% \r %}"
let b:surround_{char2nr('=')} = "{{ \r }}"
let b:surround_{char2nr('c')} = "{# \r #}"
