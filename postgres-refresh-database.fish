function postgres-refresh-database
    echo "DROP DATABASE $argv[1]" | psql -U (whoami) -d postgres
    echo "CREATE DATABASE $argv[1]" | psql -U (whoami) -d postgres
    psql -U (whoami) -d $argv[1] < $argv[2]
end
