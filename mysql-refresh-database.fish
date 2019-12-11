function mysql-refresh-database
    echo "DROP DATABASE IF EXISTS $argv[1]; CREATE DATABASE $argv[1]" | mysql -u (whoami) -p
    mysql -u (whoami) -p $argv[1] < $argv[2]
end
