#!/usr/bin/env bash

# bash <(curl -s https://raw.githubusercontent.com/m-breno/dotfiles/main/install.sh)

declare -a dot_dirs=(bspwm kitty nvim zsh)

# Install AUR Helper (yay)
ins_yay() {
  sudo pacman -S git --needed
  mkdir "$HOME/tmp"
  git clone https://aur.archlinux.org/yay.git "$HOME/tmp"
  cd "$HOME/tmp/yay" || return
  makepkg
  rm -rf "$HOME/tmp"

  export yay=yes
}

# Install Chaotic AUR (prebuilt binaries)
ins_caur() {
  sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
  sudo pacman-key --lsign-key 3056513887B78AEB
  sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst'
  sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'

  echo "[chaotic-aur]
Include = /etc/pacman.d/chaotic-mirrorlist" | sudo tee -a /etc/pacman.conf
}

# Install dependencies
ins_deps() {
  if [[ -z $yay ]]; then
    ins_comm="sudo pacman -S"
  else
    ins_comm="yay -S"
  fi
  $ins_comm bat
}

# Backup existing dotfiles
backup() {
  for i in "${dot_dirs[@]}"; do
    mv "$i" "${i}.bkp"
  done
}

# Clone my dotfiles from github
clone() {
  mkdir "$HOME/dots"
  git clone https://github.com/m-breno/dotfiles "$HOME/dots"
}

# Link ~/.config -> ~/dots
link() {
  for i in "${dot_dirs[@]}"; do
    ln -sf "$HOME/.config/$i" "$HOME/dots/$i"
  done
  echo 'export ZDOTDIR="$HOME/.config/zsh"' | sudo tee -a /etc/zsh/zshenv
}

echo "Do you want to backup your dotfiles?"
select yn in "Yes" "No"; do
  case $yn in
  Yes)
    backup
    break
    ;;
  No) break ;;
  esac
done

echo "Install Chaotic AUR (prebuilt binaries for AUR)?"
select yn in "Yes" "No"; do
  case $yn in
  Yes)
    ins_yay
    break
    ;;
  No) break ;;
  esac
done

echo "Install AUR helper (yay)?"
select yn in "Yes" "No"; do
  case $yn in
  Yes)
    ins_yay
    break
    ;;
  No) break ;;
  esac
done

ins_deps
move
link
