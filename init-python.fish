function init-python
	mkdir $argv
    cd $argv
    python3 -m virtualenv -p python3 env
    printf "env/\n" >> .gitignore
    git init
    cd ..
end
