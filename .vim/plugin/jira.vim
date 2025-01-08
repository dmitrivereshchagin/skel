" ~/.vim/plugin/jira.vim

if exists('g:loaded_jira')
  finish
endif
let g:loaded_jira = 1

let s:ECHO = mine#echo#WithPrefix('JIRA:')

function! s:BrowseIssue(str) abort
  if !exists('g:jira_base_url')
    call s:ECHO.Error('g:jira_base_url not defined')
    return
  endif
  let l:key = matchstr(a:str, '\c\v[A-Z]+-[0-9]+')
  if empty(l:key)
    call s:ECHO.Error('Issue key not found in %s', string(a:str))
    return
  endif
  let l:url = g:jira_base_url . '/browse/' . l:key
  echo l:url
  call mine#xdg#Open(l:url)
endfunction

command -nargs=1 JIRABrowseIssue  call s:BrowseIssue(<q-args>)

nnoremap <Plug>JIRABrowseIssue
    \ :<C-U>JIRABrowseIssue <C-R>=expand('<cWORD>')<CR><CR>

if !hasmapto('<Plug>JIRABrowseIssue', 'n')
  nmap <unique> <Leader>j  <Plug>JIRABrowseIssue
endif
