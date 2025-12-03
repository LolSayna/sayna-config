# Alacritty (todo)
sudo mv alacritty/target/release/alacritty /usr/local/bin/


# Niri
cd ~/Desktop/Apps/niri
sudo mkdir /usr/local/share/{wayland-sessions,xdg-desktop-portal}
sudo cp {target/release/niri,resources/niri-session}  /usr/local/bin
sudo cp resources/niri.desktop /usr/local/share/wayland-sessions
sudo cp resources/niri-portals.conf /usr/local/share/xdg-desktop-portal
sudo cp resources/{niri.service,niri-shutdown.target} /etc/systemd/user/
# modify niri.service to /usr/local/bin/niri instead of /usr/bin/niri

# Xwayland-satellite
sudo apt install libxcb-cursor-dev
sudo mv target/release/xwayland-satellite /usr/local/bin
# Java enviroment variable fix

# KDE program that autostarts broken in niri
sudo apt remove xwaylandvideobridge



