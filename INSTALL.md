# Install Instructions

## Clone my dotfiles from github

```bash
mkdir "$HOME/dots"
git clone https://github.com/m-breno/dotfiles "$HOME/dots"
```

## Dependencies

### Install AUR Helper (yay)

```bash
sudo pacman -S git --needed
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg
cd ..
rm -rf yay 
```

### Install Chaotic AUR (prebuilt binaries)

```bash
sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key 3056513887B78AEB
sudo pacman -U '<https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst>'
sudo pacman -U '<https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst>'
```

```bash
echo "[chaotic-aur]
Include = /etc/pacman.d/chaotic-mirrorlist" | sudo tee -a /etc/pacman.conf
```

### Install dependencies

I highly recommend you to install at least the optional dependencies, unless you know what are you doing

Dependencies:

```bash
yay -S bluez bluez-tuils dunst feh kitty neovim picom python-pynvim rofi vlc wget xclip xcolor xfce4-power-manager zsh
```

Optional:

```bash
yay -S bat eza firefox gvfs inter-font lxappearance nasa-wallpaper nerd-fonts-inter noto-fonts noto-fonts-emoji papirus-icon-theme pavucontrol thunar thunar-archive-plugin thunar-media-tags-plugin thunar-volman tumbler ttf-fira-code ttf-fira-code-nerd ttf-jetbrains-mono-nerd viewnior xarchiver zsh
```

Fonts have duplicates bc of rofi (idk)

For my setup/workflow:

```bash
yay -S man-db ncdu obsidian spicetify-cli spotdl spotify spotifywm-git trash-cli unrar unzip vlc wget xdg-ninja xdg-user-dirs xdg-user-dirs-gtk zip
```

## Create xdg-dirs (if post-install)

```bash
LC_ALL=C.UTF-8 xdg-user-dirs-update --force
```

## Backup existing dotfiles (optional)

```bash
mv ~/.config/bspwm ~/.config/bspwm.bkp
mv ~/.config/kitty ~/.config/kitty.bkp
mv ~/.config/nvim ~/.config/nvim.bkp
mv ~/.config/zsh ~/.config/zsh.bkp
```

## Link ~/.config -> ~/dots

If you want easy access to your dots, like me, do that:

```bash
ln -sf ~/.config/bspwm ~/dots/bspwm
ln -sf ~/.config/kitty ~/dots/kitty
ln -sf ~/.config/nvim ~/dots/nvim
ln -sf ~/.config/zsh ~/dots/zsh
```

## ZSH XDG_CONFIG_DIR

```bash
echo 'export ZDOTDIR="$HOME/.config/zsh"' | sudo tee -a /etc/zsh/zshenv
```
