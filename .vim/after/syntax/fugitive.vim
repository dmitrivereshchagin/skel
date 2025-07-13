" ~/.vim/after/syntax/fugitive.vim

silent! syntax clear fugitivePreposition

highlight link fugitiveHeader            Comment
highlight link fugitiveHeading           Comment
highlight link fugitiveUntrackedHeading  fugitiveHeading
highlight link fugitiveUnstagedHeading   fugitiveHeading
highlight link fugitiveStagedHeading     fugitiveHeading
