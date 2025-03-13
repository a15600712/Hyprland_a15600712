# .dotfiles

## install
```
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
```
```
xargs -r yay -S --noconfirm < install.txt
```
## set nautilus as default file manager
```
xdg-mime default org.gnome.Nautilus.desktop inode/directory
xdg-mime query default inode/directory
```
## set  zen as default web browser
```
xdg-settings set default-web-browser app.zen_browser.zen.desktop
```
