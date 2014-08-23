#! /bin/sh
#
# backup_vimrc.sh
# Copyright (C) 2014 john <john@apple.local>
#
# Distributed under terms of the MIT license.
#

DIR=$(cd "$(dirname "$0")"; pwd)
OS=`uname -s`

echo 'backup vimrc'
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
	echo 'Backup Linux Success!'
fi

echo 'Backup git config'
cp $HOME/.gitconfig $DIR/gitconfig
