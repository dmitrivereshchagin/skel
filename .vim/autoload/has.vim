" ~/.vim/autoload/has.vim

function! s:HasPatch(major, minor, patch) abort
  let l:version = a:major * 100 + a:minor
  return v:version > l:version ||
      \ v:version == l:version && has('patch' . a:patch)
endfunction

function! has#(feature) abort
  if has('patch-7.4.237')
    return has(a:feature)
  endif
  let l:match = matchlist(a:feature, '\v\c^patch-(\d+)\.(\d+)\.(\d+)$')
  if empty(l:match)
    return has(a:feature)
  endif
  return call('s:HasPatch', l:match[1:3])
endfunction
