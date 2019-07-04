#!/bin/bash

echo "Upgrading installed packages..."
sudo yum makecache fast
sudo yum upgrade -y

echo "Installing packages..."
sudo yum install -y epel-release
sudo yum makecache fast
sudo yum groupinstall "Development Tools" -y && sudo yum install kernel-devel -y
sudo yum install -y yum-utils wget curl vim git

echo "Configuring bash..."
cat << 'EOF' >> ~/.bashrc
. ~/etc/bash/bashrc
EOF
