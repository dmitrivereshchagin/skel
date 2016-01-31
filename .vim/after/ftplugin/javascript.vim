" ~/.vim/after/ftplugin/javascript.vim

setlocal iskeyword+=$

nmap <silent> <buffer> <LocalLeader>d :TernDef<CR>

call undo#ftplugin('setlocal iskeyword<', 'nunmap <buffer> <LocalLeader>d')
