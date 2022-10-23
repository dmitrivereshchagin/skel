" ~/.vim/after/ftdetect/yaml.vim

" vint: -ProhibitAutocmdWithNoGroup
autocmd BufNewFile,BufRead erlang_ls.config  call mine#filetype#Ensure('yaml')
" vint: +ProhibitAutocmdWithNoGroup
