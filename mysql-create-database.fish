function mysql-create-database
	mysql -u (whoami) -p -e "CREATE DATABASE $argv"
end
