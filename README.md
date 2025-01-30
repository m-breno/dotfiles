# Breno's dotfiles

My Arch Linux dotfiles

Each window-manager, compositor and program have its own repository.
They are all here for easy installation of everything. *- "one clone to download them all"*

If you just want to clone my [Hyprland](https://github.com/hyprwm/Hyprland) dotfiles for example, you can clone just [dotfiles-hyprland](https://github.com/m-breno/dotfiles-hyprland).
> **NOTE:** Always read the repository's README.md to search for any dependencies

## Screenshots

Soon!

## Installation

Clone this repository with all submodules

```
git clone --recurse-submodules https://github.com/m-breno/dotfiles dots
```

> **WARNING:** Do not forget the `--recurse-submodules` flag or else it will clone only `README.md`!
> **NOTE:** Clone the directory directly to a `dots` folder if you want to copy the below snippets

### Direct install

Just copy the folders to `$XDG_CONFIG_HOME` or `~/.config`:

```
cp dots/*/ .config/
```

> **WARNING:** Always make sure to not override existing files and make backups
> **NOTE:** The above command does not copy `README.md` to `.config` ;)

### Symlinking

If you want easier acces to your dotfiles you can symlink the directories like this:

```
ln -sf ~/dots/bspwm ~/.config/bspwm
ln -sf ~/dots/foot ~/.config/foot
ln -sf ~/dots/hypr ~/.config/hypr
ln -sf ~/dots/kitty ~/.config/kitty
ln -sf ~/dots/nvim ~/.config/nvim
ln -sf ~/dots/qtile ~/.config/qtile
ln -sf ~/dots/zsh ~/.config/zsh
```

> **NOTE:** Ignore directories if you know what are you doing

For `zsh` you may need to edit some files. see [https://github.com/m-breno/dotfiles-zsh] (WIP)

More information soon!

## Contribuition

Feel free to make any suggestions in the Issues tab, or drop a PR!

### TODO: (importancy order)

- [ ] hyprland: configure a bar (maybe AGS)
- [ ] list dependencies
- [ ] separate desktops in branches (now with submodules) but keep main
- [x] kitty: fix transparency not changing dinamically on theme change
- [ ] hyprland: add more themes
- [ ] bspwm: test/reconfigure
- [ ] take screenshots
- [ ] update READMEs
