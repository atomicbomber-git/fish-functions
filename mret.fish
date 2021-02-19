# Defined in - @ line 1
function mret
	php artisan migrate:rollback --step=1
    php artisan migrate --step=1
end
