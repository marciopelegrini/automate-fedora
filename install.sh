#!/bin/bash

# Instalar o RPM Fusion
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Instalar o driver da NVIDIA e CUDA
#sudo dnf install akmod-nvidia xorg-x11-drv-nvidia-cuda xorg-x11-drv-nvidia-cuda-libs -y
#sudo dnf install nvidia-vaapi-driver -y

# Corrigir os problemas de codec
sudo dnf swap ffmpeg-free ffmpeg --allowerasing -y
sudo dnf groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin -y
sudo dnf groupupdate sound-and-video -y
sudo dnf install amrnb amrwb faad2 flac gpac-libs lame libde265 libfc14audiodecoder mencoder x264 x265 ffmpegthumbnailer -y

# Instalar o Piper para gerenciar o MX Master 3
sudo dnf install piper -y

# Instalar o GNOME Tweaks para configurar o botão de minimizar
sudo dnf install gnome-tweaks -y

# Instalar o Google Chrome (e remover o aviso de gerenciado pela organização)
sudo dnf install fedora-workstation-repositories -y
sudo dnf config-manager --set-enabled google-chrome
sudo dnf install google-chrome-stable -y
sudo dnf remove fedora-chromium-config -y

# Instalar as fontes da Microsoft
sudo dnf install https://downloads.sourceforge.net/project/mscorefonts2/rpms/msttcore-fonts-installer-2.6-1.noarch.rpm -y

# Instalar Vivaldi Browser
sudo dnf config-manager --add-repo https://repo.vivaldi.com/stable/vivaldi.repo
sudo rpm --import https://repo.vivaldi.com/stable/linux_signing_key.pub
sudo dnf install vivaldi-stable

# Instalar aplicativos em flatpak
flatpak install flathub com.bitwarden.desktop
flatpak install flathub com.discordapp.Discord
flatpak install flathub com.spotify.Client
#flatpak install flathub tech.feliciano.pocket-casts
#flatpak install flathub com.obsproject.Studio
flatpak install flathub io.github.celluloid_player.Celluloid
#flatpak install flathub org.gnome.Boxes
flatpak install flathub com.mattjakeman.ExtensionManager
flatpak install flathub com.github.tchx84.Flatseal
#flatpak install flathub org.mozilla.Thunderbird
flatpak install flathub org.nickvision.tubeconverter
flatpak install flathub org.localsend.localsend_app
flatpak install flathub page.codeberg.libre_menu_editor.LibreMenuEditor
flatpak install flathub de.haeckerfelix.Fragments
flatpak install flathub com.rtosta.zapzap
#flatpak install flathub com.todoist.Todoist
flatpak install flathub com.discordapp.Discord
#flatpak install flathub io.github.pwr_solaar.solaar
#flatpak install flathub io.github.brunofin.Cohesion

# Instalar as fontes que estão na pasta: Fontes
# Aplicativos para instalar depois manualmente: DaVinci Resolve, Figma for Desktop, Insync
# O que adicionar como webapp depois: Trello
# Ajustar os problemas do DaVinci Resolve segundo esse tutorial: https://github.com/H3rz3n/Davinci-Resolve-Fedora-38-39-40-Fix
