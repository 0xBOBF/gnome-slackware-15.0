# GNOME Applications
# This is a queue file with a selected number of gnome applications.
# Each section is grouped into respective dependencies. 
# If a dep is built earlier in the queue, then it will not be repeated
# later in the build if its a dep of another program. 
# If you edit this queue, pay attention to the individual packages.

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

# GNOME Screenshot Utility (Not really needed, all its functionality can be done with PrintScreen button and ctrl/shift/alt combos):
gnome-screenshot

# Cheese is GNOME's webcam application:
# NOTE: clutter-gst requires cogl/clutter-gtk/clutter-gst to be built with INTROSPECTION=yes
cogl
clutter
clutter-gtk
clutter-gst
cheese

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

# GNOME Recipes:
gspell
gnome-recipes

# Evolution email/calendar/organizer client:
cmark
libpst
lua
highlight
ytnef
libchamplain
evolution

# GNOME Maps:
# folks requires introspection/vala/vapi enabled on: libgdata, evolution-data-server
# gnome-maps requires introspection/vala/vapi enabled on: geocode-glib, libchamplain, gnome-online-accounts, libgweather4
#telepathy-glib
#folks
#gnome-maps

# GNOME Photos:
grilo
gfbgraph
gnome-photos

# GNOME Remote Desktop:
nv-codec-headers
gnome-remote-desktop

# GNOME Boxes:
gtk-vnc
yajl
libvirt
libvirt-glib
libcacard          # Build this before spice, so spice finds it.
spice-protocol
spice
spice-gtk
usbredir
qemu
gnome-boxes
