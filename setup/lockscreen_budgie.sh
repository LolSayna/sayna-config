#!/bin/bash

# 12.2024 - run at startup with budgie Startup Applications GUI
# lockscreen doesnt work with my budgie, issue between gnome + budgie?
# https://discourse.ubuntubudgie.org/t/lockscreen-not-working-after-update-to-21-10/5394/16
#
# 05.2025 - issue was back again, but disappeared after reinstall?
echo "Restarting gnome-screensaver"
pkill -9 -f '/usr/bin/gjs /usr/share/gnome-shell/org.gnome.ScreenSaver'
sleep 3
gnome-screensaver &
