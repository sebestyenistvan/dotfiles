#!/bin/bash

# Install dotfiles and create symlinks

DOTDIR="$HOME/.dotfiles"

cd $HOME

[ -L $HOME/.gitconfig ] && rm -f $HOME/.gitconfig
[ -L $HOME/.zshrc ] && rm -f $HOME/.zshrc
[ -L $HOME/.tmux.conf ] && rm -f $HOME/.tmux.conf
[ -L $HOME/.vimrc ] && rm -f $HOME/.vimrc
[ -L $HOME/.oh-my-zsh ] && rm -f $HOME/.oh-my-zsh
[ -L $HOME/.tmux-themepack ] && rm -f $HOME/.tmux-themepack


[ -f $HOME/.gitconfig ] && mv $HOME/.gitconfig $HOME/.gitconfig.bak
[ -f $HOME/.zshrc ] && mv $HOME/.zshrc $HOME/.zshrc.bak
[ -f $HOME/.vimrc ] && mv $HOME/.vimrc $HOME/.vimrc.bak
[ -f $HOME/.tmux.conf ] && mv $HOME/.tmux.conf $HOME/.tmux.conf.bak
[ -d $HOME/.oh-my-zsh ] && mv $HOME/.oh-my-zsh $HOME/.oh-my-zsh.bak
[ -d $HOME/.tmux-themepack ] && mv $HOME/.tmux-themepack $HOME/.tmux-themepack.bak

ln -s $DOTDIR/.gitconfig $HOME
ln -s $DOTDIR/.tmux.conf $HOME
ln -s $DOTDIR/.vimrc $HOME
ln -s $DOTDIR/.zshrc $HOME

# INSTALL oh-my-zsh
# Please install zsh first
git clone https://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh/

# Add autosuggestion
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Add syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install tmux themepack
# Please install tmux first
git clone https://github.com/jimeh/tmux-themepack.git $HOME/.tmux-themepack

cp $DOTDIR/istvan.zsh-theme $HOME/.oh-my-zsh/themes/
