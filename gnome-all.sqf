# gnome-all.sqf
#
# This is the 'gnome-all' build. It pulls in all the gnome packages from slackbuilds.org,
# and builds them in appropriate order, enabling as many features as possible.
#
# NOTE: Some builds in this queue require introspection and vala bindings built. Most of
# the time these are enabled by default, but there are several builds which do the opposite.
# Therefore, set the following environment variables before starting the build:
#
# export INTROSPECTION=yes
# export VALA=yes
# export VAPI=yes
#
# This one allows geoclue2 to build in avahi support:
# export AVAHI=yes
#
# This one builds webcam support into the gnome control center (for profile pics):
# export CHEESE=true
#
# The rest of the list is grouped into relevant dependencies, and commented with details.
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
mutter

# Cheese is GNOME's webcam application:
# NOTE: clutter-gst requires cogl/clutter-gtk/clutter-gst to be built with INTROSPECTION=yes
# NOTE2: Build this before GNOME Control Center to build in webcam support to GNOME Control 
#        Center, which is used in user profile pic settings
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
gnome-control-center

# GNOME Shell and deps:
libgdata
libgweather4
evolution-data-server
gnome-autoar
gnome-shell

# GNOME Session Manager:
gnome-session

# GNOME Display Manager:
gdm

# GNOME Tweaks:
gnome-tweaks

# GNOME Shell Extensions and deps:
libportal
tracker
nautilus
gnome-menus
gnome-shell-extensions

# Chrome GNOME Shell browser integration and deps:
jq
p7zip
chrome-gnome-shell

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

# tracker-miners enables thumbnails in GNOME Files (nautilus):
exempi
libgxps
libiptcdata
osinfo-db-tools
osinfo-db
libosinfo
totem-pl-parser
tracker-miners

# Evince document viewer:
evince

# Evolution email/calendar/organizer client:
gspell
cmark
libpst
lua
highlight
ytnef
libchamplain
evolution

# File-Roller archive manager:
file-roller

# GNOME Maps:
# folks requires introspection/vala/vapi enabled on: libgdata, evolution-data-server
# gnome-maps requires introspection/vala/vapi enabled on: geocode-glib, libchamplain, gnome-online-accounts, libgweather4
telepathy-glib
folks
gnome-maps

# GNOME Photos:
grilo
gfbgraph
gnome-photos

# Seahorse GNOME Keyring manager:
seahorse
