#!/bin/bash
#
# Given a list of dotfiles $DOTFILES and their respective directory $DOTFILE_DIR,
# backup any existing dotfiles in the list to a backup directory $BACKUP_DIR, and create
# symlinks from the home directory to the given dotfiles.
#
# Core script by Michael J. Smalley (https://github.com/michaeljsmalley/dotfiles) 
# Modified by Gabriel Luong

### Set up env

# dotfiles directory
DOTFILE_DIR=~/Project/dotfiles
# dotfiles backup directory
BACKUP_DIR=$dir/dotfiles_backup
# list of files/folders to symlink in the home directory (~/)
DOTFILES="bashrc zshrc gitignore_global"

echo "Running dotfiles setup..."

# Create backup directory
echo -n "Creating $BACKUP_DIR directory for backup of any existing dotfiles in the home directory"
mkdir -p $BACKUP_DIR
echo "...SUCCESS"

# Move any existing dotfiles in the given $DOTFILES list from the home directory to the backup directory,
# and create a symlink from the home directory to any of the dotfiles in the dotfiles directory
for file in $DOTFILES
do
	if [ -f ~/$file ]
	then
		echo -n "Moving .$file from ~ to $BACKUP_DIR"
		mv ~/.$file $BACKUP_DIR
		echo "...SUCCESS"
	fi
	
	echo -n "Creating symlink to .$file in home directory
	ln -s $DOTFILE_DIR/.$file ~/.$file
	echo "...SUCCESS"
done

echo "dotfiles setup complete!~"
exit 0 