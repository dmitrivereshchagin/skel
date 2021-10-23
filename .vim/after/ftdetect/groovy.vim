" ~/.vim/after/ftdetect/groovy.vim

" vint: -ProhibitAutocmdWithNoGroup
autocmd BufNewFile,BufRead Jenkinsfile  set filetype=groovy
" vint: +ProhibitAutocmdWithNoGroup
