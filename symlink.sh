#!/bin/bash

dir="$(dirname "$(realpath $0)")"
backupdir=~/dotfiles_backup
files="vimrc"

mkdir -p $backupdir

for file in $files; do
    echo "Moving .$file from ~ to $backupdir."
    mv ~/.$file $backupdir
    echo "Creating symlink to $file in ~."
    ln -s $dir/$file ~/.$file
done

