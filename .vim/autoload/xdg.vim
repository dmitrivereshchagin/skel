" ~/.vim/autoload/xdg.vim

let s:defaults = {
    \ 'XDG_STATE_HOME': $HOME . '/.local/state',
    \}

function! s:Home(name) abort
  let l:path = os#Getenv(a:name)
  if l:path[:0] isnot# '/'
    return s:defaults[a:name]
  endif
  return l:path
endfunction

function! xdg#StateHome() abort
  return s:Home('XDG_STATE_HOME')
endfunction
