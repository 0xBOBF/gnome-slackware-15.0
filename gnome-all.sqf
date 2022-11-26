# gnome-all.sqf
#
# This is the 'gnome-all' build. It pulls in all the gnome packages from slackbuilds.org,
# and builds them in appropriate order, enabling as many features as possible.
#
# The list is grouped into relevant dependencies, and commented with details.
# Note that some builds have shared deps. This list has cropped duplicates, leaving only
# the first occurance, so all deps are met without rebuilding any packages.
#
# Good Luck! - Bob Funk

# GNOME Settings Daemon and deps:
libgusb
colord
gnome-desktop
geocode-glib
libdaemon
avahi
geoclue2
libgweather
gnome-settings-daemon

# Mutter compositor:
zenity
xvfb-run
mutter

# Cheese is GNOME's webcam application:
# NOTE: Build this before GNOME Control Center to build in webcam support to GNOME Control 
#       Center, which is used in user profile pic settings
cogl
clutter
clutter-gtk
clutter-gst
cheese

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
blocaled
gdm

# GNOME Tweaks:
gnome-tweaks

# tracker:
libportal
tracker

# tracker-miners enables thumbnails in GNOME Files (nautilus):
exempi
libgxps
libiptcdata
osinfo-db-tools
osinfo-db
libosinfo
totem-pl-parser
tracker-miners

# GNOME Files:
nautilus

# gnome-shell extensions:
gnome-menus
gnome-shell-extensions

# Chrome GNOME Shell browser integration and deps:
jq
p7zip
chrome-gnome-shell

# Some GNOME Shell extensions in include by default:
gnome-shell-extension-appindicator
gnome-shell-extension-arc-menu
gnome-shell-extension-dash-to-panel

# GNOME Backgrounds:
gnome-backgrounds

# Yelp:
lxml
yelp-xsl
yelp-tools
yelp

# GNOME Terminal Emulator:
gnome-terminal

# GNOME System Monitor:
gnome-system-monitor

# GNOME Weather (Also provides weather in the panel menu):
gnome-weather

# GNOME Disks:
gnome-disk-utility

# GNOME Disk Usage Analyzer
baobab

# GNOME Scanner Utility:
simple-scan

# GNOME Calendar:
libdazzle
gnome-calendar

# GNOME Calculator:
gtksourceview4
gnome-calculator

# gedit is an editor for GNOME:
libpeas
gedit

# Evince document viewer:
evince

# Evolution email/calendar/organizer client:
gspell
cmark
libpst
lua53
highlight
ytnef
libchamplain
evolution

# File-Roller archive manager:
file-roller

# GNOME Maps:
telepathy-glib
folks
gnome-maps

# GNOME Photos:
libsoup3
grilo
gfbgraph
gnome-photos

# Seahorse GNOME Keyring manager:
seahorse

# GNOME Screenshot:
gnome-screenshot

# Some games for GNOME:
libgnome-games-support
gnome-klotski
gnome-mahjongg
iagno
