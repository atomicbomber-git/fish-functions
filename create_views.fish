function create_views
	mkdir -p resources/views/$argv
touch resources/views/$argv/{index,create,edit}.blade.php
end
