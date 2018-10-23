#!/bin/bash

# Install dotfiles and create symlinks

DOTDIR="~/.dotfiles"

ln -s $DOTDIR/.tmux.conf $HOME
ln -s $DOTDIR/.vimrc $HOME
ln -s $DOTDIR/.zshrc $HOME

cd $HOME
# INSTALL oh-my-zsh
# Please install zsh first
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

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
