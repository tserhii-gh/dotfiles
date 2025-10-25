#!/bin/bash

# Update system
# sudo pacman -Syu


# Rebind Caps_Lock to F12
# sudo sed -i -e 's/Caps_Lock/F12/g' /usr/share/X11/xkb/symbols/pc

#Gnome settings
gsettings set org.gnome.desktop.input-sources sources \
"[('xkb', 'us'), ('xkb', 'ua+winkeys')]"

# Cpas LED for keyboard input sources change
gsettings set org.gnome.desktop.input-sources xkb-options "['grp_led:caps']"

# Set cursor size
gsettings set org.gnome.desktop.interface cursor-size 32

# Show battery percentage
gsettings set org.gnome.desktop.interface show-battery-percentage true

# Touchpad settings
gsettings set org.gnome.desktop.peripherals.touchpad natural-scroll false
gsettings set org.gnome.desktop.peripherals.touchpad speed 0.5
gsettings set org.gnome.desktop.interface clock-show-date false

# Keyboard
# Copilot key ot run Calculator
gsettings set org.gnome.settings-daemon.plugins.media-keys calculator "['<Shift><Super>TouchpadOff']"
# Close window
gsettings set org.gnome.desktop.wm.keybindings close "['<Super>q']"
# Toggle on all workspaces
gsettings set org.gnome.desktop.wm.keybindings toggle-on-all-workspaces  "['<Super>t']"
#
gsettings set org.gnome.desktop.wm.keybindings begin-resize "['<Super>r']"
gsettings set org.gnome.desktop.wm.keybindings switch-applications "['<Super>Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-applications-backward "['<Shift><Super>Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-group "['<Super>grave']"
gsettings set org.gnome.desktop.wm.keybindings switch-group-backward "['<Shift><Super>grave']"
gsettings set org.gnome.desktop.wm.keybindings switch-windows "['<Alt>Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-windows-backward "['<Shift><Alt>Tab']"
gsettings set org.gnome.shell.extensions.dash-to-dock shortcut "['']"
