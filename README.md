# HS-allow-ping-deb

# Warning: still doesn't work fully, test your results after applying!

## Fix for HUNT: SHOWDOWN on Debian/Ubuntu
Script to **allow ipv4 ping Easy Anti-cheat used in Hunt: Showdown**

## HOW TO USE:
1. shutdown your game if running and also your Steam client
2. download `hunt_mp.sh`, enable execution and run it in terminal
3. after the script is finished, start your game and check server status of your game
    - play one online match, if the game does not kick you, you're good to go
4. if you still get errors or get kicked, use the `hunt_mp_wide.sh` script

### How does it work?
Debian/Ubuntu `/etc/sysctl.d/local.conf` needs to have this line written:

`net.ipv4.ping_group_range="0 $gid"` where `$gid` is your group id number.
If this range doesn't help you can also use wide range: `"0 2147483647"`
If you want to know your group id you can use this linux command: `id -g`

This allows EAC to ping your ICMP socket and ensure connection between you and EAC.
Otherwise Hunt: Showdown will kick you from multiplayer game.

### INTENDET FOR:
- [x] Debian
- [x] Ubuntu
- should help in other Linux distributions like Fedora

#### CREDITS TO ALL SOURCES IN THE sources.txt
- [KubuntuKowalsky](https://www.youtube.com/@sudorm-doubt)
- [SamPurple22](https://github.com/SamPurple22)
