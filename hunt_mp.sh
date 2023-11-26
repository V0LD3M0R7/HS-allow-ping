#! /bin/bash

sudo sysctl -w net.ipv4.ping_group_range="0 2147483647"
echo " "
echo "Completed! Closing in three seconds" && sleep 3
kill $PPID
