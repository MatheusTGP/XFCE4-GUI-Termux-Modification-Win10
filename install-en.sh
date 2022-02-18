#! /data/data/com.termux/files/usr/bin/env bash
# | Script installer XFCWIN |
# | Credits: ©MatheusTGamerPro |
# | GitHub: https://github.com/MatheusTGamerPro |
# | Version: 1.5.0-(build-1.4) |
# | Language: EN-US (chosen by user) |
# | Hello, This version is translated for EN-US so that most
# | of people understand the Script, soon the script will have a Language selector to select
# | your default language, the README soon get update for EN-US, and PT-BR (default)

start_install(){
	R="\033[01;31m"
    	G="\033[01;32m"
    	Y="\033[01;33m"
    	B="\033[01;34m"
    	M="\033[01;35m"
    	C="\033[01;36m"
    	W="\033[00;00m"

    	Stats_Info="$W[$B⌕$W]"
	Stats_Upload="$W[$M*$W]"
	Stats_Warn="$W[$R!$W]"


	cd $HOME
	sleep 2 && clear

	echo -e "$C┎━─━─━──━──━─━─━─━──━─━──━─━──━─━─━─━─━──━─━──━─━─━──━─━─━┒"
        echo -e "$Y                      XFCWin Installer"
        echo -e "              \033[04;38mThe-Full installer from XFCWIN"
        echo -e "$W     $R Credits$W ⟩ MatheusTGamerPro"
        echo -e "$W     $R Version$W ⟩ v1.5.0-Full $W"
        echo -e "$W     $R GitHub$W  ⟩ https://github.com/MatheusTGamerPro"
        echo -e "$C┖━─━─━──━──━─━─━─━──━─━─━──━─━──━─━─━─━─━──━──━─━──━─━─━─━┚"
	sleep 2
	echo

	# Start Package Updates
	echo -e "\033[01;37m[\033[01;35m1/6\033[01;37m] ⟩$W Checking and $M Updating Packages..." $W
	sleep 1

	apt update -y && apt upgrade -y
	pkg update x11-repo -y

	sleep 2
	echo -e "$Stats_Upload |$R Packages Have Been Updated!"
	sleep 1
	clear

	# Installing XFCE and Packages
	echo -e "\033[01;37m[\033[01;35m2/6\033[01;37m] ⟩$R Getting Started Installing XFCE and Programs $W"
	sleep 2 && echo

	apt install xfce4 xfce-theme-manager xfce4-goodies pulseaudio wget tigervnc xfce4-session -y
	apt install otter-browser audacious vim-gtk python-tkinter geany openjdk-17 mtpaint qt-creator aterm -y

	# Downloading XFCWin...↓
	sleep 2 && clear
	echo -e "\033[01;37m[\033[01;35m4/6\033[01;37m] ⟩$M Downloading and Extracting Bootstrap from XFCWin... $W"

	cd $HOME
	curl -L -o xfcwin-data-en.tar.xz https://github.com/MatheusTGamerPro/XFCE4-GUI-Termux-Modification-Win10/releases/download/v1.5.0-Full/xfcwin-data-en.tar.xz
	tar -xvf xfcwin-data-en.tar.xz

	# Setting The XFCWin ↓
	echo -e "\033[01;37m[\033[01;35m5/6\033[01;37m] ⟩$Y Setting XFCWin...$W"
	sleep 1

	mv Windows10Icons ../usr/share/icons/
	cp -r  backgrounds/ ../usr/share/
	cd Desktop/
	chmod +x *

	# Cleanning Caches...↓
	echo -e "$Stats_Info |$Y Deleting Waste files..."

	cd $HOME
	rm -rf backgrounds
    	rm -rf xfcwin-data-en.tar.xz

	# Creating Commands...↓
	sleep 1 && clear
	echo -e "\033[01;37m[\033[01;35m6/6\033[01;37m] ⟩$C Generating Commands and Folders$W"

	echo "vncserver -geometry 1280x720 -listen tcp" > $PREFIX/bin/startvnc
	echo "vncserver -kill :1" > $PREFIX/bin/stopvnc
	echo "bash $HOME/.config/.xfcwin/commands/xfcwin-clean-en.sh" > $PREFIX/bin/xfcwin-clean
	echo "bash $HOME/.config/.xfcwin/commands/xfcwin-guide-en.sh" > $PREFIX/bin/xfcwin-help
	echo "bash $HOME/.config/.xfcwin/commands/xfcwin-info-en.sh" > $PREFIX/bin/xfcwin-info
	echo "bash $HOME/.config/.xfcwin/installer-settings/uninstall-en.sh" > $PREFIX/bin/xfcwin-remove

	chmod +x $PREFIX/bin/startvnc
	chmod +x $PREFIX/bin/stopvnc
	chmod +x $PREFIX/bin/xfcwin-clean
	chmod +x $PREFIX/bin/xfcwin-help
	chmod +x $PREFIX/bin/xfcwin-info
	chmod +x $PREFIX/bin/xfcwin-remove
	chmod +x $HOME/.vnc/xstartup

	mkdir $HOME/Downloads
	mkdir $HOME/Documents
	mkdir $HOME/Music
	mkdir $HOME/Pictures
	mkdir $HOME/Games

	# Installed...↓
	sleep 2 && clear
	echo -e "\033[01;37m[\033[01;35mCompleted\033[01;37m] ⟩$G XFCWin Installed successfully!"
	sleep 1
	echo -e "$W To start the server use: $C startvnc"
	echo -e "$W to stop it you use: $R stopvnc."
	sleep 1
	echo -e "$Y Enjoy. :D $W"
				
	rm -rf $HOME/install-en.sh

	exit
}

cancel_install(){
	clear
	echo -e "\033[01;31mInstallation Canceled!\033[01;37m"
	sleep 1
	clear
}

ask_setup(){
	clear
	echo -e "\033[01;33m"

	read -p 'Do you want to start the installation? y/n: ' ask_setup
	case $ask_setup in
		y|Y ) start_install ;;
		n|N ) cancel_install ;;
		* ) echo -e "\033[01;31mThis option does not exist!\033[00;00m" && sleep 1 && ask_setup  ;; 
esac
}

if [ -e $HOME/.config/ ]; then
	R="\033[01;31m"
	G="\033[01;32m"
	B="\033[01;34m"
	M="\033[01;35m"
	W="\033[01;37m"

	Stats_Info="$W[$B⌕$W]"
	sleep 1
	clear
	echo -e "$Stats_Info $M⟩$R Sorry,$Y I verified that you has already installed."
else
	ask_setup
fi
