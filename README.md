![ForYou](https://img.shields.io/badge/-Created_with_❤️-gray)
![Interface](https://img.shields.io/badge/-Termux_GUI_X11-cyan)
![Developed with](https://img.shields.io/badge/Construido%20em-Bash-1f425f.svg)
![Version](https://img.shields.io/badge/-Version:_1.5.0_Build_1.3-blue)
![Support](https://img.shields.io/badge/Android_7.0+-3DDC84?style=for-the-badge&logo=android&logoColor=black)

# XFCE4 - Desktop | For Termux without Root

![XFCE-Win-10](https://github.com/MatheusTGamerPro/XFCE4-GUI-Termux-Modification-Win10/blob/TGP-Projects/Fotos/Screenshot_2021-12-30-12-07-57.png?raw=true "XFCE with Theme Dark")

Nesse Projeto, você poderá executar uma SUPER Interface Gráfica no seu dispositivo Android, sem Precisar de ROOT (Enraizamento),
com ele você pode acessar vários programas sendo, navegador, IDLEs, Java, Python, Entre outro programas, está interface e Leve e com uma ótima Otimização.

Execute Programas para Programar sendo em: **Java, Python, NodeJS, C++/C.**
Você pode acessar a Internet com o navegador, assistir vídeos com Vídeo Player,
Escutar música com **Audacious**e muito mais, veja a vídeos no YouTube pelo Navegador e entre várias outras funções, Logo abaixo, você terá um pequeno tutorial Completo
da instalação do XFCWin no seu Dispositivo.

# Navegação
- [Sobre o Desktop](#oque-é-este-desktop)
- [Informações do XFCWin](#informações-do-xfcwin)
- [Como baixar e instalar](#como-baixar-e-instalar)
- [Screenshots](#screenshots-do-xfcwin)
- [Funcionalidades](#informações-do-xfcwin-e-funcionalidades)
- [Licenses & Crédits](#licenses-and-credits)
- [Final](#finalização)

# Oque é este desktop
Está interface gráfica e uma versão do [XFCE4](https://www.xfce.org/) Modificado com algumas alterações sendo temas e funcionalidades,
Está versão do XFCE pode ser executada pelo App emulador de terminal **Termux**, o XFCE Cria uma interface (desktop),
Para que o usuário possa utilizar Teclado e Mouse para configura-la com Papel de parede, programas, Temas, e entre outras variedades de items, está versão
É completamente executada pelo dispositivo, **você não precisa ter acesso a Root**!, Está versão é otimizada e com aplicações leves para o uso, sem precisar utilizar muita CPU.

🚨 | **Você não precisa ter Teclado e Mouse Externo para utilizar o XFCWin,
O próprio VNC disponibiliza o teclado e Mouse virtual, más caso você tenha um teclado e Mouse Externo,
Você pode utilizar..**

# Informações do XFCWin
|Informações|Respostas|
|--|--|
|Nome Modificado| ![Status](https://img.shields.io/badge/-XFCWin-green)|
|Tamanho| ![Status](https://img.shields.io/badge/-1.6GB-orange)|
|Memória Livre recomendada| ![Status](https://img.shields.io/badge/-3~4GB_Free-cyan)|
|Versão do XFCE| ![Status](https://img.shields.io/badge/-4-cyan)|
|Versão do Script| ![Status](https://img.shields.io/badge/-v1.5.0e-orange)|
|Versão do Android| ![Status](https://img.shields.io/badge/-7.0+-green)|
|Versão do Termux| ![Status](https://img.shields.io/badge/-v0.118-cyan)|
|Arquitetura| ![Status](https://img.shields.io/badge/-32Bits_and_64Bits-blue)|
|Construção| ![Status](https://img.shields.io/badge/-Automatica-green)|
|RAM Mínima| ![Status](https://img.shields.io/badge/-2GB_Minimo-cyan)|
|RAM Recomendavel| ![Status](https://img.shields.io/badge/-4GB_Recomendavel-green)|
|ROOT| ![Status](https://img.shields.io/badge/-NO-red)|

**Nota**: Está versão não requer acesso a Root no dispositivo,
Fique tranquilo. Por Favor, utilize a última versão disponível do Termux.

**Nota 2**: Utilize a Nova versão do Termux mais recente a: **v0.118**
# Instale o Termux & VNC
Termux:
[Download](https://f-droid.org/repo/com.termux_118.apk)

VNC Viewer:
[Download](https://play.google.com/store/apps/details?id=com.realvnc.viewer.android)

# Como Baixar e Instalar
Bem, como vocês viram ali em cima, a construção do código é **automática**, sem necessidade de mover, extrair arquivos manualmente,
Aqui em baixo terá algums comandos que você necessitara para instalar o XFCWin (XFCE), para isso você precisa ter o Termux na última versão instalada,
Vá ali em cima em "Download Termux" e clique para começar a baixar.

Chega de enrolação e vamos iniciar os componentes necessários para instalação.
Primeiramente devemos verificar alguns componentes do nosso Termux, por exemplo, vá até às configurações
Do Termux e permita que ele acesse o **"Armazenamento Interno"** isso é extremamente necessário, após isso
Vamos iniciar a construção do XFCWin.

Primeiro Copie esta linha de código abaixo **(basta pressionar em cima e no clipboard do lado direito)**

    clear && cd $HOME &&
    rm -rf setup.sh
    apt update && apt upgrade -y
    apt install git && 
    git clone https://github.com/MatheusTGamerPro/XFCE4-GUI-Termux-Modification-Win10 &&
    cd XFCE4-GUI-Termux-Modification-Win10 &&
    mv setup.sh $HOME && cd $HOME && rm -rf XFCE4-GUI-Termux-Modification-Win10 &&
    bash setup.sh

Após copiar e colar este comando no Termux, ele coletara os recursos do XFCE e logo em seguida irá
Perguntar a você para *selecionar a Linguagem do script* ele está perguntando se você deseja instalar o XFCE 
em **Português-BR** ou em **English-US**,digite **1** para Português ou **2** para Inglês. Certo, continuando, agora que você selecionou a linguagem, o processo de instalação inicia
Com isso ele instala e atualiza os Pacotes do Termux e do XFCE automáticamente, está versão suporta várias Arquitetura, provavelmente a sua também funciona 🤔,
Depois de produzir e construir automaticamente a instalação, você necessitara aprender os comandos para iniciar o XFCE, más antes precisamos que você
Instale mais um App, este App e essencial, e claro.. necessário para você poder visualizar a interface, o App se chama [VNC Viewer](https://play.google.com/store/apps/details?id=com.realvnc.viewer.android),
Sim você pode instalar ele pela Google Play Store pesquisando, ou pressionando o nome dele acima, agora que você instalou ele,
Você irá se deparar com uma interface com um pequeno botão no canto inferior direito o botão **"+"** este botão serve para você poder adicionar o servidor do XFCE,
Normalmente o servidor é ``` localhost:1 ```, adicione isso no campo de Endereço/ Adress. Na senha quando você for iniciar o servidor
Irá pedir uma senha para ser criada, então fique tranquilo, após fazer está configuração, volte ao Termux depois de ter instalado completamente o XFCWin.

- (**Iniciar Servidor ↓**)

Agora para você poder iniciar o servidor de acesso para o VNC com o endereço: ```localhost:1```, Digite:

    startvnc

- (**Parar Servidor ↓**)

isso fará com que o servidor se inicie com o processo tudo automaticamente, ele irá já abrir e você poderá controlar o acesso dentro da máquina
Para você parar a execução do servidor e sair da máquina, vá no botão de **logout** ou digite o seguinte comando no Termux:

    stopvnc

Recomendo que feche o desktop pelo botão **"logout"** dentro da máquina, ele também irá parar o processo
Do servidor VNC, por favor, não faça vários comandos como: startvnc startvnc, por se não algums servidores a mais irão iniciar, então,
Sempre lembre-se de abrir E parar o servidor.

- (**Comandos da versão v1.5.0 ↓**)

Também temos algums comandos extras para melhorar o desempenho e remover alguns itens desnecessários:

    xfcwin-clean

↑Este comando fará uma limpeza de alguns cachês que ele procurar, isso deixando menos 'poluido'
O seu Termux. 😁

↓vamos supor que você acabou inserindo uma senha errada... E queira trocar ela.. Então use este comando:

    vncpasswd

Este comando ira pedir uma nova senha de Acesso para você abrir o servidor, lembre-se:
**use uma senha de mais de 6 dígitos** ela pode conter letras maiúsculas e minúsculas e numeros.

↓Você também pode verificar as informações do seu dispositivo (v1.5.0) passando o comando:

    xfcwin-info

↓Caso você queira desinstalar o XFCWin utilize o comando:

    xfcwin-remove

↑Este comando acima, fará com que seja completamente desinstalado o XFCWIN.

**[ Finalização]**

Bem, agora que você aprendeu a como instalar o XFCwin, fica mais fácil né?
Espero que tenha funcionado corretamente, caso houver algum erro vá em **'issues'** aqui na GitHub para informar
O problema que ocorreu, caso você desejar Desinstalar o XFCWin utilize o comando **xfcwin-remove**,
Este comando estará disponível na versão **1.5.0**.

# Screenshots do XFCWin
![XFCE-Win-10](https://github.com/MatheusTGamerPro/XFCE4-GUI-Termux-Modification-Win10/blob/TGP-Projects/Fotos/Screenshot_2021-12-30-12-03-27.png?raw=true "XFCE-1")
=====
![XFCE-Win-10](https://github.com/MatheusTGamerPro/XFCE4-GUI-Termux-Modification-Win10/blob/TGP-Projects/Fotos/Screenshot_2021-12-30-12-07-57.png?raw=true "XFCE-2")
=====
![XFCE-Win-10](https://github.com/MatheusTGamerPro/XFCE4-GUI-Termux-Modification-Win10/blob/TGP-Projects/Fotos/Screenshot_2021-12-30-12-03-51.png?raw=true "XFCE-3")
=====
![XFCE-Win-10](https://github.com/MatheusTGamerPro/XFCE4-GUI-Termux-Modification-Win10/blob/TGP-Projects/Fotos/Screenshot_2022-01-12-10-48-29.png)

# Informações do XFCWin e Funcionalidades
Todas as Funções e Programas suportados e pré-lançados na versão atual

**Programas já Instalados**

- [x] Navegadores: Otter-browser, netsurf
- [x] Gerenciadores: Thunar File Manager
- [x] IDLEs: Python3.10, Geany, clang
- [x] Editores: Vim-GTK, nano, leafpad, MTPaint
- [x] Players: Audacious MP3, Vídeo Player
- [x] Outros: Java 17 (JDK)

**Muitos outros programas contem no XFCWin...**

**[ Funcionalidades / Portabilidades ]**

- Versão Lite (Em Construção...)
- Jogar Games (depende)
- Som em tempo real (PulseAudio)
- Teclado e Mouse Externo
- Suporte Proot-Distro
- QTCreator

**[ Bugs Conhecidos ]**

- Se forçar uma nova instalação sobrescrevendo o já instalado, pode causar erros nos ícones.
- FireFox não suporta áudio em 32-bits (Testes) (Firefox por Ubuntu)
- Se tiver mais de 32 Processos abertos o Termux irá crashar (Android 12)

# Manutenção do Projeto
Informações de manutenção e cuidado do Projeto.
|Informações|Status| 
|--|--|
|Status|![Status](https://img.shields.io/badge/-Ativo-green)|
|Mantenedor|![Mantenedor](https://img.shields.io/badge/-MatheusTGamerPro-red)|
|Status do Script|![Script](https://img.shields.io/badge/-Instalavel-green)|
|Versão|![Version](https://img.shields.io/badge/-1.5.0e-magenta)|
|Linguagem|![Language](https://img.shields.io/badge/-Bash_5.1.12-yellow)|

# Licenses and Credits
⚠️ | Este Repositório está sendo licenciado pelo **GPL-3.0 License**,
caso você for fazer uma cópia desse repositorio, emita os Créditos juntamente com a mesma licença e os direitos devidos!

Como vocês viram, nessa versão contem alguns Temas e Cursores direnciados, os créditos dos desenvolvedores do Tema do
Windows 10 Dark & Light está abaixo

```Themes used:```

> **Crédits Author:** B00merang-Project

> **Crédits GitHub | Win Light:** https://github.com/B00merang-Project/Windows-10

> **Crédits GitHub | Win Dark:** https://github.com/B00merang-Project/Windows-10-Dark

**Cursors used:**

> **Crédits Author:** YEYUSHENGFAN258

> **Crédits GitHub:** https://github.com/yeyushengfan258/ArcStarry-Cursors

**Theme Ícons used:**

> **Crédits Author:** dindin @ G41TR3

> **Crédits GitHub:** https://github.com/dindinG41TR3/windows10iconthemes

**XFCWin Script Developer:**

> **Crédits Author:** MatheusTGP (My)

> **Crédits GitHub:** https://github.com/MatheusTGamerPro

Please, Add all of the above rights when creating a copy of the repository
Or if you are going to make a distribution.
**🎯 Thanks to all the other developers for providing the themes and icons for XFCWin.**

# Finalização
A Nova versão ```v1.5.0``` esta funcionando e com muitas novas funções
e Programas, junto com o novo Path em **Português-BR + English-US** um super combo de atualizações
contem várias novas alterações e otimizamentos, espero que tenha funcionado em seu dispositivo é executado corretamente.
