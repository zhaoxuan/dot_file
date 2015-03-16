#! /bin/sh
#
# backup_vimrc.sh
# Copyright (C) 2014 john <john@apple.local>
#
# Distributed under terms of the MIT license.
#

DIR=$(cd "$(dirname "$0")"; pwd)
OS=`uname -s`
LASTMODIFY=`stat -f "%m" $HOME/.vimrc`
BACKDATE=`stat -f "%m" $DIR/vimrc`

#if [ $LASTMODIFY -gt $BACKDATE ];then
	##echo "Please notice, $DIR/vimrc date is later then $HOME/.vimrc"
	#echo "$HOME/.vimrc will backup"
	#cp $HOME/.vimrc $DIR/vimrc
#else
	#echo "Please notice, $DIR/vimrc date is newer then $HOME/.vimrc"
	#read -p "Do you wish to different these files? (y/n)" yn
    #case $yn in
        #[Yy]* ) vimdiff $DIR/vimrc $HOME/.vimrc;;
        #[Nn]* ) exit;;
        #* ) echo "Please answer yes or no.";;
    #esac
#fi

echo 'Backup vimrc profile'
cp $HOME/.vimrc $DIR/vimrc

echo 'Backup bash profile'
if [ $OS == 'Darwin' ];then
	echo 'OS is Macintosh'
	echo 'Backup bash_profile'
	cp $HOME/.bash_profile $DIR/macintosh_bash_profile
	echo 'Backup Macintosh Success!'
else
	echo 'OS is Linux'
	echo 'Backuping...'
	cp $HOME/.bashrc $DIR/linux_bashrc
	cp $HOME/.bash_profile $DIR/linux_bash_profile
	echo 'Backup Linux Success!'
fi

echo 'Backup git config'
cp $HOME/.gitconfig $DIR/gitconfig
