" ~/.vim/after/ftdetect/groovy.vim

" vint: -ProhibitAutocmdWithNoGroup
autocmd BufNewFile,BufRead Jenkinsfile  call filetype#Set('groovy')
" vint: +ProhibitAutocmdWithNoGroup
