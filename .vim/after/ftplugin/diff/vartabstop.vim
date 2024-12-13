" ~/.vim/after/ftplugin/diff/vartabstop.vim

if exists('+vartabstop')
  let &l:vartabstop = join([&l:tabstop + 1, &l:tabstop], ',')
  call mine#filetype#UndoPlugin('setlocal vartabstop<')
endif
