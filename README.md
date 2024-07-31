# HS-allow-ping-deb

This error should be fixed in Debian since 05 July 2024 - [source - Debian bug report mailing list](https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=1027773)
I will still leave this repo accessable in case ofe somebody still being affected by this issue

## Fix for HUNT: SHOWDOWN on Debian/Ubuntu/Fedora
Script to allow your ICMP Socket to ping Easy Anti-Cheat (EAC) used in Hunt: Showdown

## HOW TO USE THE SCRIPT:
1. shutdown Hunt: Showdown and your Steam client
2. download `hunt_mp.sh`, enable execution and run it in terminal
3. after the script is finished, start your game and check server status of your game
    - try connecting to online match, if the game does not kick you, you're good to go
4. if you still get errors or get kicked, use the `hunt_mp_wide.sh` script

### How does it work?

By defauld some Linux distributions do not allow certain ping connections for your ICMP socket by default

How can we fix this?
`net.ipv4.ping_group_range="0 $gid"` where `$gid` is your _group id_ number.
You can find your _group id_ by using this command: `id -g`
If you wish to make this change permanent `/etc/sysctl.d/local.conf` needs to contain this setting for sysctl to apply it while booting your system
The "wide" range should help with Fedora OS and Fedora-based distros like Nobara: `"0 2147483647"`

This allows EAC to ping your ICMP socket and ensure connection between you and EAC. Otherwise Hunt: Showdown will kick 
you from multiplayer game.

### RELEVANT OS:
- Debian
- Ubuntu
- Fedora

#### CREDITS TO SOURCES IN THE sources.txt
- [KubuntuKowalsky](https://www.youtube.com/@sudorm-doubt)
- [SamPurple22](https://github.com/SamPurple22)
