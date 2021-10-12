" ~/.vim/autoload/xdg.vim

let s:defaults = {
    \ 'XDG_CONFIG_HOME': $HOME . '/.config',
    \ 'XDG_STATE_HOME':  $HOME . '/.local/state',
    \}

function! s:Home(name) abort
  let l:path = os#Getenv(a:name)
  if l:path[:0] isnot# '/'
    return s:defaults[a:name]
  endif
  return l:path
endfunction

function! xdg#ConfigHome() abort
  return s:Home('XDG_CONFIG_HOME')
endfunction

function! xdg#StateHome() abort
  return s:Home('XDG_STATE_HOME')
endfunction
