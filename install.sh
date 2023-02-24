GREEN='\033[0;32m'
printf 'Installing plugins...'
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
printf "${GREEN}done\n"