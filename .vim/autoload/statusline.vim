" ~/.vim/autoload/statusline.vim

function! s:Flag(flag) abort
  return exists('*' . a:flag) ? call(a:flag, []) : ''
endfunction

function! statusline#Flags() abort
  let l:flags = copy(get(g:, 'statusline#flags', []))
  return join(map(l:flags, 's:Flag(v:val)'), '')
endfunction
