#! /bin/bash
sudo apt install fzf bat fd-find
mkdir -p ~/.local/bin
ln -s "$(which batcat)" ~/.local/bat
ln -s "$(which fdfind)" ~/.local/fd
