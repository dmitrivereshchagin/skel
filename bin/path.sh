# shellcheck shell=sh

path_remove() {
    _path=$PATH: _path_new=''

    while test -n "$_path"
    do
        _path_part=${_path%%:*} _path=${_path#*:}

        test "$_path_part" != "$1" &&
            _path_new=${_path_new:+$_path_new:}$_path_part
    done

    PATH=$_path_new

    unset _path _path_new _path_part
}

path_append() {
    path_remove "$1"
    PATH=${PATH:+$PATH:}$1
}

path_prepend() {
    path_remove "$1"
    PATH=$1${PATH:+:$PATH}
}
