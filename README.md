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

## bluetooth keychron
```
echo "options hid_apple fnmode=2" | sudo tee /etc/modprobe.d/hid_apple.conf
sudo mkinitcpio -P
```
1. Edit the file /etc/bluetooth/main.conf
2. Uncomment FastConnectable config and set it to true: FastConnectable = true
3. Uncomment ReconnectAttempts=7 (set the value to whatever number that you want)
4. Uncomment ReconnectIntervals=1, 2, 3
## if keyboard status is not showing on waybar
```
sudo usermod -aG input $USER
```
## HesRes Audio
Use pipewire & follow
[https://forum.manjaro.org/t/howto-set-up-a-hi-res-audiophile-usb-dac-cambridge-audio/80724](https://forum.manjaro.org/t/howto-set-up-a-hi-res-audiophile-usb-dac-cambridge-audio/80724)
