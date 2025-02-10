if status is-interactive
    # Commands to run in interactive sessions can go here
end

eval "$(/opt/homebrew/bin/brew shellenv)"

string match -q "$TERM_PROGRAM" "vscode"
and . (code --locate-shell-integration-path fish)

fzf_configure_bindings --directory=\cf
set fzf_preview_dir_cmd ls --all --color=always --tree=2

alias ls "colorls --sd"
alias ll "ls -log --time-style=\"+%Y/%m/%d %H:%M:%S\" --sd"
alias la "ls -lAog --time-style=\"+%Y/%m/%d %H:%M:%S\" --sd"

if type -q nvim
	alias vim "nvim"
end

if type -q bat
	alias cat "bat"
end

if type -q trash
    alias rm trash
end

if type -q tmuxinator
    alias mux tmuxinator
end

source ~/.config/fish/functions/tmux-window-name.fish

source ~/.local/share/asdf/plugins/golang/set-env.fish
