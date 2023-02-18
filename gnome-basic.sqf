# gnome-basic.sqf
#
# This is the 'gnome-basic' build, which only builds the minimum components to
# get a functioning GNOME desktop. Additional GNOME applications are excluded,
# so some features of the desktop that interact with these applications may be 
# missing.
#
# If you want GNOME applications built as well then use the 'gnome-all.sqf'
# queuefile.

# GNOME Settings Daemon and deps:
libgusb
colord
gnome-desktop
geocode-glib
geoclue2
libgweather
gnome-settings-daemon

# Mutter Compositor:
xvfb-run
mutter

# GNOME Control Center and deps:
colord-gtk
gnome-bluetooth
gsound
libhandy
xdg-dbus-proxy
libwpe
wpebackend-fdo
bubblewrap
webkit2gtk
rest
gnome-online-accounts
cups-pk-helper
gnome-control-center

# GNOME Shell and deps:
libgdata
libgweather4
evolution-data-server
gnome-autoar
adobe-source-code-pro-font
gnome-shell

# GNOME Session Manager:
gnome-session

# GNOME Display Manager:
libdaemon
blocaled
gdm

# GNOME Tweaks:
gnome-tweaks

# GNOME Shell Extensions and deps:
libportal
tracker
nautilus
gnome-menus
gnome-shell-extensions

# gnome-browser-connector and deps:
jq
p7zip
gnome-browser-connector
gnome-backgrounds

# LibAppIndicator GNOME Shell extension:
gnome-shell-extension-appindicator

