" ~/.vim/autoload/mine/plumb.vim

let s:echo = mine#echo#WithPrefix('Plumb: ')

function! mine#plumb#NoMatchingCommand() abort
  call s:echo.Error('No matching command')
endfunction

function! mine#plumb#MatchingCommand(data, rules) abort
  for l:rule in a:rules
    let l:match = matchstr(a:data, l:rule.matches)
    if !empty(l:match)
      return substitute(l:match, l:rule.matches, l:rule.execute, '')
    endif
  endfor
  return 'call mine#plumb#NoMatchingCommand()'
endfunction

function! mine#plumb#Visual() abort
  let [l:x, l:xtype] = [getreg('x'), getregtype('x')]
  silent normal! gv"xy
  let l:selection = getreg('x')
  call setreg('x', l:x, l:xtype)
  return l:selection
endfunction
