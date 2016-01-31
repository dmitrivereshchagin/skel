#
# ~/.zlogin
#

if (( ${+commands[fortune]} )); then
    print; fortune -s; print
fi
