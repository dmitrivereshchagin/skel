" ~/.vim/after/ftplugin/elixir/format.vim

command! -buffer Format  call s:Format()
call filetype#UndoPlugin('delcommand Format')

if exists('*s:Format')
  finish
endif

function! s:Format() abort
  let l:view = winsaveview()
  silent %!mix format -
  if v:shell_error
    let l:errors = s:Errors(getline(1, '$'))
    silent undo
    call setqflist(l:errors)
    redraw
    call s:Shout('mix format failed')
  endif
  call winrestview(l:view)
endfunction

function! s:Errors(output) abort
  let l:errors  = []
  let l:pattern = '\v^\*\* \((\w+)\) (\f{-1,}):(\d+)%(:(\d+))?: (.+)$'
  for l:match in s:Matches(a:output, l:pattern)
    let l:error = l:match[2] is# 'stdin'
        \ ? {'bufnr': bufnr('%')}
        \ : {'filename': l:match[2]}
    call extend(l:error, {
        \ 'lnum': l:match[3],
        \ 'col':  l:match[4],
        \ 'text': printf('%s: %s', l:match[1], l:match[5]),
        \})
    call add(l:errors, l:error)
  endfor
  return l:errors
endfunction

function! s:Matches(lines, pattern) abort
  let l:matches = []
  for l:line in a:lines
    let l:match = matchlist(l:line, a:pattern)
    if !empty(l:match)
      call add(l:matches, l:match)
    endif
  endfor
  return l:matches
endfunction

function! s:Shout(message) abort
  echohl ErrorMsg
  echomsg 'Format:' a:message
  echohl NONE
endfunction
