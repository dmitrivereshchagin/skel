" ~/.vim/autoload/mine/lines.vim

function! mine#lines#ResetFlags() abort
  let s:status_flags = []
endfunction

call mine#lines#ResetFlags()


function! mine#lines#AddFlags(flags) abort
  call extend(s:status_flags, mine#value#EnsureList(a:flags))
endfunction


function! mine#lines#GetFlags() abort
  let l:flags = ''
  for l:Func in s:status_flags
    let l:flags .= mine#value#IsCallable(l:Func) ? call(l:Func, []) : ''
    unlet l:Func
  endfor
  return l:flags
endfunction


function! mine#lines#GetTabLine() abort
  let l:labels = ''
  for l:tab in range(1, tabpagenr('$'))
    let l:hl = l:tab == tabpagenr() ? '%#TabLineSel#' : '%#TabLine#'
    let l:labels .= l:hl . '%' . l:tab . 'T ' . s:GetTabLabel(l:tab) . ' '
  endfor
  return l:labels . '%#TabLineFill#%T'
endfunction


function! s:GetTabLabel(tab) abort
  let l:count = 0
  for l:buf in tabpagebuflist(a:tab)
    let l:count += getbufvar(l:buf, '&modified')
  endfor
  return a:tab . repeat('+', l:count)
endfunction
