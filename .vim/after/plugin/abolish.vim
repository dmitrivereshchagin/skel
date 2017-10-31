" ~/.vim/after/plugin/abolish.vim

if !exists(':Abolish')
  finish
endif

Abolish fqnd{,s}              fqdn{}
Abolish func{ito,to,toi}n{,s} func{tio}n{}
Abolish oprion{,s}            option{}
Abolish pa{ck,kc}ege{,s}      pa{ck}age{}
Abolish ret{run,unr}{,s}      ret{urn}{}
Abolish whne                  when
