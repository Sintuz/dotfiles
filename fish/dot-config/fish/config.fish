if status is-interactive
    # Commands to run in interactive sessions can go here
end

source /opt/homebrew/opt/asdf/libexec/asdf.fish

string match -q "$TERM_PROGRAM" "vscode"
and . (code --locate-shell-integration-path fish)

fzf_configure_bindings --directory=\cf
set fzf_preview_dir_cmd ls --all --color=always --tree=2

alias ls "colorls --sd"
alias la "colorls -lAog --time-style=\"+%Y/%m/%d %H:%M:%S\" --sd"

alias fishconf "nvim ~/.config/fish/config.fish"
