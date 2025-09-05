" ~/.vim/after/ftplugin/elixir/format.vim

command -buffer Format  call s:Format()
call mine#filetype#UndoPlugin('silent! delcommand Format')

if exists('*s:Format')
  finish
endif

let s:echo = mine#echo#WithPrefix('Format: ')

function! s:Format() abort
  let l:view = winsaveview()
  execute 'silent %!' . s:MixFormatCmd()
  if v:shell_error
    let l:errors = s:Errors(getline(1, '$'))
    silent undo
    call setqflist(l:errors)
    redraw
    call s:echo.Error('mix format failed')
  endif
  call winrestview(l:view)
endfunction

function! s:Errors(output) abort
  let l:errors  = []
  let l:pattern = '\v^\*\* \((\w+)\) (\f{-1,}):(\d+)%(:(\d+))?: (.+)$'
  for l:match in s:Matches(a:output, l:pattern)
    let l:error = l:match[2] is# s:Stdin()
        \ ? {'bufnr': bufnr('%')}
        \ : {'filename': l:match[2]}
    call extend(l:error, {
        \ 'lnum': l:match[3],
        \ 'col':  l:match[4],
        \ 'text': l:match[1] . ': ' . l:match[5],
        \ })
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

function! s:MixFormatCmd() abort
  let l:filename = s:StdinFilename()
  return !empty(l:filename)
      \ ? 'mix format --stdin-filename=' . shellescape(l:filename, 1) . ' -'
      \ : 'mix format -'
endfunction

function! s:StdinFilename() abort
  return s:HasStdinFilename() ? expand('%:.') : ''
endfunction

function! s:Stdin() abort
  return s:HasStdinFilename() ? 'stdin.exs' : 'stdin'
endfunction

function! s:HasStdinFilename() abort
  if !exists('s:has_stdin_filename')
    let s:has_stdin_filename = system('mix help format') =~# '--stdin-filename'
  endif
  return s:has_stdin_filename
endfunction
