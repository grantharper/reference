# Setup for Ubuntu Machine

## Initial setup

* Change Bios with F2 before boot. Legacy boot and change the order so USB is first
* Install DBAN and Ubuntu on separate USB using [Universal USB Installer](https://www.pendrivelinux.com/universal-usb-installer-easy-as-1-2-3/)
* Wipe hard drive using DBAN if necessary
* Install Ubuntu

## Software Installation

### Installation using apt-get

`sudo apt install`

Software packages
* default-jre
* default-jdk
* git
* maven
* python3-pip
* curl
* vim
* apache2

### Installation of .deb packages

`sudo apt install ./name.deb`

Software packages
* vscode
* chrome

### Custom installation

[awscli](http://docs.aws.amazon.com/cli/latest/userguide/awscli-install-bundle.html) 

### Installation of pip packages

`sudo pip3 install`

Software packages
* flask
