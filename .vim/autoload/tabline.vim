" ~/.vim/autoload/tabline.vim

function! s:Tab(tab) abort
  let l:highlight = a:tab == tabpagenr() ? 'TabLineSel' : 'TabLine'
  return '%#' . l:highlight . '#%' . a:tab . 'T ' . s:TabLabel(a:tab) . ' '
endfunction

function! s:TabLabel(tab) abort
  let l:nmod = 0
  for l:buf in tabpagebuflist(a:tab)
    let l:nmod += getbufvar(l:buf, '&modified')
  endfor
  return a:tab . repeat('+', l:nmod)
endfunction

function! tabline#() abort
  let l:tabs = map(range(1, tabpagenr('$')), 's:Tab(v:val)')
  return join(l:tabs + ['%#TabLineFill#%T'], '')
endfunction
