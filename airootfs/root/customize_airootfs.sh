
#!/usr/bin/env bash
#
# SPDX-License-Identifier: GPL-3.0-or-later

set -e -u

# Warning: customize_airootfs.sh is deprecated! Support for it will be removed in a future archiso version.

# set keyboard to pt
localectl set-x11-keymap pt

# set permission to execute on i3 scripts
chmod +x /etc/skel/.config/i3/scripts/*
