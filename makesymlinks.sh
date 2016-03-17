#!/bin/bash
############################
# Based on http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables
HOME=~                      # Home folder
dir=$(pwd)                  # dotfiles directory
olddir=$HOME/dotfiles_old   # old dotfiles backup directory
# list of files/folders to symlink in homedir
files="bashrc vimrc conkyrc conky"

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
#-e enables interpretation of backslash escapes
echo -e "...done\n"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo -e "...done\n"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $files; do
    echo "Moving any existing dotfiles from $HOME to $olddir"
    echo "mv $HOME/.$file $HOME/dotfiles_old/"
    mv $HOME/.$file $HOME/dotfiles_old/
    echo "Creating symlink to $file in $HOME."
    echo -e "ln -s $dir/$file $HOME/.$file\n"
    ln -s $dir/$file $HOME/.$file
done
