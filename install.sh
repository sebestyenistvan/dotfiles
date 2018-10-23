#!/bin/bash

# Install dotfiles and create symlinks

DOTDIR="~/.dotfiles"

ln -s $DOTDIR/.oh-my-zsh $HOME
ln -s $DOTDIR/.tmux-themepack $HOME
ln -s $DOTDIR/.tmux.conf $HOME
ln -s $DOTDIR/.vimrc $HOME
ln -s $DOTDIR/.zshrc $HOME
