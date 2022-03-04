
#!/usr/bin/env bash
#
# SPDX-License-Identifier: GPL-3.0-or-later

set -e -u

# Warning: customize_airootfs.sh is deprecated! Support for it will be removed in a future archiso version.

# set keyboard to pt
# localectl set-x11-keymap pt

# I manually created the services with ln -s but CUPS is not starting for some reason. while its not working this is the workaround
systemctl enable cups

# set permission to execute on i3 scripts
chmod +x /etc/skel/.config/i3/config.d/scripts/i3sounds/i3sounds
chmod +x /etc/skel/.config/i3/config.d/scripts/packy/packy
chmod +x /etc/skel/.config/i3/config.d/scripts/sunset/sunset
chmod +x /etc/skel/.config/i3/config.d/scripts/check-updates
chmod +x /etc/skel/.config/i3/config.d/scripts/i3cpu-governor
chmod +x /etc/skel/.config/i3/config.d/scripts/i3exit
chmod +x /etc/skel/.config/i3/config.d/scripts/i3services
chmod +x /etc/skel/.config/i3/config.d/scripts/emojipick
chmod +x /etc/skel/.config/i3/config.d/scripts/emojiget.py
chmod +x /etc/skel/.config/i3/config.d/scripts/feh-blur
chmod +x /etc/skel/.config/i3/config.d/scripts/help-pacman

# set permission to execute on i3 remake script
chmod +x /etc/skel/.config/i3/makeconfig

# set permission to execute on i3status remake script
chmod +x /etc/skel/.config/i3status/makeconfig
