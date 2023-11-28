# HS-allow-ping-deb

## Fix for HUNT: SHOWDOWN on Debian/Ubuntu
Script to **allow ipv4 ping Easy Anti-cheat used in Hunt: Showdown**

### Why does this exist?
Debian, __/etc/sysctl.d/local.conf__ needs to have this line written:

`net.ipv4.ping_group_range="0 $gid"` where `$gid` is your group id number

This allows EAC to ping and ensure connection between you and EAC servers
Otherwise Hunt: Showdown will kick you from multiplayer game

### INTENDET FOR:
- [x] Debian
- [x] Ubuntu
- should also help in Debian/Ubuntu forked operating systems

#### CREDIST TO ALL SOURCES IN THE sources.txt
- [KubuntuKowalsky](https://www.youtube.com/@sudorm-doubt)
- [SamPurple22](https://github.com/SamPurple22)