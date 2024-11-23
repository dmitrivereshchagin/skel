" ~/.vim/autoload/mine/statusline.vim

function! s:Flag(flag) abort
  return exists('*' . a:flag) ? call(a:flag, []) : ''
endfunction

function! mine#statusline#Flags() abort
  let l:flags = copy(get(g:, 'mine#statusline#flags', []))
  return join(map(l:flags, 's:Flag(v:val)'), '')
endfunction
