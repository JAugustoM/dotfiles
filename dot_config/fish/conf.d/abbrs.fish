if status is-interactive
    abbr --add picoserial "sudo minicom --device /dev/ttyACM0"
    abbr --add cninja "cmake -G Ninja -B build -S ."
    abbr --add nb "ninja -C build"
    abbr --add s --set-cursor "sudo %"
    abbr --add sdi --set-cursor "sudo dnf install %"
    abbr --add sdr --set-cursor "sudo dnf remove %"
end
