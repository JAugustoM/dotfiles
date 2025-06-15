if status is-interactive
    # Commands to run in interactive sessions can go here
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
    set -p fish_complete_path (brew --prefix)/share/fish/completions
    # set -p fish_complete_path (brew --prefix)/share/fish/vendor_completions.d

    mise activate fish | source

    fzf --fish | source

    starship init fish | source

    enable_transience
end
