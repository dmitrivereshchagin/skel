" ~/.vim/autoload/ctags.vim

function! ctags#Ctags(args) abort
  return '!' . s:GetCtagsExecutable() . ' ' . (empty(a:args) ? '-R' : a:args)
endfunction

function! s:GetCtagsExecutable() abort
  return get(g:, 'ctags_executable', 'ctags')
endfunction
