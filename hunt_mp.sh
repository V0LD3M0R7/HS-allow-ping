#! /bin/bash

echo "The script will now enable ipv4 ping for current session" && sleep 2
sudo sysctl -w net.ipv4.ping_group_range="0 2147483647"
echo " "
echo "Ping is enabled for this session" && sleep 2

read -p "Do you wish to enable ipv4 ping for your use by default? (y/n) " yn

case $yn in 
	y ) 
        gid=$(id -g);
        ping_allow_write=net.ipv4.ping_group_range="0 $gid";
        sudo echo "$ping_allow_write;" > /etc/sysctl.d/local.conf;
        echo "The process is finished. Closing in 3 seconds" && sleep 1;
        echo "exiting." && sleep 1;
        echo "exiting.." && sleep 1;
        echo "exiting..." && sleep 1;
        kill $PPID;;
	
    n ) 
        echo Closing in 3 seconds && sleep 1;
        echo "exiting." && sleep 1;
        echo "exiting.." && sleep 1;
        echo "exiting..." && sleep 1;
		kill $PPID;;
esac