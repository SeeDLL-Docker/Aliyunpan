#!/bin/bash

echo "Start Base Service"

chmod 1777 /dev/shm
mv /opt/小白羊云盘 /opt/xbyyunpan
rm /usr/bin/xbyyunpan
ln -s /opt/xbyyunpan/xbyyunpan /usr/bin/xbyyunpan

echo "Start Base Service End"