" ~/.vim/after/plugin/ale.vim

if exists(':ALELint') != 2
  finish
endif

function! ALEStatuslineFlag() abort
  let l:count = ale#statusline#Count(bufnr('%'))
  return l:count.total > 0 ? '[!]' : ''
endfunction

function! s:SetupLSP() abort
  nmap <buffer> <C-]>  <Plug>(ale_go_to_definition)
  call filetype#UndoPlugin('silent! nunmap <buffer> <C-]>')

  nmap <buffer> <C-W>]  <Plug>(ale_go_to_definition_in_split)
  call filetype#UndoPlugin('silent! nunmap <buffer> <C-W>]')

  nmap <buffer> <C-W><C-]>  <C-W>]
  call filetype#UndoPlugin('silent! nunmap <buffer> <C-W><C-]>')

  nmap <buffer> K  <Plug>(ale_hover)
  call filetype#UndoPlugin('silent! nunmap <buffer> K')

  setlocal omnifunc=ale#completion#OmniFunc
  call filetype#UndoPlugin('setlocal omnifunc<')
endfunction

augroup lsp_setup
  autocmd!
  autocmd User ALELSPStarted  if !exists('b:did_lsp_setup')
  autocmd User ALELSPStarted    let b:did_lsp_setup = 1
  autocmd User ALELSPStarted    call filetype#UndoPlugin('unlet! b:did_lsp_setup')
  autocmd User ALELSPStarted    call s:SetupLSP()
  autocmd User ALELSPStarted  endif
augroup END
