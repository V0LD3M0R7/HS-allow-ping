#! /bin/bash

echo "The script will now enable ipv4 ping for current session" && sleep 2
echo
sudo sysctl -w net.ipv4.ping_group_range="0 2147483647"
echo
echo "Ping is enabled for this session" && sleep 2
echo
read -p "Do you wish to enable ipv4 ping for your user account by default? (y/n) " yn

# not sure if `while true; do` is neccesery
while true; do
    case $yn in

	[Yy]* )
		echo 'net.ipv4.ping_group_range="0 2147483647"' ´| sudo tee /etc/sysctl.d/local.conf;
		echo "The process is finished." && sleep 1;
		echo ;
		read -rsn1 -p"Press enter to close";
		kill $PPID;;

	[Nn]* )
		echo "The process is finished. \n"
		read -rsn1 -p"Press enter to close";
		kill $PPID;;

# all other answers
	* )
		echo "Please answer yes or no.";
		echo "invalid response - please execute the script again \n";
		read -rsn1 -p"Press enter to close";
		kill $PPID;;
    esac
done
