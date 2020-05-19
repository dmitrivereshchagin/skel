" ~/.vim/after/ftplugin/dockerfile.vim

setlocal formatoptions+=ro
call filetype#UndoPlugin('setlocal formatoptions<')

let b:ale_dockerfile_hadolint_use_docker = 'yes'
call filetype#UndoPlugin('unlet b:ale_dockerfile_hadolint_use_docker')
