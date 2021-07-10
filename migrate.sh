#!/bin/sh
 # _ __ ___ (_) __ _ _ __ __ _| |_ ___   ___| |__  
# | '_ ` _ \| |/ _` | '__/ _` | __/ _ \ / __| '_ \ 
# | | | | | | | (_| | | | (_| | ||  __/_\__ \ | | |
# |_| |_| |_|_|\__, |_|  \__,_|\__\___(_)___/_| |_|
           #   |___/                               

# nvim
cp -r $HOME/.config/nvim/lv-config.lua $HOME/myconf/others/. -f

# zsh & history & tmux 
cp -r $HOME/.zshrc $HOME/myconf/dotfiles/ -f
cp -r $HOME/.zfunc $HOME/myconf/dotfiles/ -f
cp -r $HOME/.zprofile $HOME/myconf/dotfiles/ -f
cp -r $HOME/.zsh_history $HOME/myconf/dotfiles/ -f
cp -r $HOME/.p10k.zsh $HOME/myconf/dotfiles/ -f
cp -r $HOME/.tmux.conf $HOME/myconf/dotfiles/ -f

# mycli
cp -r $HOME/.myclirc $HOME/myconf/dotfiles/ -f

# vi-mode editrc and inputrc
cp -r $HOME/.editrc $HOME/myconf/dotfiles/ -f
cp -r $HOME/.inputrc $HOME/myconf/dotfiles/ -f

# others
cp -r $HOME/.config/kitty $HOME/myconf/config/ -f
cp -r $HOME/.alacritty.yml $HOME/myconf/dotfiles/ -f
cp -r $HOME/.wa $HOME/myconf/dotfiles/ -f
