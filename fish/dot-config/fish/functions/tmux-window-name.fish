function tmux-window-name --on-variable PWD
    if test -n "$TMUX"
        $TMUX_PLUGIN_MANAGER_PATH/tmux-window-name/scripts/rename_session_windows.py &> /dev/null 2>&1
    end
end
if test -n "$TMUX"
    tmux-window-name
end
