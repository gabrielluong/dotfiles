#!/bin/bash
#
# Given a directory containing dotfiles/dotfolders $DOTFILE_DIR, backup any existing 
# dotfiles/dotfolders in the given directory to a backup directory $BACKUP_DIR, and create
# symlinks from the home directory to the given dotfiles/dotfolders.
#
# Original script by Michael J. Smalley (https://github.com/michaeljsmalley/dotfiles) 
# Extended by Gabriel Luong (https://github.com/gabrielluong)

### Set up env

# dotfiles directory
DOTFILE_DIR=~/Projects/dotfiles/dots
# dotfiles backup directory
BACKUP_DIR=$DOTFILE_DIR/dotfiles_backup
# list of dotfiles/dotfolders in dotfiles directory
DOTFILES=$(find $DOTFILE_DIR -maxdepth 1 -name ".*" -exec basename {} \; | sed 's/^.git$//' | sed 's/^.DS_Store$//')

echo "Running dotfiles setup..."

# Create backup directory
if [ ! -d $BACKUP_DIR ]
then
	echo -n "Creating backup directory $BACKUP_DIR"
	mkdir -p $BACKUP_DIR
	echo "...SUCCESS"
else
	echo "Backup directory already exists...SKIPPED"
fi

for file in $DOTFILES
do
	# If existing dotfile in ~ is a symlink and does not link to the dotfiles directory,
	# prompt user on whether or not to delete link.
	# Note: A symlink cannot be overwritten if it already exists.
	if [ -L ~/$file ]
	then
		file_symlink_target=$(readlink ~/$file)

		if [ "$file_symlink_target" != "$DOTFILE_DIR/$file" ]
		then
			echo "ALERT: Symlink for $file exists in ~ and points to $file_symlink_target"
			
			while read -s -n 1 -p "Do you wish to keep symlink for $file in ~? (y/n)" input
			do
				case $input in
				[Yy])
					echo
					echo "Keeping symlink ~/$file -> $file_symlink_target...SKIPPED"
					break
					;;
				[Nn])
					echo
					echo -n "Deleting symlink ~/$file"
					rm -rf ~/$file
					echo '...SUCCESS'
					break
					;;
				*)
					echo
					echo "Invalid input. You entered $input."
					;;
				esac
			done
		else
			echo "Symlink between ~/$file and dotfiles directory already exist...SKIPPED" 
		fi

	# Backup existing dotfile in ~ that is not a symlink.
	elif [ -f ~/$file ] || [ -d ~/$file ]
	then
		echo -n "Moving $file from ~ to $BACKUP_DIR"
		mv ~/$file $BACKUP_DIR
		echo "...SUCCESS"
	fi
	
	# Create a symlink from the home directory to the dotfile in the dotfiles directory 
	# if it does not exist.
	if [ ! -L ~/$file ]
	then
		echo -n "Creating symlink to $file in home directory"
		ln -s $DOTFILE_DIR/$file ~/$file
		echo "...SUCCESS"
	fi
done

echo "...dotfiles setup complete!"
exit 0
