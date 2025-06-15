if status is-interactive
    # Commands to run in interactive sessions can go here

    /home/linuxbrew/.linuxbrew/bin/brew shellenv | source

    fzf --fish | source

    starship init fish | source

    enable_transience
end
