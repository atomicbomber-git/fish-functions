function postgres-create-database
    echo "CREATE DATABASE $argv[1]" | psql -U (whoami) -d postgres
end
