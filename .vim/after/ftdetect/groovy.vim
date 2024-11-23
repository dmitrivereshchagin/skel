" ~/.vim/after/ftdetect/groovy.vim

" vint: -ProhibitAutocmdWithNoGroup
autocmd BufNewFile,BufRead Jenkinsfile  call mine#filetype#Ensure('groovy')
" vint: +ProhibitAutocmdWithNoGroup
