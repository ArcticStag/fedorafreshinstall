# !/bin/bash

# ## Unsure how to have this function correctly with multiple installations in a single line
# function sdnf
# {
#   sudo dnf -y
# }

sudo dnf -y install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf -y upgrade

sudo dnf install dnf-plugins-core

sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/

sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc

sudo dnf -y install brave-browser steam lutris git vim terminator neofetch htop

cd ~/Downloads/

wget https://github.com/Foundry376/Mailspring/releases/download/1.7.8/mailspring-1.7.8-0.1.x86_64.rpm
wget https://atom-installer.github.com/v1.49.0/atom.x86_64.rpm

sudo dnf -y install https://atom.io/download/rpm.rpm
sudo dnf -y install https://updates.getmailspring.com/download?platform=linuxRpm.rpm

rm -frv *.rpm

cd ~/

sudo dnf install -y  https://prerelease.keybase.io/keybase_amd64.rpm
run_keybase
