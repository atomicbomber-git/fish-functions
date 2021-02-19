function mcr
    php artisan make:controller "$argv"Controller --resource --model="$argv"
end
