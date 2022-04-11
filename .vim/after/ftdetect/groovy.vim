" ~/.vim/after/ftdetect/groovy.vim

" vint: -ProhibitAutocmdWithNoGroup
autocmd BufNewFile,BufRead Jenkinsfile  call filetype#Ensure('groovy')
" vint: +ProhibitAutocmdWithNoGroup
