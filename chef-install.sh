#! /bin/bash
CHEF_VERSION="11.4.4"

if [ -f /usr/bin/knife ]; then
        echo "Chef $CHEF_VERSION is already installed"
        exit 0;
fi

if [ -f "/vagrant/chef_11.4.4-2.ubuntu.11.04_amd64.deb" ]; then
        echo "Instaling Chef from package"
        dpkg -i /vagrant/chef_11.4.4-2.ubuntu.11.04_amd64.deb
else
        echo "Installing Chef from Opscode script"
        curl -s -L https://www.opscode.com/chef/install.sh | sudo bash -s -v "$CHEF_VERSION"
fi