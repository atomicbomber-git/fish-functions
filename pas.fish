# Defined in - @ line 2
function pas
	fuser -k 8000/tcp
    php artisan serve $argv
end
