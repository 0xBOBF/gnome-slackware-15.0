# Gnome for Slackware 15.0
## Overview
This project provides the GNOME desktop in "SlackBuild" format for use on Slackware 15.0.

The SlackBuilds in this project are intended to be built on Slackware 15.0, with no custom upgrades required to the base Slackware packages. When Slackware 15.0 released, GNOME 41 was the latest version. The builds here are from GNOME 41 or later, depending on:
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

After setting up the colord user and group, you can build and install the GNOME desktop from slackbuilds.org using the provided queuefiles. For example, the steps to build and install the gnome-all queue using 'sbopkg' would be as follows:
```bash
wget -P /var/lib/sbopkg/queues https://raw.githubusercontent.com/0xBOBF/gnome-slackware-15.0/main/gnome-all.sqf
sbopkg -i gnome-all
```

Or using the gnome-basic.sqf queuefile:
```bash
wget -P /var/lib/sbopkg/queues https://raw.githubusercontent.com/0xBOBF/gnome-slackware-15.0/main/gnome-basic.sqf
sbopkg -i gnome-basic
```

Upon completion of building the queuefile, you will have the GNOME desktop installed on your Slackware system. The recommended way to use GNOME is to boot into run level 4 and use the GDM display manager. You can also use 'startx' from run level 3, but in that case GDM will not be running and screen locking in the GNOME desktop will not work.

