#!/bin/bash

# Install dotfiles and create symlinks

DOTDIR="~/.dotfiles"

cd $HOME

ln -s $DOTDIR/.gitconfig $HOME
ln -s $DOTDIR/.tmux.conf $HOME
ln -s $DOTDIR/.vimrc $HOME
ln -s $DOTDIR/.zshrc $HOME

# INSTALL oh-my-zsh
# Please install zsh first
git clone https://github.com/robbyrussell/oh-my-zsh.git $DOTDIR/.oh-my-zsh

mv $HOME/.oh-my-zsh $HOME/.dotfiles
ln -s $HOME/.dotfiles/.oh-my-zsh $HOME

# Add autosuggestion
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Add syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install tmux themepack
# Please install tmux first
git clone https://github.com/jimeh/tmux-themepack.git ~/.dotfiles/.tmux-themepack
ln -s $HOME/.dotfiles/.tmux-themepack $HOME

cp $DOTDIR/istvan.zsh-theme $DOTDIR/.oh-my-zsh/themes/
