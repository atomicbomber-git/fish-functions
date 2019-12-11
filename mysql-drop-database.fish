function mysql-drop-database
	mysql -u (whoami) -p -e "DROP DATABASE $argv"
end
