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
gnome-video-effects
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
unifdef
webkit2gtk
rest
gnome-online-accounts
cups-pk-helper
gnome-color-manager # Add here as a dep
xdg-desktop-portal-gnome # Add here as a dep
libgnomekbd # Add here as a dep
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

# tracker:
tracker

# tracker-miners enables thumbnails in GNOME Files (nautilus):
exempi
libgxps
libiptcdata
osinfo-db-tools
osinfo-db
libosinfo
libuchardet # Runtime dep for totem-pl-parser
totem-pl-parser # Needs upgrade for totem later in the build.
tracker-miners

# GNOME Files:
libportal # This is where this dep should be (for nautilus)
# Note: Can build older 41.5 nautilus with newer libportal if patched.
# Added a conditional patch to the nautilus build to allow libportal
# to get upgraded on SBo.
nautilus

# gnome-shell extensions:
gnome-menus
gnome-shell-extensions

# GNOME Extensions Browser Connector:
gnome-browser-connector

# Some GNOME Shell extensions to include by default:
#gnome-shell-extension-appindicator
#gnome-shell-extension-arc-menu
#gnome-shell-extension-dash-to-panel
#gnome-shell-extension-gsconnect
#gnome-shell-extension-sound-output-device

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

# GNOME Clocks:
gnome-clocks

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

# Eye of Gnome image viewer:
eog # Requires a patch to allow building against newer libportal versions.

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

# Cantarell Fonts
cantarell-fonts

# GNOME Characters:
gnome-characters

# GNOME Font Viewer:
gnome-font-viewer

# GNOME color profile manager:
gnome-color-manager

# GNOME Connections:
# Putting this one off for the gnome-41 release, due to difficulty
# separating gnome-remote-desktop from systemd. Will get better in
# later releases.
#gtk-vnc
#gnome-connections

# GNOME Contacts:
gnome-contacts

# GNOME Music:
libmediaart
grilo-plugins
gnome-music

# GNOME Remote Desktop:
# Putting this one off for the gnome-41 release, due to difficulty
# separating gnome-remote-desktop from systemd. Will get better in
# later releases.
#nv-codec-headers
#gnome-remote-desktop

# GNOME Videos:
# Requires newer version of totem-pl-parser.
totem

# GNOME Tour:
# Do we "need" this?
#gnome-tour

# GNOME User Share (runtime needs avahi)
# Not submitting, due to user daemon management requirements.
#gnome-user-share

# Rygel and deps:
# Not submitting, due to user daemon management requirements.
#  gssdp # On SBo
# gupnp # On SBo
# gupnp-av # Added a build
# gupnp-dlna # Added a build
# gst-editing-services # On SBo
#rygel

# Orca:
# Skipping for now. Maybe someone else wants to maintain this and submit all the braille deps.
#orca

# Sushi
# Skipping for now. Does it even do anything noticable?
#sushi

# Epiphany:
# epiphany # Version on SBo fails to build, due to requiring newer libportal, also its 43.0, needing webkit2gtk4.1

# GNOME Boxes:
#libosinfo
#yajl
#libvirt
#libvirt-glib
#QEMU With all bells and whistles:
# usbredir
# libnfs
# snappy
#  liburcu
# glusterfs
# libiscsi
# virglrenderer
# libslirp
# vde2
#  pcsc-lite #Note: Requires "groupadd -g 257 pcscd" and "useradd -u 257 -g pcscd -d /var/run/pcscd -s /bin/false pcscd"
# libcacard
# device-tree-compiler
# phodav
#  spice-protocol
# spice
#spice-gtk
#qemu # Built with SLIRP=yes Note: Build after spice, to pick up spice-protocol support.
#gnome-boxes

# GNOME Software:
#  libxmlb
# AppStream
#fwupd and friends: Not building fwupd, due to gcab issues causing FTB of fwupd on -current. Wait till maintainer fixes fwupd.
#  libjcat
#  python-smartypants
#  python3-typogrify
#  python-toml
#  protobuf3
#  protobuf-c
#  libsmbios
#  gcab
# fwupd
#flatpak and friends: Note: Builds against libsoup2, so gnome-software must also use soup2
#  xdg-desktop-portal-gtk
#  appstream-glib
#  ostree
# flatpak
#gnome-software # set to use soup2

# Some games for GNOME:
#libgnome-games-support
#gnome-chess
#gnome-klotski
#gnome-mahjongg
#gnome-mines
#iagno

# GNOME Builder:
#sysprof
#sphinx_rtd_theme
#sphinxcontrib-serializinghtml
#sphinxcontrib-qthelp
#sphinxcontrib-jsmath
#sphinxcontrib-htmlhelp
#sphinxcontrib-devhelp
#sphinxcontrib-applehelp
#snowballstemmer
#pytz
#python3-babel
#imagesize
#alabaster
#Sphinx
#libgit2
#libgit2-glib
#template-glib
#python-smartypants
#python3-typogrify
#python-toml
#gi-docgen
#jsonrpc-glib
#gnome-builder
