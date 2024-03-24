# shellcheck shell=sh

case ${XDG_DATA_HOME-} in
''|[!/]*) XDG_DATA_HOME=$HOME/.local/share
esac

case ${XDG_CONFIG_HOME-} in
''|[!/]*) XDG_CONFIG_HOME=$HOME/.config
esac

case ${XDG_STATE_HOME-} in
''|[!/]*) XDG_STATE_HOME=$HOME/.local/state
esac

case ${XDG_CACHE_HOME-} in
''|[!/]*) XDG_CACHE_HOME=$HOME/.cache
esac
