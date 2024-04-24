" ~/.vim/autoload/xdg.vim

function! s:Path(name, default) abort
  let l:path = os#Getenv(a:name)
  return l:path[:0] is# '/' ? l:path : a:default
endfunction

function! xdg#DataHome() abort
  return s:Path('XDG_DATA_HOME', $HOME . '/.local/share')
endfunction

function! xdg#ConfigHome() abort
  return s:Path('XDG_CONFIG_HOME', $HOME . '/.config')
endfunction

function! xdg#StateHome() abort
  return s:Path('XDG_STATE_HOME', $HOME . '/.local/state')
endfunction

function! xdg#CacheHome() abort
  return s:Path('XDG_CACHE_HOME', $HOME . '/.cache')
endfunction
