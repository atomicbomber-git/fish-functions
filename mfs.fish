function mfs
	set -l prefix ""
	if test -f ./docker-compose.yml
		set prefix "./vendor/bin/sail"		
	else
		set prefix "php"
	end

	$prefix artisan migrate:fresh --seed
end
