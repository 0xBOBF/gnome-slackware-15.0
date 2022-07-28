# Gnome for Slackware 15.0
## Overview
This project provides the GNOME desktop in "SlackBuild" format for use on Slackware 15.0.

The SlackBuilds in this project are intended to be built on Slackware 15.0, with no custom upgrades required to the base Slackware packages. When Slackware 15.0 released, GNOME 41 was the latest version. The builds here will generally be from that same release, although it may vary depending on: 
- Pre-existing library versions in Slackware (e.g. The existing GTK4 version limits many newer versions of applications to pre GNOME 42 versions).
- Existing versions of programs on slackbuilds.org, since some applications already have existing maintainers.
- Any combination of the above two that limit what latest version of GNOME software that can be built on Slackware-15.0

## Building and Installing
Most of the SlackBuilds in this repo are hosted on slackbuilds.org. This means that the GNOME desktop can be built and installed using existing SlackBuild tools like 'sbopkg'.

The GNOME desktop consists of multiple libraries and applications, so queuefiles are provided to help in building the software in the correct order. There are two queuefiles provided in this repo:

1. gnome-basic.sqf - A minimal GNOME desktop without any additional GNOME applications. This provides the basic GNOME Shell, GNOME Session Manager, GDM display manager, and ability to tweak the system and extensions.

2. gnome-all.sqf - This builds most of the available GNOME software from slackbuilds.org, some of which integrate into the GNOME desktop to provide more features. See the queuefile for details of what is included.

Before starting either build you will need to create a 'colord' group and user, which is needed by the colord dependency for the GNOME desktop. Use the following commands as root to set this up:
```bash
 groupadd -g 303 colord
 useradd -d /var/lib/colord -u 303 -g colord -s /bin/false colord
```

If using the gnome-all.sqf queuefile then you will also need to set up an 'avahi' group and user, which is an optional dependency that is used in the full build. The following commands will set up an avahi group and user:
```bash
 groupadd -g 214 avahi
 useradd -u 214 -g 214 -c Avahi -d /dev/null -s /bin/false avahi
```

After setting up the appropriate users and groups as listed above, you can build and install the GNOME desktop from slackbuilds.org using the providied queuefiles. For example, the steps to build and install the gnome-all queue using 'sbopkg' would be as follows:
```bash
wget -P /var/lib/sbopkg/queues https://raw.githubusercontent.com/0xBOBF/gnome-slackware-15.0/main/gnome-all.sqf
sbopkg -i gnome-all
```

Building and installing the gnome-basic queuefile is a little simpler, since it doesnt have envrionment variables that need to be set. The steps to build this version with 'sbopkg' would be:
```bash
wget -P /var/lib/sbopkg/queues https://raw.githubusercontent.com/0xBOBF/gnome-slackware-15.0/main/gnome-basic.sqf
sbopkg -i gnome-basic
```

## Additional Setup Required
Slackware 15.0 comes with support for GDM already in its `/etc/rc.d/rc.4` init script. However, GDM is started in this script with an invalid option, which will cause GDM to fail to start by default. You will need to edit the script and remove the `-nodaemon` option before attempting to use GDM from runlevel 4. After correcting, the gdm stanza should be:
```bash
if [ -x /usr/sbin/gdm ]; then
  exec /usr/sbin/gdm
fi
```

If you use the gnome-all.sqf queuefile, then you will also install avahi which is an optional dependency. Avahi has a couple daemons that should be started at boot and stopped at shutdown. This can be done using `rc.local` and `rc.local_shutdown` scripts (this information is also in the Avahi README).

Start the daemons with the following in `/etc/rc.d/rc.local`:
```bash
# Start avahidaemon
if [ -x /etc/rc.d/rc.avahidaemon ]; then
 /etc/rc.d/rc.avahidaemon start
fi
# Start avahidnsconfd
if [ -x /etc/rc.d/rc.avahidnsconfd ]; then
  /etc/rc.d/rc.avahidnsconfd start
fi
```

Stop the daemons with the following in `/etc/rc.d/rc.local_shutdown`:
```bash
# Stop avahidnsconfd
if [ -x /etc/rc.d/rc.avahidnsconfd ]; then
  /etc/rc.d/rc.avahidnsconfd stop
fi
# Stop avahidaemon
if [ -x /etc/rc.d/rc.avahidaemon ]; then
  /etc/rc.d/rc.avahidaemon stop
fi
```

