" ~/.vim/after/plugin/plumb.vim

let g:plumb_rules = [
    \ {'matches': '\v\c%(file|https?)://\S{-}\ze[^/0-9a-z]*$',
    \  'execute': '\=printf("echo %s | Browse %s", string(submatch(0)), submatch(0))'},
    \ ]
"   \ {'matches': '\v\c([+\-./0-9_a-z]+)!([0-9]+)',
"   \  'execute': 'Plumb https://gitlab.example.com/\1/-/merge_requests/\2'},
"   \
"   \ {'matches': '\v\C(ABC|abc|DEF|def)-?([0-9]+)',
"   \  'execute': 'Plumb https://jira.example.com/browse/\U\1-\2'},
let g:plumb_rules += [
    \ {'matches': '\v\c([+\-.0-9_a-z]+)\(([1-8])\)',
    \  'execute': 'Man \2 \1'},
    \
    \ {'matches': '\v\CDL[0-9]{4}',
    \  'execute': 'Plumb https://github.com/hadolint/hadolint/wiki/\0'},
    \
    \ {'matches': '\v\CSC[0-9]{4}',
    \  'execute': 'Plumb https://github.com/koalaman/shellcheck/wiki/\0'},
    \
    \ {'matches': '\v\C%(EEP|eep)-?([0-9]+)',
    \  'execute': '\=printf("Plumb https://www.erlang.org/eeps/eep-%04d", str2nr(submatch(1)))'},
    \
    \ {'matches': '\v\C%(PEP|pep)-?([0-9]+)',
    \  'execute': '\=printf("Plumb https://peps.python.org/pep-%04d/", str2nr(submatch(1)))'},
    \
    \ {'matches': '\v\C%(PSR|psr)-?([0-9]+)',
    \  'execute': 'Plumb https://www.php-fig.org/psr/psr-\1/'},
    \ ]
"   \ {'matches': '\v\C%(RFC|rfc)-?([0-9]+)\.([0-9]+%(\.[0-9]+)*)',
"   \  'execute': 'sview +/\\\\M^\2.\\\\?\\\\s\\\\.\\\\*/ ~/.local/share/rfcs/rfc\1.txt'},
"   \
"   \ {'matches': '\v\C%(RFC|rfc)-?([0-9]+)',
"   \  'execute': 'sview ~/.local/share/rfcs/rfc\1.txt'},
let g:plumb_rules += [
    \ {'matches': '\v\C%(RFC|rfc)-?([0-9]+)\.([0-9]+%(\.[0-9]+)*)',
    \  'execute': 'Plumb https://datatracker.ietf.org/doc/html/rfc\1#section-\2'},
    \
    \ {'matches': '\v\C%(RFC|rfc)-?([0-9]+)',
    \  'execute': 'Plumb https://datatracker.ietf.org/doc/html/rfc\1'},
    \
    \ {'matches': '\v\C[0-9a-f]{7,}',
    \  'execute': 'Git show --patch-with-stat \0'},
    \ ]
