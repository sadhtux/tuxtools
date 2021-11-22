#!/bin/bash
clear
echo "|-------------------------------------------------|"
echo "| Linux Tools by @sadhtux at github.com           |"
echo "|-------------------------------------------------|"
DISTRO=`lsb_release -a 2> /dev/null | grep -i 'Distributor ID' | tr -d '[:space:]' | cut -f2 -d :`

if [ "$DISTRO" = "Debian" ]; then
    echo "-------------------------"
    echo "Distro detectada: Debian."
    echo "-------------------------"
    echo ""
    /usr/bin/sleep 2
    echo "------------------------"
    echo "Instalando dependencias:"
    echo "------------------------"
    echo ""
    /usr/bin/apt-get -o APT::Install-Suggests="true" install -y imagemagick ncdu nmap fping net-tools netcat bind9-utils exiv2 rename curl htop git fdupes testdisk lsb-release neofetch ffmpeg
    echo "----------------------------------------------"
    echo "Descargando e instalando Utilidades  @sadhtux "
    echo "----------------------------------------------"
    echo ""
    echo "----------------------"
    echo "Instalando: youtube-dl"
    echo "----------------------"
    rm -rf /usr/local/bin/youtube-dl 2>/dev/null
    curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
    chmod a+rx /usr/local/bin/youtube-dl
    echo "version final youtube-dl:"
    /usr/local/bin/youtube-dl --version
    echo "---------------------------"
    echo "Instalando: tuxResizeImages"
    echo "---------------------------"
    curl -L https://raw.githubusercontent.com/sadhtux/tuxtools/main/tuxResizeImages -o /usr/local/bin/tuxResizeImages
    chmod a+rx /usr/local/bin/tuxResizeImages
else
    echo "Distro desconocida."
    echo "Saliendo"
    exit 10
fi
