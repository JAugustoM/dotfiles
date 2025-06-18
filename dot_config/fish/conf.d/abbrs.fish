if status is-interactive
    abbr --add picoserial "sudo minicom --device /dev/ttyACM0"
    abbr --add cn "cmake -G Ninja -B build -S ."
    abbr --add nb "ninja -C build"
    abbr --add s sudo
    abbr --add sdi --set-cursor "sudo dnf install %"
    abbr --add sdr --set-cursor "sudo dnf remove %"
    abbr --add ez --set-cursor "eza -a -l -T -L 1% --git"
end
