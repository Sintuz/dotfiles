function tmux-window-name --on-variable PWD
    ~/.tmux/plugins/tmux-window-name/scripts/rename_session_windows.py &> /dev/null 2>&1
end
if test -n "$TMUX"
    tmux-window-name
end
