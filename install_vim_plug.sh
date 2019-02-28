#!/bin/bash

plug_path="${HOME}/.vim/autoload/plug.vim"
if [ -a ${plug_path} ]
then
    echo "vim-plug exists, nothing to do."
else
    echo "vim-plug does not exist in [${plug_path}], downloading it..."
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    if [[ ! -a ~/.vimrc ]]
    then
        echo "~/.vimrc does not exist, creating symbolic link..."
        #TODO: $PWD won't work if the script is invoked outside of this folder...
        ln -sv $PWD/.vimrc ~/
    fi
fi
