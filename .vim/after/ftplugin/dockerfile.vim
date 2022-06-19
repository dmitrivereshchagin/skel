" ~/.vim/after/ftplugin/dockerfile.vim

setlocal formatoptions+=ro
call filetype#UndoPlugin('setlocal formatoptions<')

let b:ale_dockerfile_hadolint_use_docker = 'yes'
call filetype#UndoPlugin('unlet b:ale_dockerfile_hadolint_use_docker')

let b:syntastic_checkers = ['hadolint']
call filetype#UndoPlugin('unlet b:syntastic_checkers')

let b:syntastic_dockerfile_hadolint_args = '--no-color'
call filetype#UndoPlugin('unlet b:syntastic_dockerfile_hadolint_args')
