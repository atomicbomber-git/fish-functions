function mydesc
	mysql -u (whoami) -p $argv[1] -e "DESCRIBE $argv[2];"
end
