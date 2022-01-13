# --------- Select The Language for install --------#
setup_portugues(){
	echo -e "\033[00;00m"
	git clone https://github.com/MatheusTGamerPro/XFCE4-GUI-Termux-Modification-Win10
	cd $HOME/XFCE4-GUI-Termux-Modification-Win10/
	mv install-pt.sh $HOME
	rm -rf $HOME/XFCE4-GUI-Termux-Modification-Win10/
	bash $HOME/install-pt.sh
}
setup_english(){
	echo -e "\033[00;00m"
	git clone https://github.com/MatheusTGamerPro/XFCE4-GUI-Termux-Modification-Win10
        cd $HOME/XFCE4-GUI-Termux-Modification-Win10/
	clear
	mv install-en.sh $HOME
        rm -rf $HOME/XFCE4-GUI-Termux-Modification-Win10/
        bash $HOME/install-en.sh
}

R="\033[01;31m"
G="\033[01;32m"
Y="\033[01;33m"
B="\033[01;34m"
M="\033[01;35m"
C="\033[01;36m"
W="\033[01;37m"

ask_setup(){
clear
echo -e "$R [*]$W Please, Select The Language from script" && echo
sleep 1
echo -e "\033[01;37m[\033[01;35m1\033[01;37m]$W -$G Portugues-BR"
echo -e "\033[01;37m[\033[01;35m2\033[01;37m]$W -$G English-US$M"
echo
read -p ' Select the language 1/2:  ' ask_lang
case $ask_lang in
	1 ) setup_portugues ;;
	2 ) setup_english ;;
	* ) ask_setup
esac
}
ask_setup
