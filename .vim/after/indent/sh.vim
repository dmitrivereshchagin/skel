" ~/.vim/after/indent/sh.vim

let b:sh_indent_options = {'case-labels': 0}

call undo#indent('unlet! b:sh_indent_options')
