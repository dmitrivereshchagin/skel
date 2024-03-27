" ~/.vim/after/ftplugin/erlang.vim

setlocal path=.,,
    \apps/*/include,apps,lib/*/include,lib,include,
    \_checkouts,_build/default/lib,_build/test/lib
call filetype#UndoPlugin('setlocal path<')

let &l:include = '\v\C^\s*-\s*%(include_lib|include)'
let &l:define  = '\v\C^\s*-\s*%(define|record)'
call filetype#UndoPlugin('setlocal include< define<')

let b:ale_linters = ['elvis', 'syntaxerl']
call filetype#UndoPlugin('unlet! b:ale_linters')

let b:syntastic_checkers = ['syntaxerl']
call filetype#UndoPlugin('unlet! b:syntastic_checkers')

let b:commentary_format = '%% %s'
call filetype#UndoPlugin('unlet! b:commentary_format')

let b:match_ignorecase = 0
call filetype#UndoPlugin('unlet! b:match_ignorecase')

let b:match_skip = 's:erlangComment\|erlangQuotedAtom\|erlangString'
call filetype#UndoPlugin('unlet! b:match_skip')

let b:match_words =
    \ '^\s*-\s*\%(ifdef\|ifndef\|if\)\>:' .
    \ '^\s*-\s*\%(elif\|else\)\>:' .
    \ '^\s*-\s*endif\>' .
    \ ',' .
    \ '\<\%(begin\|case\|fun\|if\|maybe\|receive\|try\)\>:' .
    \ '\<\%(after\|catch\|else\|of\)\>:' .
    \ '\<end\>'
call filetype#UndoPlugin('unlet! b:match_words')

let b:surround_{char2nr('.')} = "<<\"\r\">>"
call filetype#UndoPlugin('unlet! b:surround_' . char2nr('.'))

let b:surround_{char2nr('>')} = "<<\r>>"
call filetype#UndoPlugin('unlet! b:surround_' . char2nr('>'))

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
call filetype#UndoPlugin('silent! delcommand Indent')

nnoremap <buffer> <LocalLeader>=  :<C-U>Indent<CR>
call filetype#UndoPlugin('silent! nunmap <buffer> <LocalLeader>=')

command -buffer -bang NextFunctionClause
    \ call search('\v\C^%([a-z][A-Za-z@_]*|''%([^''\\]|\\.)*'')\s*\(',
    \       <bang>0 ? 'bsW' : 'sW')
call filetype#UndoPlugin('silent! delcommand NextFunctionClause')

nnoremap <buffer> ]]  :<C-U>NextFunctionClause<CR>
nnoremap <buffer> [[  :<C-U>NextFunctionClause!<CR>
call filetype#UndoPlugin('silent! nunmap <buffer>', [']]', '[['])

inoreabbrev <buffer> <expr> -m  printf('-module(%s).', expand('%:t:r'))
call filetype#UndoPlugin('silent! iunabbrev <buffer> -m')

inoreabbrev <buffer> -e  -export
inoreabbrev <buffer> -E  -export_type
call filetype#UndoPlugin('silent! iunabbrev <buffer>', ['-e', '-E'])

inoreabbrev <buffer> -i  -include
inoreabbrev <buffer> -I  -include_lib
call filetype#UndoPlugin('silent! iunabbrev <buffer>', ['-i', '-I'])

inoreabbrev <buffer> -o  -opaque
inoreabbrev <buffer> -s  -spec
inoreabbrev <buffer> -t  -type
call filetype#UndoPlugin('silent! iunabbrev <buffer>', ['-o', '-s', '-t'])

inoreabbrev <buffer> -d  -define
inoreabbrev <buffer> -r  -record
call filetype#UndoPlugin('silent! iunabbrev <buffer>', ['-d', '-r'])

inoreabbrev <buffer> -b  -behaviour
inoreabbrev <buffer> -c  -callback
call filetype#UndoPlugin('silent! iunabbrev <buffer>', ['-b', '-c'])

inoreabbrev <buffer> cea  -compile([export_all, nowarn_export_all]).
call filetype#UndoPlugin('silent! iunabbrev <buffer> cea')

inoreabbrev <buffer> ikl  -include_lib("kernel/include/logger.hrl").
call filetype#UndoPlugin('silent! iunabbrev <buffer> ikl')

inoreabbrev <buffer> ict  -include_lib("common_test/include/ct.hrl").
inoreabbrev <buffer> ieu  -include_lib("eunit/include/eunit.hrl").
inoreabbrev <buffer> ipe  -include_lib("proper/include/proper.hrl").
call filetype#UndoPlugin('silent! iunabbrev <buffer>', ['ict', 'ieu', 'ipe'])

inoreabbrev <buffer> <expr> 2=  '%%'  . repeat('=', 70 - 2)
inoreabbrev <buffer> <expr> 3=  '%%%' . repeat('=', 70 - 3)
call filetype#UndoPlugin('silent! iunabbrev <buffer>', ['2=', '3='])

inoreabbrev <buffer> <expr> !=  v:char is# '=' ? '=/' : '/='
inoreabbrev <buffer> <expr> ==  v:char is# '=' ? '=:' : '=='
call filetype#UndoPlugin('silent! iunabbrev <buffer>', ['!=', '=='])

" The following shades bit string generator.
inoreabbrev <buffer> <=  =<
call filetype#UndoPlugin('silent! iunabbrev <buffer> <=')
