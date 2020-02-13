#! /usr/bin/env bash

echo -n "Checking if vim-plug exists..."

if [ ! -f ~/.local/share/nvim/site/autoload/plug.vim ]
then

echo "\nDownloading vim-plug..."

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

else
echo "ALL GOOD"
fi