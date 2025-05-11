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

MANOPT='--no-hyphenation --no-justification'
MANWIDTH=80
export MANOPT MANWIDTH

PERLDOC=-oman
export PERLDOC

# shellcheck source=/dev/null
test -d "$HOME/.asdf" &&
    . "$HOME/.asdf/asdf.sh"

path_prepend "$HOME/bin"
path_prepend "$HOME/.local/opt/mit-scheme/bin"
path_prepend "$HOME/.local/bin"

PLAN9=/usr/local/plan9
export PLAN9

path_append "$PLAN9/bin"

# shellcheck source=/dev/null
test -f "$HOME/.profile.local" &&
    . "$HOME/.profile.local"
