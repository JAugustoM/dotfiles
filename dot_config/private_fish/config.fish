if status is-interactive
    # Commands to run in interactive sessions can go here

    fish_add_path "$HOME/.local/bin/"
    fish_add_path "$HOME/bin/"
    fish_add_path "$HOME/.bun/bin/"
    fish_add_path "$HOME/.cargo/bin/"

    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

    fzf --fish | source

    starship init fish | source

    enable_transience
end
