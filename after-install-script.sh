# set of commands to be executed on a fresh install of debian
# suppose to be ran as root
# usage: ./after-install-script.sh [user to be added to sudo group] 

if [ $# -eq 0 ] || [ -z "$1" ];
then
	echo "no args"
	exit 1
fi

apt install build-essential sudo curl neovim rxvt-unicode zsh awesome xorg dbus-x11 feh xpdf xfe git neofetch lightdm wget firefox-esr pnmixer alsa-tools alsa-utils pnmixer pulseaudio pavucontrol net-tools wicd task-print-server snapd
snap install clangd
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
usermod -a -G sudo $1

reboot
