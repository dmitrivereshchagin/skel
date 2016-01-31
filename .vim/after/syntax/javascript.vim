" ~/.vim/after/syntax/javascript.vim

syntax clear javaScriptNumber
syntax match javaScriptNumber '\<\(\d\+\|0[xX]\x\+\)\>'

syntax match javaScriptFloat '\.\d\+\([eE][-+]\=\d\+\)\='
syntax match javaScriptFloat '\<\d\+[eE][-+]\=\d\+'
syntax match javaScriptFloat '\<\d\+\.\d*\([eE][-+]\=\d\+\)\='

highlight link javaScriptNumber Number
highlight link javaScriptFloat  Float
