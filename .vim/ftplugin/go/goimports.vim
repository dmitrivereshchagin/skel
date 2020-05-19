" ~/.vim/ftplugin/go/goimports.vim

if !executable('goimports')
  finish
endif

let g:gofmt_command = 'goimports'
