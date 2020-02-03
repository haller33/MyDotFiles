#!/bin/bash
#
# /etc/init.d/configtokeyboardac
#cd  /etc/init.d

#wget https://pastebin.com/raw/vDPFGukB

#mv vDPFGukB configtokeyboardac.sh

#chmod +x configtokeyboardac.sh

#/etc/init.d/configtokeyboardac.sh start

#/etc/init.d/configtokeyboardac.sh stop

#/etc/init.d/configtokeyboardac.sh restart

#update-rc.d configtokeyboardac.sh defaults

# exit
setxkbmap -model abnt2 -layout br -variant abnt2
