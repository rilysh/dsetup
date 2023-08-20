## General programs

### Update
```sh
apt update && apt upgrade
```

### Fonts
```sh
apt install fonts-noto fonts-noto-cjk fonts-noto-cjk-extra fonts-noto-core fonts-noto-extra
```

### Others
```sh
apt install 7zip alsa-utils faenza-icon-theme qemu-system-x86 qbittorrent dosbox gimp aumix flameshot htop wireshark \
cool-retro-term make cmake ninja gcc gdb clang lldb nasm valgrind vim emacs zip unrar-free zsh ffmpeg mpv git \
mypaint python3-pip wget curl libsdl1.2debian libsdl2-dev linux-headers-amd64 icewm simplescreenrecorder
```

### VSCode
```sh
curl -L https://code.visualstudio.com/sha/download\?build\=stable\&os\=linux-deb-x64 -o code.deb
dpkg -i code.deb
sleep 1
rm -f code.deb
```

### Wine
```sh
dpkg --add-architecture i386
mkdir -pm755 /etc/apt/keyrings
wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/debian/dists/bookworm/winehq-bookworm.sources
update_upgrade
# Hope it will not break the system 
apt install --install-recommends -y winehq-stable

# dpkg --remove-architecture i386 # when done
```

### Oh-my-zsh
```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Emacs packages
```sh
company elfeed lsp-mode lsp-pyright markdown-mode markdown-preview-mode multiple-cursors python-mode
simpleclip use-package
```
