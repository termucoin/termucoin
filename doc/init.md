Sample init scripts and service configuration for termubitd
==========================================================

Sample scripts and configuration files for systemd, Upstart and OpenRC
can be found in the contrib/init folder.

    contrib/init/termubitd.service:    systemd service unit configuration
    contrib/init/termubitd.openrc:     OpenRC compatible SysV style init script
    contrib/init/termubitd.openrcconf: OpenRC conf.d file
    contrib/init/termubitd.conf:       Upstart service configuration file
    contrib/init/termubitd.init:       CentOS compatible SysV style init script

1. Service User
---------------------------------

All three Linux startup configurations assume the existence of a "termubit" user
and group.  They must be created before attempting to use these scripts.
The OS X configuration assumes termubitd will be set up for the current user.

2. Configuration
---------------------------------

At a bare minimum, termubitd requires that the rpcpassword setting be set
when running as a daemon.  If the configuration file does not exist or this
setting is not set, termubitd will shutdown promptly after startup.

This password does not have to be remembered or typed as it is mostly used
as a fixed token that termubitd and client programs read from the configuration
file, however it is recommended that a strong and secure password be used
as this password is security critical to securing the wallet should the
wallet be enabled.

If termubitd is run with the "-server" flag (set by default), and no rpcpassword is set,
it will use a special cookie file for authentication. The cookie is generated with random
content when the daemon starts, and deleted when it exits. Read access to this file
controls who can access it through RPC.

By default the cookie is stored in the data directory, but its location can be overridden
with the option '-rpccookiefile'.

This allows for running termubitd without having to do any manual configuration.

`conf`, `pid`, and `wallet` accept relative paths which are interpreted as
relative to the data directory. `wallet` *only* supports relative paths.

For an example configuration file that describes the configuration settings,
see `contrib/debian/examples/termubit.conf`.

3. Paths
---------------------------------

3a) Linux

All three configurations assume several paths that might need to be adjusted.

Binary:              `/usr/bin/termubitd`  
Configuration file:  `/etc/termubit/termubit.conf`  
Data directory:      `/var/lib/termubitd`  
PID file:            `/var/run/termubitd/termubitd.pid` (OpenRC and Upstart) or `/var/lib/termubitd/termubitd.pid` (systemd)  
Lock file:           `/var/lock/subsys/termubitd` (CentOS)  

The configuration file, PID directory (if applicable) and data directory
should all be owned by the termubit user and group.  It is advised for security
reasons to make the configuration file and data directory only readable by the
termubit user and group.  Access to termubit-cli and other termubitd rpc clients
can then be controlled by group membership.

3b) Mac OS X

Binary:              `/usr/local/bin/termubitd`  
Configuration file:  `~/Library/Application Support/Termubit/termubit.conf`  
Data directory:      `~/Library/Application Support/Termubit`
Lock file:           `~/Library/Application Support/Termubit/.lock`

4. Installing Service Configuration
-----------------------------------

4a) systemd

Installing this .service file consists of just copying it to
/usr/lib/systemd/system directory, followed by the command
`systemctl daemon-reload` in order to update running systemd configuration.

To test, run `systemctl start termubitd` and to enable for system startup run
`systemctl enable termubitd`

4b) OpenRC

Rename termubitd.openrc to termubitd and drop it in /etc/init.d.  Double
check ownership and permissions and make it executable.  Test it with
`/etc/init.d/termubitd start` and configure it to run on startup with
`rc-update add termubitd`

4c) Upstart (for Debian/Ubuntu based distributions)

Drop termubitd.conf in /etc/init.  Test by running `service termubitd start`
it will automatically start on reboot.

NOTE: This script is incompatible with CentOS 5 and Amazon Linux 2014 as they
use old versions of Upstart and do not supply the start-stop-daemon utility.

4d) CentOS

Copy termubitd.init to /etc/init.d/termubitd. Test by running `service termubitd start`.

Using this script, you can adjust the path and flags to the termubitd program by
setting the TERMUBITD and FLAGS environment variables in the file
/etc/sysconfig/termubitd. You can also use the DAEMONOPTS environment variable here.

4e) Mac OS X

Copy org.termubit.termubitd.plist into ~/Library/LaunchAgents. Load the launch agent by
running `launchctl load ~/Library/LaunchAgents/org.termubit.termubitd.plist`.

This Launch Agent will cause termubitd to start whenever the user logs in.

NOTE: This approach is intended for those wanting to run termubitd as the current user.
You will need to modify org.termubit.termubitd.plist if you intend to use it as a
Launch Daemon with a dedicated termubit user.

5. Auto-respawn
-----------------------------------

Auto respawning is currently only configured for Upstart and systemd.
Reasonable defaults have been chosen but YMMV.
