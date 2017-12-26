# Setup for Ubuntu Machine

## Initial setup

* Change Bios with F2 before boot. Legacy boot and change the order so USB is first
* Install DBAN and Ubuntu on separate USB using [Universal USB Installer](https://www.pendrivelinux.com/universal-usb-installer-easy-as-1-2-3/)
* Wipe hard drive using DBAN if necessary
* Install Ubuntu

## Disable Touchsreen

Change Driver to "libinput" for the touchscreen

`sudo vim /usr/share/X11/xorg.conf.d/10-evdev.conf`

```
Section "InputClass"
        Identifier "evdev touchscreen catchall"
        MatchIsTouchscreen "on"
        MatchDevicePath "/dev/input/event*"
        Driver "libinput"
EndSection
```


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

[IntelliJ]
(https://www.jetbrains.com/idea/download/#section=linux)

Extract and run bin/idea.sh to install

### Installation of pip packages

`sudo pip3 install`

Software packages
* flask
