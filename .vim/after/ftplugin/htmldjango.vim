" ~/.vim/after/ftplugin/htmldjango.vim

let b:commentary_format = '{# %s #}'

let b:surround_45 = "{% \r %}"
let b:surround_61 = "{{ \r }}"

call filetype#UndoFtplugin(
      \ 'unlet! b:commentary_format b:surround_45 b:surround_61',
      \ )
