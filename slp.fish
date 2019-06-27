function slp
	git clone $argv[1] $argv[2]
cd $argv[2]
rm -rf .git
end
