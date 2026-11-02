# dotfiles

Sway rice on Arch Linux, in Tokyo Night colours.

## Packages

```sh
sudo pacman -S --needed sway swayidle waybar mako wofi alacritty awww fish starship \
    grim slurp wl-clipboard libnotify brightnessctl pamixer pavucontrol playerctl \
    polkit-gnome wlsunset btop cava fastfetch nwg-look stow \
    kvantum kvantum-qt5 qt5ct qt6ct \
    inter-font ttf-jetbrains-mono-nerd otf-font-awesome papirus-icon-theme
yay -S --needed swaylock-effects-git bibata-cursor-theme-bin tokyonight-gtk-theme-git
```

## Install

Each top-level folder mirrors the home directory, so `stow` can link it into place. It refuses to overwrite existing files, so move those out of the way first.

```sh
git clone git@github.com:sidberg/dotfiles.git ~/dotfiles
cd ~/dotfiles
stow alacritty btop cava fastfetch fish gtk mako qt scripts starship sway swaylock waybar wofi
```

`sway/.config/sway/config` and `swaylock/.config/swaylock/config` contain `/home/sidney` paths, so change those for a different username.

## Qt theme

Qt apps use the Kvantum theme in `qt/.config/Kvantum/Kvantum-Tokyo-Night`. It comes from [0xsch1zo/Kvantum-Tokyo-Night](https://github.com/0xsch1zo/Kvantum-Tokyo-Night) at commit `b1e6b09` (GPL-3.0), with the disabled text and neutral grey palette colours changed.

## Wallpapers

The images aren't in this repo. `wallpaper-rotate` treats each folder in `~/.local/share/backgrounds/collections/` as a collection of `.jpg` files. It changes the wallpaper every 30 minutes within the selected collection, and moves to the next collection each day.

## Hotkeys

`$mod` is Super.

| Key | Action |
|---|---|
| `$mod+Return` | Terminal |
| `$mod+d` / `$mod+Shift+d` | Run a command / launch an app |
| `$mod+Shift+Escape` | Close window |
| `$mod+Escape` | Lock screen |
| `$mod+f` | Fullscreen |
| `$mod+g` | Resize mode |
| `$mod+minus` / `$mod+Shift+minus` | Show scratchpad / send window to it |
| `$mod+\` | Next wallpaper |
| `$mod+Shift+\` | Next wallpaper collection |
| `$mod+'` | Screenshot a region to the clipboard |
| `$mod+.` / `$mod+Shift+.` | Dismiss the latest notification / all of them |
| `$mod+Shift+c` | Reload sway |
| `$mod+Shift+x` | Exit sway |

On Waybar, click the wallpaper pill to change collection, right-click it for the next wallpaper, click the moon to cycle the night light, and click the CPU or memory stat to open `btop`.
