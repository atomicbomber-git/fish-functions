function seed-as-www-data
	sudo -u www-data php artisan migrate:fresh --seed
end
