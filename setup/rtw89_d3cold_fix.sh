#!/bin/bash

echo "SUBSYSTEM==\"pci\" KERNEL==\"0000:02:00.0\" ATTR{d3cold_allowed}=\"0\"" | sudo tee /etc/udev/rules.d/99-rtw89-d3cold.rules
sudo udevadm control --reload
sudo udevadm trigger
