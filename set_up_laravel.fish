function set_up_laravel
	set -l db_database $argv[2]
	set -l db_username "atomicbomber"
	set -l db_password "alohomora"
	set -l project_dir (basename -- $argv[1] .git)

	mysql -u $db_username -p$db_password -Bse "CREATE DATABASE $argv[2]"
	git clone $argv[1]
	cd $project_dir
	
	cp .env.example .env
	sed -i "s/\(DB_DATABASE=\)\(.*\)/\1$db_database/" .env
	sed -i "s/\(DB_USERNAME=\)\(.*\)/\1$db_username/" .env
	sed -i "s/\(DB_PASSWORD=\)\(.*\)/\1$db_password/" .env
	
	composer install
	composer dump-autoload
	php artisan key:generate
	php artisan migrate:fresh --seed
	sudo chown -R www-data:www-data storage
	cd ..
end
