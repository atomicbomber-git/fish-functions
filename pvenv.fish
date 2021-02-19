function pvenv
    python3 -m virtualenv env -p python3
    source ./env/bin/activate.fish
    touch requirements.txt
end
