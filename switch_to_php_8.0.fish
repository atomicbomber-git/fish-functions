function switch_to_php_8.0
sudo rm /etc/alternatives/php
sudo ln -s /usr/bin/php8.0 /etc/alternatives/php
php -v
end
