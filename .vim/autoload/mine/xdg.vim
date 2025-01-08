" ~/.vim/autoload/mine/xdg.vim

function! s:Path(name, default) abort
  let l:path = mine#os#Getenv(a:name)
  return l:path[:0] is# '/' ? l:path : a:default
endfunction

function! mine#xdg#DataHome() abort
  return s:Path('XDG_DATA_HOME', $HOME . '/.local/share')
endfunction

function! mine#xdg#ConfigHome() abort
  return s:Path('XDG_CONFIG_HOME', $HOME . '/.config')
endfunction

function! mine#xdg#StateHome() abort
  return s:Path('XDG_STATE_HOME', $HOME . '/.local/state')
endfunction

function! mine#xdg#CacheHome() abort
  return s:Path('XDG_CACHE_HOME', $HOME . '/.cache')
endfunction

function! mine#xdg#Open(url) abort
  call system('setsid xdg-open ' . shellescape(a:url))
endfunction
