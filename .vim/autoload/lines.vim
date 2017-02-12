" ~/.vim/autoload/lines.vim

function! lines#GetStatusFlags() abort
  let l:flags = ''
  for l:flag in get(g:, 'lines_status_flags', [])
    let l:flags .= exists('*' . l:flag) ? call(l:flag, []) : ''
  endfor
  return l:flags
endfunction

function! lines#GetTabLine() abort
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
