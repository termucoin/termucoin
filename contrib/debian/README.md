
Debian
====================
This directory contains files used to package termubitd/termubit-qt
for Debian-based Linux systems. If you compile termubitd/termubit-qt yourself, there are some useful files here.

## termubit: URI support ##


termubit-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install termubit-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your termubit-qt binary to `/usr/bin`
and the `../../share/pixmaps/termubit128.png` to `/usr/share/pixmaps`

termubit-qt.protocol (KDE)

