from os import system
from time import sleep
try:
	from wget import download as Get
except ModuleNotFoundError:
	system('pip3 install wget')


def Termux_Installer ():
	print(f"\033[01;33m{'Procurando Pacotes do Termux...':>46}\033[00;00m")
	sleep(2)
	system('clear')
	URL='https://f-droid.org/repo/com.termux_117.apk'
	print(f"\033[01;33m{'Procurando Diretorio...':>46}")
	sleep(2)
	system('clear')
	LOCAL='/sdcard/Download/'
	print(f"\033[01;32m{'[ Baixando Termux...]':>36}\033[01;36m")
	print(f"{'A Velocidade dependera da sua conexão atual com a internet...':<34}")
	sleep(1)
	
	Get(URL, LOCAL)
	
	print(f"\033[01;32mTermux Baixado na Pasta: {LOCAL}")
	
	
Termux_Installer()