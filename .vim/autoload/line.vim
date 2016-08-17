" ~/.vim/autoload/line.vim

function! line#flags() abort
  let l:flags = ''
  for l:flag in get(g:, 'line_flags', [])
    let l:flags .= s:display(l:flag)
  endfor
  return l:flags
endfunction

function! line#tabline() abort
  let l:labels = ''
  for l:tab in range(1, tabpagenr('$'))
    let l:hl = l:tab == tabpagenr() ? '%#TabLineSel#' : '%#TabLine#'
    let l:labels .= l:hl . '%' . l:tab . 'T ' . s:label(l:tab) . ' '
  endfor
  return l:labels . '%#TabLineFill#%T'
endfunction

function! s:display(flag) abort
  return exists('*' . a:flag) ? call(a:flag, []) : ''
endfunction

function! s:label(tab) abort
  let l:count = 0
  for l:buf in tabpagebuflist(a:tab)
    let l:count += getbufvar(l:buf, '&modified')
  endfor
  return a:tab . repeat('+', l:count)
endfunction
