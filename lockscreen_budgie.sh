#!/bin/bash

# lockscreen doesnt work with my budgie, issue between gnome + budgie?
# https://discourse.ubuntubudgie.org/t/lockscreen-not-working-after-update-to-21-10/5394/16

echo "Restarting gnome-screensaver"
pkill -9 -f  '/usr/bin/gjs /usr/share/gnome-shell/org.gnome.ScreenSaver'
sleep 3
gnome-screensaver &

