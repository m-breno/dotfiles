#!/usr/bin/env bash

# bash <(curl -s https://raw.githubusercontent.com/m-breno/dotfiles/main/install.sh)

declare -a dot_dirs=(bspwm kitty nvim zsh)

# Install AUR Helper (yay)
sudo pacman -S git --needed
mkdir "$HOME/tmp"
git clone https://aur.archlinux.org/yay.git "$HOME/tmp"
cd "$HOME/tmp/yay" || return
makepkg
rm -rf "$HOME/tmp"

export yay=yes

# Install Chaotic AUR (prebuilt binaries)
sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key 3056513887B78AEB
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst'
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'

echo "[chaotic-aur]
Include = /etc/pacman.d/chaotic-mirrorlist" | sudo tee -a /etc/pacman.conf

# Install dependencies
if [[ -z $yay ]]; then
  ins_comm="sudo pacman -S"
else
  ins_comm="yay -S"
fi
$ins_comm bat bluez bluez-tuils firefox inter-font kitty lxappearance man-db ncdu neovim nerd-fonts-inter noto-fonts noto-fonts-emoji obsidian papirus-icon-theme pavucontrol picom python-pynvim rofi spicetify-cli spotdl spotify spotifywm-git thunar ttf-fira-code ttf-fira-code-nerd ttf-jetbrains-mono-nerd unrar unzip viewnior vlc wget xarchiver xclip xcolor xdg-ninja xdg-user-dirs xdg-user-dirs-gtk xfce4-power-manager zip

# Create xdg-dirs
LC_ALL=C.UTF-8 xdg-user-dirs-update --force

# Backup existing dotfiles
for i in "${dot_dirs[@]}"; do
  mv "$i" "${i}.bkp"
done

# Clone my dotfiles from github
mkdir "$HOME/dots"
git clone https://github.com/m-breno/dotfiles "$HOME/dots"

# Link ~/.config -> ~/dots
for i in "${dot_dirs[@]}"; do
  ln -sf "$HOME/.config/$i" "$HOME/dots/$i"
done
echo 'export ZDOTDIR="$HOME/.config/zsh"' | sudo tee -a /etc/zsh/zshenv
