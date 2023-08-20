#!/bin/bash

# Notes: https://github.com/sarah-walker-pcem/pcem/blob/dev/TESTED.md#games

function update_upgrade() {
    apt update && apt upgrade -y
}

function remove_esr() {
    apt remove -y firefox-esr
}

function install() {
    apt install -y fonts-noto fonts-noto-cjk fonts-noto-cjk-extra fonts-noto-core fonts-noto-extra \
	7zip alsa-utils faenza-icon-theme qemu-system-x86 qbittorrent dosbox gimp aumix flameshot htop wireshark \
	cool-retro-term make cmake ninja gcc gdb clang lldb nasm valgrind vim emacs zip unrar-free zsh ffmpeg mpv git \
	mypaint python3-pip wget curl libsdl1.2debian libsdl2-dev linux-headers-amd64 icewm
}

function install_vscode() {
    curl -L https://code.visualstudio.com/sha/download\?build\=stable\&os\=linux-deb-x64 -o code.deb
    dpkg -i code.deb
    sleep 1
    rm -f code.deb
}

function install_pcem() {
    git clone --depth 1 https://github.com/sarah-walker-pcem/pcem.git /home/$USER/pcem
    cd /home/$USER/pcem
    cmake CMakeLists.txt
    make -j$(nproc) && mv src/pcem .
}

function install_wine() {
    dpkg --add-architecture i386
    mkdir -pm755 /etc/apt/keyrings
    wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
    wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/debian/dists/bookworm/winehq-bookworm.sources
    update_upgrade
    # Hope it will not break the system 
    apt install --install-recommends -y winehq-stable
}

function install_ohmyzsh() {
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
}

function move_emacs() {
    mkdir -p /home/$ISER/.pystubs
    mv dotemacs /home/$USER/.emacs
}

function main() {
    update_upgrade
    remove_esr
    install
    install_vscode
    install_pcem
    install_wine
    move_emacs
    install_ohmyzsh
}

main
