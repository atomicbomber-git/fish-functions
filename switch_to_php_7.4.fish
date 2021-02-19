function switch_to_php_7.4
    sudo rm /etc/alternatives/php
    sudo ln -s /usr/bin/php7.4 /etc/alternatives/php
    php -v
end
