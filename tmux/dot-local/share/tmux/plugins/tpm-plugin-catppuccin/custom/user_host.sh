show_user_host() {
    local index icon color text module

    
    tmux_batch_setup_status_module "user_host"
    run_tmux_batch_commands

    index=$1
    icon="$(get_tmux_option "@catppuccin_user_host_icon" "")"
    color="$(get_tmux_option "@catppuccin_user_host_color" "$thm_orange")"
    text="$(get_tmux_option "@catppuccin_user_host_text" "$(id -un)@$(hostname | cut -d '.' -f 1)")"

    module=$(build_status_module "$index" "$icon" "$color" "$text")

    echo "$module"
}

