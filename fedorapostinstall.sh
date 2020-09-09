# !/bin/bash

# ## Unsure how to have this function correctly with multiple installations in a single line
# function sdnf
# {
#   sudo dnf -y
# }

#Update the fastest mirror and deltarpm
echo 'fastestmirror=true' >> /etc/dnf/dnf.conf
echo 'deltarpm=true' >> /etc/dnf/dnf.conf
sudo dnf clean all
sudo dnf update --refresh

# Install rpmfusion
sudo dnf -y install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf -y upgrade

# Install Brave browser
sudo dnf install dnf-plugins-core
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc

# Install default applications
sudo dnf -y install brave-browser steam lutris git vim terminator neofetch htop gimp

# Attempt to install atom and mailspring
sudo dnf -y install https://atom.io/download/rpm.rpm
sudo dnf -y install https://updates.getmailspring.com/download?platform=linuxRpm.rpm

# Install keybase
sudo dnf install -y  https://prerelease.keybase.io/keybase_amd64.rpm
run_keybase

sudo systemctl start sshd
sudo systemctl enable sshd
