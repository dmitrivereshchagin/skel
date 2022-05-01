" ~/.vim/autoload/test/erlang/proper.vim

function! s:Module(position) abort
  return fnamemodify(a:position.file, ':t:r')
endfunction

function! s:NearestProp(position) abort
  let l:nearest = test#base#nearest_test(a:position, {
      \ 'test': ['\v\C^\s*(prop_\k+)\s*\('],
      \ 'namespace': [],
      \})
  return get(l:nearest.test, 0, '')
endfunction

function! test#erlang#proper#test_file(file) abort
  return a:file =~# '\v<prop_.*\.erl$'
endfunction

function! test#erlang#proper#build_position(type, position) abort
  let l:args = []
  if a:type isnot# 'suite'
    let l:module = s:Module(a:position)
    let l:args += ['--module=' . l:module]
  endif
  if a:type is# 'nearest'
    let l:prop = s:NearestProp(a:position)
    if !empty(l:prop)
      let l:args += ['--prop=' . l:prop]
    endif
  endif
  return l:args
endfunction

function! test#erlang#proper#build_args(args) abort
  return  ['proper'] + a:args
endfunction

function! test#erlang#proper#executable() abort
  return 'rebar3'
endfunction
