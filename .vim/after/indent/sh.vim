" ~/.vim/after/indent/sh.vim

let b:sh_indent_options = {'case-labels': 0}
call filetype#UndoIndent('unlet b:sh_indent_options')
