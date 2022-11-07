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

exit 0
