#!/bin/bash

pacman -Syy
pacman -S wget zsh git which awk --noconfirm

mkdir /root/.cache
chown -R root:root /root/.config/ /root/.zshrc /root/.i18n

export ZSH="$HOME/.config/oh-my-zsh"
sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

rm -f ~/.zshrc
mv ~/.zshrc.pre-oh-my-zsh ~/.zshrc
rm -f ~/.shell.pre-oh-my-zsh
rm -f ~/.zcompdump*
rm -f ~/.zsh_history
rm -f ~/.wget-hsts
chsh -s /bin/zsh
source ~/.zshrc

rm -rf /var/cache/pacman/pkg
rm -rf /var/lib/pacman/sync

rm /build.sh
