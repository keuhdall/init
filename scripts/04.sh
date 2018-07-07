#!/bin/sh
echo "0 0 * * * $(pwd)/04.sh" >> /etc/crontab

if [ ! -f $HOME/crontab.md5  ]
then
	md5sum /etc/crontab > $HOME/crontab.md5
elif ! md5sum -c $HOME/crontab.md5
then
	echo "/etc/crontab changed" | mail -s "/etc/crontab changed" root
	md5sum /etc/crontab > $HOME/crontab.md5
fi
