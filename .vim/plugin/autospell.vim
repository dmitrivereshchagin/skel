" ~/.vim/plugin/autospell.vim

if exists('g:loaded_autospell')
  finish
endif
let g:loaded_autospell = 1

let s:filetypes = ['gitcommit', 'hgcommit', 'mail', 'markdown', 'svn']

function! s:FileTypes() abort
  return get(g:, 'autospell_filetypes', s:filetypes)
endfunction

function! s:AutoSpell(filetype) abort
  if &readonly || !&modifiable
    return
  endif
  if index(s:FileTypes(), a:filetype) < 0
    return
  endif
  setlocal spell
endfunction

augroup autospell
  autocmd!
  autocmd FileType *  call s:AutoSpell(expand('<amatch>'))
augroup END
