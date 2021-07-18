" ~/.vim/after/plugin/test/strategy.vim

if exists(':TestNearest') != 2 || !has#('patch-8.0.928')
  finish
endif

function! s:Strategy(cmd) abort
  let l:cmd = ['/bin/sh', '-c', s:WithEcho(a:cmd)]
  new
  call term_start(l:cmd, {'term_name': a:cmd, 'curwin': 1})
endfunction

function! s:WithEcho(cmd) abort
  return join(['echo', shellescape(a:cmd), ';', a:cmd])
endfunction

let g:test#custom_strategies = {'mine': function('s:Strategy')}
let g:test#strategy = 'mine'
