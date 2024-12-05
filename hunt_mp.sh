#!/bin/bash

echo "The script will now enable EAC IPv4 ping for the current session..." && sleep 2
echo

# Get the group ID
group_id=$(id -g)
if [[ -z "$group_id" ]]; then
    echo "Error: Unable to fetch group ID." >&2
    exit 1
fi

# Apply the setting temporarily
sudo sysctl -w net.ipv4.ping_group_range="$group_id $group_id"
echo
echo "EAC ping is enabled for this session." && sleep 2
echo

# Prompt the user
while true; do
    read -p "Do you wish to enable IPv4 ping for your user account by default? (y/n): " yn
    case $yn in
        [Yy]* )
            config_line="net.ipv4.ping_group_range=$group_id $group_id"
            echo "$config_line" | sudo tee /etc/sysctl.d/local.conf >/dev/null
            echo
            echo "Configuration has been updated successfully."
            echo "Run 'sudo sysctl --system' to apply the changes permanently."
            break
            ;;
        [Nn]* )
            echo
            echo "No changes were made to the user configuration."
            break
            ;;
        * )
            echo "Invalid response. Please answer yes (y) or no (n)."
            ;;
    esac
done

echo
read -rsn1 -p "Press any key to close."
echo
exit 0
