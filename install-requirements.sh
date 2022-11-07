#!/bin/bash

## GET DISTRONAME
distro=$(cat /etc/os-release | grep -E  "^NAME" | cut -d'"' -f2)

case $distro in
	"Manjaro Linux")
		pamac install nnn-icons
		;;
    "Ubuntu")
        apt install nnn-icons
	*)
		echo "Distro not supportet yet"
		;;
esac

git clone https://github.com/sebastiencs/icons-in-terminal.git
cd icons-in-terminal
./install-autodetect.sh
cd ..
rm -rf icons-in-terminal

exit 0
