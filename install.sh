#!/bin/bash

pacman -Syy
pacman -S mariadb-clients --noconfirm
pacman -S iputils net-tools --noconfirm
pacman -S grep --noconfirm
pacman -S procps --noconfirm

pacman -S pkgfile --noconfirm
pkgfile --update
