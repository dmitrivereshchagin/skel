__xdg_path() {
    case $(eval echo "\${$1-}") in
    /*) eval echo "\$$1" ;;
    *)  echo "$2"
    esac
}

xdg_config_home() {
    __xdg_path XDG_CONFIG_HOME "$HOME/.config"
}

xdg_state_home() {
    __xdg_path XDG_STATE_HOME "$HOME/.local/state"
}

xdg_cache_home() {
    __xdg_path XDG_CACHE_HOME "$HOME/.cache"
}
