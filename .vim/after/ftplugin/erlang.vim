" ~/.vim/after/ftplugin/erlang.vim

setlocal path=.,,
    \apps/*/include,apps,lib/*/include,lib,include,
    \_checkouts,_build/default/lib,_build/test/lib
call mine#filetype#UndoPlugin('setlocal path<')

let &l:include = '\v\C^\s*-\s*%(include_lib|include)'
let &l:define  = '\v\C^\s*-\s*%(define|record)'
call mine#filetype#UndoPlugin('setlocal include< define<')

let b:ale_linters = ['elvis', 'syntaxerl']
call mine#filetype#UndoPlugin('unlet! b:ale_linters')

let b:syntastic_checkers = ['syntaxerl']
call mine#filetype#UndoPlugin('unlet! b:syntastic_checkers')

let b:commentary_format = '%% %s'
call mine#filetype#UndoPlugin('unlet! b:commentary_format')

let b:match_ignorecase = 0
call mine#filetype#UndoPlugin('unlet! b:match_ignorecase')

let b:match_skip = 's:\vComment|QuotedAtom|String|Sigil'
call mine#filetype#UndoPlugin('unlet! b:match_skip')

let b:match_words =
    \ '^\s*-\s*\%(ifdef\|ifndef\|if\)\>:' .
    \ '^\s*-\s*\%(elif\|else\)\>:' .
    \ '^\s*-\s*endif\>' .
    \ ',' .
    \ '\<\%(begin\|case\|fun\|if\|maybe\|receive\|try\)\>:' .
    \ '\<\%(after\|catch\|else\|of\)\>:' .
    \ '\<end\>'
call mine#filetype#UndoPlugin('unlet! b:match_words')

let b:surround_{char2nr('.')} = "<<\"\r\">>"
call mine#filetype#UndoPlugin('unlet! b:surround_' . char2nr('.'))

let b:surround_{char2nr('>')} = "<<\r>>"
call mine#filetype#UndoPlugin('unlet! b:surround_' . char2nr('>'))

" It's assumed that 'autowrite' and 'autoread' are set.
command -buffer Indent
    \ execute '!emacs --batch'
    \ '--find-file=' . shellescape(expand('%:p'))
    \ '--eval="(setq-default indent-tabs-mode nil)"'
    \ '--eval="(erlang-mode)"'
    \ '--eval="(font-lock-fontify-region (point-min) (point-max))"'
    \ '--eval="(indent-region (point-min) (point-max))"'
    \ '--eval="(funcall (if indent-tabs-mode ''tabify ''untabify)'
    \                  '(point-min) (point-max))"'
    \ '--eval="(save-buffer 0)"'
call mine#filetype#UndoPlugin('silent! delcommand Indent')

nnoremap <buffer> <LocalLeader>=  :<C-U>Indent<CR>
call mine#filetype#UndoPlugin('silent! nunmap <buffer> <LocalLeader>=')

command -buffer -bang SearchFunctionClause
    \ call mine#filetype#erlang#SearchFunctionClause(<bang>0 ? 'bsW' : 'sW')
call mine#filetype#UndoPlugin('silent! delcommand SearchFunctionClause')

nnoremap <buffer> ]]  :<C-U>SearchFunctionClause<CR>
nnoremap <buffer> [[  :<C-U>SearchFunctionClause!<CR>
call mine#filetype#UndoPlugin('silent! nunmap <buffer>', [']]', '[['])

inoreabbrev <buffer> <expr> -m  printf('-module(%s).', expand('%:t:r'))
call mine#filetype#UndoPlugin('silent! iunabbrev <buffer> -m')

inoreabbrev <buffer> -e  -export
inoreabbrev <buffer> -E  -export_type
call mine#filetype#UndoPlugin('silent! iunabbrev <buffer>', ['-e', '-E'])

inoreabbrev <buffer> -i  -include
inoreabbrev <buffer> -I  -include_lib
call mine#filetype#UndoPlugin('silent! iunabbrev <buffer>', ['-i', '-I'])

inoreabbrev <buffer> -o  -opaque
inoreabbrev <buffer> -t  -type
call mine#filetype#UndoPlugin('silent! iunabbrev <buffer>', ['-o', '-t'])

inoreabbrev <buffer> -s  -spec
call mine#filetype#UndoPlugin('silent! iunabbrev <buffer> -s')

inoreabbrev <buffer> -d  -define
inoreabbrev <buffer> -r  -record
call mine#filetype#UndoPlugin('silent! iunabbrev <buffer>', ['-d', '-r'])

inoreabbrev <buffer> -b  -behaviour
inoreabbrev <buffer> -c  -callback
call mine#filetype#UndoPlugin('silent! iunabbrev <buffer>', ['-b', '-c'])

inoreabbrev <buffer> cea  -compile([export_all, nowarn_export_all]).
call mine#filetype#UndoPlugin('silent! iunabbrev <buffer> cea')

inoreabbrev <buffer> ikl  -include_lib("kernel/include/logger.hrl").
inoreabbrev <buffer> isa  -include_lib("stdlib/include/assert.hrl").
call mine#filetype#UndoPlugin('silent! iunabbrev <buffer>', ['ikl', 'isa'])

inoreabbrev <buffer> ict  -include_lib("common_test/include/ct.hrl").
inoreabbrev <buffer> ieu  -include_lib("eunit/include/eunit.hrl").
call mine#filetype#UndoPlugin('silent! iunabbrev <buffer>', ['ict', 'ieu'])

inoreabbrev <buffer> ipe  -include_lib("proper/include/proper.hrl").
call mine#filetype#UndoPlugin('silent! iunabbrev <buffer> ipe')

inoreabbrev <buffer> <expr> 2=  '%%'  . repeat('=', 70 - 2)
inoreabbrev <buffer> <expr> 3=  '%%%' . repeat('=', 70 - 3)
call mine#filetype#UndoPlugin('silent! iunabbrev <buffer>', ['2=', '3='])

inoreabbrev <buffer> <expr> !=  v:char is# '=' ? '=/' : '/='
inoreabbrev <buffer> <expr> ==  v:char is# '=' ? '=:' : '=='
call mine#filetype#UndoPlugin('silent! iunabbrev <buffer>', ['!=', '=='])

" The following shades bit string generator.
inoreabbrev <buffer> <=  =<
call mine#filetype#UndoPlugin('silent! iunabbrev <buffer> <=')
