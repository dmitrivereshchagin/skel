#
# ~/.profile
#
# This file is also sourced by GDM Xsession (at least on Fedora and Ubuntu).
# Maybe multiple times (at least on Fedora).
#
# shellcheck shell=sh
#

. "$HOME/bin/path.sh"

EDITOR=vim
PAGER=less
export EDITOR PAGER

BLOCK_SIZE=human-readable
export BLOCK_SIZE

ERL_AFLAGS='+pc unicode'
ERL_ZFLAGS='-kernel shell_history enabled -stdlib shell_docs_columns 80'
export ERL_AFLAGS ERL_ZFLAGS

KERL_BUILD_DOCS=yes
KERL_DOC_TARGETS='man chunks'
export KERL_BUILD_DOCS KERL_DOC_TARGETS

LESS=eFiQRX
LESSHISTFILE=-
export LESS LESSHISTFILE

# Make grotty(1) output ANSI escapes for man pages on Debian and Ubuntu.
GROFF_SGR=1
export GROFF_SGR

MANOPT='--no-hyphenation --no-justification'
MANWIDTH=80
export MANOPT MANWIDTH

if test -d "$HOME/.asdf"
then
    # shellcheck source=/dev/null
    . "$HOME/.asdf/asdf.sh"
fi

path_prepend "$HOME/bin"
path_prepend "$HOME/.local/opt/mit-scheme/bin"
path_prepend "$HOME/.local/bin"

PLAN9=/usr/local/plan9
export PLAN9

path_append "$PLAN9/bin"

if test -f "$HOME/.profile.local"
then
    # shellcheck source=/dev/null
    . "$HOME/.profile.local"
fi
