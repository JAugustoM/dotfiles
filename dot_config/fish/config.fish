if status is-interactive
    # Commands to run in interactive sessions can go here

    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

    mise activate fish | source

    fzf --fish | source

    starship init fish | source

    enable_transience

    eval (zellij setup --generate-auto-start fish | string collect)
end
