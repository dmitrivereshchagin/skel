" ~/.vim/after/ftplugin/javascript.vim

setlocal iskeyword+=$

nmap <silent> <buffer> <LocalLeader>d :TernDef<CR>
nmap <silent> <buffer> <LocalLeader>r :TernRefs<CR>
nmap <silent> <buffer> <LocalLeader>t :TernType<CR>

call undo#ftplugin(
      \ 'setlocal iskeyword<',
      \ 'silent! nunmap <buffer> <LocalLeader>d',
      \ 'silent! nunmap <buffer> <LocalLeader>r',
      \ 'silent! nunmap <buffer> <LocalLeader>t',
      \ )
