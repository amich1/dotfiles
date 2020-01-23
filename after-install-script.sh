# set of commands to be executed on a fresh install of debian
# suppose to be ran as root
# usage: ./after-install-script.sh [user to be added to sudo group] 

if [ $# -eq 0 ] || [ -z "$1" ];
then
	echo "no args"
	exit 1
fi

apt install build-essential sudo neovim rxvt-unicode zsh awesome xorg dbus-x11 feh xpdf xfe git neofetch lightdm wget firefox-esr pnmixer alsa-tools alsa-utils pnmixrpulseaudio pavucontrol net-tools wicd task-print-server snapd
usermod -a -G sudo $1

reboot
