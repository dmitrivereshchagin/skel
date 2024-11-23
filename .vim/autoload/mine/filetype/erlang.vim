" ~/.vim/autoload/mine/filetype/erlang.vim

let s:FUNCTION_CLAUSE =
    \ '\v\C^%([a-z][A-Za-z@_]*|''%([^''\\]|\\.)*'')\s*\('

function! s:SyntaxGroupMatches(pattern) abort
  return synIDattr(synID(line('.'), col('.'), 1), 'name') =~? a:pattern
endfunction

function! mine#filetype#erlang#SearchFunctionClause(flags) abort
  if mine#Has('patch-8.2.915')
    let l:skip = 's:SyntaxGroupMatches(''\vComment|String|Sigil'')'
    return search(s:FUNCTION_CLAUSE, a:flags, 0, 0, l:skip)
  endif
  return search(s:FUNCTION_CLAUSE, a:flags)
endfunction
