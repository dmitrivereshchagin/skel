" ~/.vim/after/ftdetect/gitconfig.vim

" vint: -ProhibitAutocmdWithNoGroup
autocmd BufNewFile,BufRead .gitconfig.*  call mine#filetype#Ensure('gitconfig')
" vint: +ProhibitAutocmdWithNoGroup
