" ~/.vim/after/ftplugin/htmldjango.vim

let b:commentary_format = '{# %s #}'

call mine#filetype#UndoFtplugin('unlet! b:commentary_format')


let b:surround_45 = "{% \r %}"
let b:surround_61 = "{{ \r }}"

call mine#filetype#UndoFtplugin('unlet! b:surround_45 b:surround_61')
