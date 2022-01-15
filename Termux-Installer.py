# Build=1.0 (Translate to EN-US)
from os import system
from time import sleep
try:
	from wget import download as Get
except ModuleNotFoundError:
	system('pip3 install wget')


def Termux_Installer ():
	print(f"\033[01;33m{'Searching for Termux Packages...':>46}\033[00;00m")
	sleep(2)
	system('clear')
	URL='https://f-droid.org/repo/com.termux_118.apk'
	print(f"\033[01;33m{'Searching Directory...':>46}")
	sleep(2)
	system('clear')
	LOCAL='/sdcard/Download/'
	print(f"\033[01;32m{'[ Downloading Termux v0.118...]':>36}\033[01;36m")
	print(f"{'Speed ​​will depend on your current internet connection...':<34}")
	sleep(1)
	
	Get(URL, LOCAL) # Installing Termux...
	
	print(f"\033[01;32mTermux Downloaded in Folder: {LOCAL}")
	print("Script By: MatheusTGamerPro")
	
Termux_Installer()
