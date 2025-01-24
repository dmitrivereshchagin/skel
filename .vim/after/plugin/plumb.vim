" ~/.vim/after/plugin/plumb.vim

let g:plumb_rules = [
    \ {'matches': '\v\c%(file|https?)://\S{-}\ze[^/0-9a-z]*$',
    \  'execute': '\="echo " . string(submatch(0)) . " | Browse " . submatch(0)'},
    \
    \ {'matches': '\v\c([+\-.0-9_a-z]+)\(([1-8])\)',
    \  'execute': 'Man \2 \1'},
    \ ]
"   \ {'matches': '\v\c([+\-./0-9_a-z]+)!([0-9]+)',
"   \  'execute': 'Plumb https://gitlab.example.com/\1/-/merge_requests/\2'},
"   \
"   \ {'matches': '\v\C[A-Z]+-[0-9]+',
"   \  'execute': 'Plumb https://jira.example.com/browse/\0'},
"   \
"   \ {'matches': '\v\C%(RFC|rfc):?([0-9]+)\.([0-9]+%(\.[0-9]+)*)',
"   \  'execute': 'sview +/\\\\M^\2.\\\\?\\\\s/ ~/.local/share/rfcs/rfc\1.txt'},
"   \
"   \ {'matches': '\v\C%(RFC|rfc):?([0-9]+)',
"   \  'execute': 'sview ~/.local/share/rfcs/rfc\1.txt'},
let g:plumb_rules += [
    \ {'matches': '\v\C%(RFC|rfc):?([0-9]+)\.([0-9]+%(\.[0-9]+)*)',
    \  'execute': 'Plumb https://datatracker.ietf.org/doc/html/rfc\1#section-\2'},
    \
    \ {'matches': '\v\C%(RFC|rfc):?([0-9]+)',
    \  'execute': 'Plumb https://datatracker.ietf.org/doc/html/rfc\1'},
    \
    \ {'matches': '\v\C[0-9a-f]{7,}',
    \  'execute': 'Git show --patch-with-stat \0'},
    \ ]
