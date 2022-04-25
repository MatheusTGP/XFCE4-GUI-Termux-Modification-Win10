# Code By: MatheusTGP
# Code version: v2.0
# Github: https://github.com/MatheusTGamerPro/

from os import system as console
try:
	from wget import download
except ModuleNotFoundError:
	console('pip3 install wget')

url = "https://f-droid.org/repo/com.termux_118.apk"
local = "/sdcard/Download/"

def termux_downloader():
    try:
        print("Baixando Termux de F-Droid...")
        download(url, local)
        print("Download foi finalizado com sucesso, APK do Termux salvo em: ", local)
    except KeyboardInterrupt:
        print("O usuario cancelou o download.")

termux_downloader()
