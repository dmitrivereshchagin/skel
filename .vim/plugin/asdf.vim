" ~/.vim/plugin/asdf.vim

if exists('g:loaded_asdf') || !exists('$ASDF_DIR')
  finish
endif
let g:loaded_asdf = 1

let s:INSTALLS = printf('\V\C\^%s/installs/', escape($ASDF_DIR, '\'))

let g:EditorConfig_exclude_patterns = get(g:, 'EditorConfig_exclude_patterns', [])
let g:EditorConfig_exclude_patterns += [s:INSTALLS]

let g:ale_pattern_options = get(g:, 'ale_pattern_options', {})
let g:ale_pattern_options[s:INSTALLS] = {'ale_enabled': 0}

let g:syntastic_ignore_files = get(g:, 'syntastic_ignore_files', [])
let g:syntastic_ignore_files += [s:INSTALLS]

unlet s:INSTALLS

augroup asdf
  autocmd!
  autocmd BufRead $ASDF_DIR/installs/*  set readonly
augroup END
