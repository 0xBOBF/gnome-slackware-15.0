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
libsoup3
colord
gnome-desktop
geocode-glib2
geoclue2
libgweather4
gnome-settings-daemon

# Mutter Compositor:
mutter

# GNOME Control Center and deps:
colord-gtk
gnome-bluetooth
gsound
python-smartypants
python3-typogrify
python3-toml
gi-docgen
libhandy
xdg-dbus-proxy
libwpe
wpebackend-fdo
bubblewrap
unifdef
webkit2gtk4.1
rest
gnome-online-accounts
cups-pk-helper
gnome-color-manager
xdg-desktop-portal-gnome
libgnomekbd
gnome-control-center

# GNOME Shell and deps:
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
gnome-browser-connector

# gnome-backgrounds:
gnome-backgrounds

# LibAppIndicator GNOME Shell extension:
gnome-shell-extension-appindicator

