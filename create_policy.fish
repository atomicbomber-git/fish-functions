function create_policy
	php artisan make:policy "$argv"Policy --model="$argv"
end
