
#!/usr/bin/env bash
#
# SPDX-License-Identifier: GPL-3.0-or-later

set -e -u

# Warning: customize_airootfs.sh is deprecated! Support for it will be removed in a future archiso version.

# set keyboard to pt
# localectl set-x11-keymap pt

# I manually created the services with ln -s but CUPS is not starting for some reason. while its not working this is the workaround
systemctl start cups

# set permission to execute on i3 scripts
#chmod +x /etc/skel/.config/i3/config.d/scripts/*

# set permission to execute on i3 remake script
#chmod +x /etc/skel/.config/i3/makeconfig

# set permission to execute on i3status remake script
#chmod +x /etc/skel/.config/i3status/makeconfig
