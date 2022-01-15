#! /data/data/com.termux/files/usr/bin/env bash
# | Script instalador XFCWIN |
# | Creditos: ©MatheusTGamerPro |
# | GitHub: https://github.com/MatheusTGamerPro |
# | Versão: 1.5.0-(build-1.4) |
# | Linguagem: PT-BR (chosen by user) |

# | Este script está atualizado para a tradução
# | completa em PT-BR, caso você não escolheu está versão
# | Volte para o "comando" na Github para reinstalar.

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
echo -e "$Y                      XFCWin Instalador"
echo -e "              \033[04;38mInstalador completo do XFCWin"
echo -e "$W     $R Créditos$W ⟩ MatheusTGamerPro"
echo -e "$W     $R Versão $W ⟩ v1.5.0-Completo $W"
echo -e "$W     $R GitHub$W  ⟩ https://github.com/MatheusTGamerPro"
echo -e "$C┖━─━─━──━──━─━─━─━──━─━─━──━─━──━─━─━─━─━──━──━─━──━─━─━─━┚"
	sleep 2
	echo

	# Iniciar atualização dos pacotes
	echo -e "\033[01;37m[\033[01;35m1/6\033[01;37m] ⟩$W Checando e$M Atualizando pacotes..." $W
	sleep 1

	apt update -y && apt upgrade -y
	pkg update x11-repo -y

	sleep 2
	echo -e "$Stats_Upload |$R Os pacotes foram atualizados!"
	sleep 1
	clear

	# Instalando XFCE + Programas
	echo -e "\033[01;37m[\033[01;35m2/6\033[01;37m] ⟩$R Iniciando instalação do XFCWIN e Programas $W"
	sleep 2 && echo

	apt install xfce4 xfce-theme-manager xfce4-goodies pulseaudio wget tigervnc xfce4-session -y
	apt install otter-browser audacious vim-gtk python-tkinter geany openjdk-17 mtpaint -y

	# Baixando pacote do XFCWin...↓
	sleep 2 && clear
	echo -e "\033[01;37m[\033[01;35m4/6\033[01;37m] ⟩$M Baixando e Extraíndo bootstrap do XFCWIN... $W"

	cd $HOME
	curl -L -o xfcwin-data-pt.tar.xz https://github.com/MatheusTGamerPro/XFCE4-GUI-Termux-Modification-Win10/releases/download/v1.5.0-Full/xfcwin-data-pt.tar.xz
	tar -xvf xfcwin-data-pt.tar.xz

	# Configurando o XFCWIN ↓
	echo -e "\033[01;37m[\033[01;35m5/6\033[01;37m] ⟩$Y Configurando XFCWin...$W"
	sleep 1

	mv Windows10Icons ../usr/share/icons/
	cp -r  backgrounds/ ../usr/share/
	cd Desktop/
	chmod +x *

	# Limpando algums caches que o script encontrar...↓
	echo -e "$Stats_Info |$Y Excluindo Resíduos e caches..."

	cd $HOME
	rm -rf backgrounds
    	rm -rf xfcwin-data-pt.tar.xz

	# Criando comandos e pastas..↓
	sleep 1 && clear
	echo -e "\033[01;37m[\033[01;35m6/6\033[01;37m] ⟩$C Gerando Comandos e Pastas...$W"

	echo "vncserver -geometry 1280x720 -listen tcp" > $PREFIX/bin/startvnc
	echo "vncserver -kill :1" > $PREFIX/bin/stopvnc
	echo "bash $HOME/.config/.xfcwin/commands/xfcwin-clean-pt.sh" > $PREFIX/bin/xfcwin-clean
	echo "bash $HOME/.config/.xfcwin/commands/xfcwin-guide-pt.sh" > $PREFIX/bin/xfcwin-help
	echo "bash $HOME/.config/.xfcwin/commands/xfcwin-info-pt.sh" > $PREFIX/bin/xfcwin-info
	echo "bash $HOME/.config/.xfcwin/installer-settings/uninstall-pt.sh" > $PREFIX/bin/xfcwin-remove

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

	# Provavelmente aqui a instalação termina...↓
	sleep 2 && clear
	echo -e "\033[01;37m[\033[01;35mFinalizado\033[01;37m] ⟩$G XFCWin instalado com sucesso!"
	sleep 1
	echo -e "$W Para iniciar o servidor use: $C startvnc"
	echo -e "$W Para parar o servidor use: $R stopvnc."
	sleep 1
	echo -e "$Y Aproveite!$G :D $W"
	
	rm -rf $HOME/install-pt.sh
	exit
}

cancel_install(){
	clear
	echo -e "\033[01;31mInstalação cancelada.\033[01;37m"
	sleep 1
	clear
}

ask_setup(){
	clear
	echo -e "\033[01;33m"

	read -p 'Deseja Iniciar a instalação? y/n: ' ask_setup
	case $ask_setup in
		y|Y ) start_install ;;
		n|N ) cancel_install ;;
		* ) echo -e "\033[01;31mEssa opção não existe.\033[00;00m" && sleep 1 && ask_setup  ;; 
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
	echo -e "$Stats_Info $M⟩$R Desculpe,$Y o script verificou que você já instalou o XFCWin."
else
	ask_setup
fi
