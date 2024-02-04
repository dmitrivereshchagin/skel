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

ERL_AFLAGS='+pc unicode -kernel shell_history enabled'
export ERL_AFLAGS

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

# shellcheck source=/dev/null
test -f "$HOME/.profile.local" &&
    . "$HOME/.profile.local"
