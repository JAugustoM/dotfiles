if status is-interactive
    # Commands to run in interactive sessions can go here
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

    mise activate fish | source

    fzf --fish | source

    set -p fish_complete_path (brew --prefix)/share/fish/completions
    set -p fish_complete_path (brew --prefix)/share/fish/vendor_completions.d

    oh-my-posh init fish --config "$(brew --prefix oh-my-posh)/themes/tokyonight_storm.omp.json" | source
end
