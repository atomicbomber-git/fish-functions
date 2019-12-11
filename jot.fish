function jot
    set -l notes_dir ~/Dropbox/notes.txt

    printf (date "+%H:%M:%S %d/%m/%y") >> $notes_dir
    printf "\n$argv\n" >> $notes_dir
    printf '\n' >> $notes_dir

    notify-send "Note successfully recorded."
end