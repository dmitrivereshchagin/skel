" ~/.vim/after/ftplugin/qf.vim

setlocal nowrap relativenumber nobuflisted
call mine#filetype#UndoPlugin('setlocal wrap< relativenumber< buflisted<')

setlocal statusline=
    \%n\ %q\ %<%.40{get(w:,\ 'quickfix_title',\ '')}%=%-14.(%l,%c%V%)\ %P
call mine#filetype#UndoPlugin('setlocal statusline<')
