" ~/.vim/after/plugin/ale.vim

if exists(':ALELint') != 2
  finish
endif

function! ALEStatuslineFlag() abort
  let l:count = ale#statusline#Count(bufnr('%'))
  return l:count.total > 0 ? '[!]' : ''
endfunction

function! s:LSPSetup() abort
  if exists('b:did_lsp_setup')
    return
  endif
  let b:did_lsp_setup = 1
  call mine#filetype#UndoPlugin('unlet! b:did_lsp_setup')

  nmap <buffer> <C-]>  <Plug>(ale_go_to_definition)
  call mine#filetype#UndoPlugin('silent! nunmap <buffer> <C-]>')

  nmap <buffer> <C-W>]  <Plug>(ale_go_to_definition_in_split)
  call mine#filetype#UndoPlugin('silent! nunmap <buffer> <C-W>]')

  nmap <buffer> <C-W><C-]>  <C-W>]
  call mine#filetype#UndoPlugin('silent! nunmap <buffer> <C-W><C-]>')

  nmap <buffer> K  <Plug>(ale_hover)
  call mine#filetype#UndoPlugin('silent! nunmap <buffer> K')

  setlocal omnifunc=ale#completion#OmniFunc
  call mine#filetype#UndoPlugin('setlocal omnifunc<')
endfunction

augroup lsp_setup
  autocmd!
  autocmd User ALELSPStarted  call s:LSPSetup()
augroup END
