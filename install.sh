# | Script instalador do XFCWIN |
# | Creditos: ©MatheusTGamerPro |
# | GitHub: https://github.com/MatheusTGamerPro |
# | Versão: 1.0.0-estável (build-2) | 

# | Hello, This version is translated for EN-US so that most
# | of people understand the Script, soon the script will have a Language selector to select
# | your default language, the README soon get update for EN-US, and PT-BR (default)

on_start_install(){
	# Configurar Tema do Terminal... | Configure Theme of Terminal...
	R="\033[01;31m"
    	G="\033[01;32m"
    	Y="\033[01;33m"
    	B="\033[01;34m"
    	M="\033[01;35m"
    	C="\033[01;36m"
    	W="\033[00;00m"

    	Stats_Info="$W[$B⌕$W]"
	Stats_Upload="$W[$G⌾$W]"
	Stats_Warn="$W[$R!$W]"

	cd $HOME

	sleep 2
	clear
	echo -e "$Stats_Warn $Y ========≈[ XFCWin - Setup-installer]≈======="
	echo -e "$Stats_Info $W Crédits:$G MatheusTGamerPro"
	echo -e "$Stats_Info $W Version:$C v1.0.0e $W"
	echo -e "    $Y ===========================================$W"
	sleep 2
	clear
# Iniciar Atualizações dos Pacotes

	echo -e "$Stats_Upload $W Checking and $M Updating Packages..." $W
	sleep 2

	apt update -y && apt upgrade -y

	pkg update x11-repo -y

	sleep 2
	echo -e "$Stats_Upload $R Packages Have Been Updated!"
	sleep 2
	clear
# Instalando XFCE e Pacotes

	echo -e "$Stats_Warn $R Getting Started Installing XFCE and Programs $W"
	sleep 2
	echo
	apt install xfce4 xfce-theme-manager xfce4-goodies pulseaudio wget -y
	sleep 1
	apt install tigervnc -y
	apt install otter-browser audacious vim-gtk python-tkinter -y

	sleep 2
	echo -e "$Stats_Warn Downloading $B Repository... $W"
	echo
	sleep 1
	cd $HOME
	apt install git -y
	git clone https://github.com/MatheusTGamerPro/XFCE4-GUI-Termux-Modification-Win10

	# Configurando o XFCE...

	sleep 2
	clear
	echo -e "$Stats_Warn $M Downloading Bootstrap from xfcwin... $W"
	echo
	sleep 2

	curl -L -o xfcwin-data.tar.xz https://github.com/MatheusTGamerPro/XFCE4-GUI-Termux-Modification-Win10/releases/download/1.0.0/xfcwin-data.tar.xz
	sleep 1
	echo -e "$Stats_Warn $G Unpacking the XFCWIN... $W"
	tar -xvf xfcwin-data.tar.xz
	mv Windows10Icons ../usr/share/icons/

	cd Desktop/
	chmod +x Browser.desktop Thunar\ File\ Manager.desktop Leafpad.desktop Xfce\ Terminal.desktop
	sleep 1

	cd $HOME
	sleep 1
	cp -r  backgrounds/ ../usr/share/

	# Limpando Caches e Residuos

	echo -e "$Stats_Info $Y Deleting Waste files..."
	rm -rf backgrounds
    	rm -rf XFCE4-GUI-Termux-Modification-Win10
    	rm -rf xfcwin-data.tar.xz

	sleep 1
	clear
	echo -e "$Stats_Upload $C Generating Commands and Shortcuts...$W"

	echo "vncserver -geometry 1280x720 -listen tcp && export DISPLAY=:1" > $PREFIX/bin/startvnc
	chmod +x $PREFIX/bin/startvnc
	echo "vncserver -kill :1" > $PREFIX/bin/stopvnc
	chmod +x $PREFIX/bin/stopvnc
	echo "clear && echo cleaning waste... && rm -rf $HOME/.vnc/localhost:1.log $HOME/.vnc/localhost:2.log && pkg autoclean && sleep 1 && clear" > $PREFIX/bin/xfcwin-clean
	chmod +x $PREFIX/bin/xfcwin-clean
	chmod +x .vnc/xstartup

	sleep 2
	clear

	echo -e "$Sats_Warn $G XFCwin Installed successfully!"
	sleep 1
	echo -e "$Stats_Warn $W To start the server use: $C startvnc,$W to stop it you use: $R stopvnc."
	sleep 2
	echo
	echo -e "$Y Aproveite $W"

	exit
}

on_cancel_install(){
	clear
	echo -e "\033[01;31mInstallation Canceled!\033[01;37m"
	sleep 2
	clear
}

on_value_invalid(){
	sleep 1
    	echo -e "\033[01;31mInvalid Option,\033[01;32mTry Again."
	exit
}

ask_setup(){
	clear
	read -p 'Do you want to start the installation? y/n: ' ask_setup
	case $ask_setup in
		y|Y|s|sim|Sim|SIm|SIM ) on_start_install ;;
		n|N|no|nao|Nao|NAo|Não|NÃo|NÃO ) on_cancel_install ;;
		* ) echo -e "\033[01;31mOption Null\033[00;00m" && sleep 1 && ask_setup  ;; 
esac
}

if [ -e $PREFIX/bin/xfce4-session ]; then
	R="\033[01;31m"
	G="\033[01;32m"
	Stats_Info="$W[$B⌕$W]"
	sleep 1
	clear
	echo -e "$Stats_Info$R Sorry,$Y I verified that you has already installed..."
	exit
else
	ask_setup
fi
