![ForYou](https://img.shields.io/badge/-Created_with_❤️-gray)
![Interface](https://img.shields.io/badge/-Termux_GUI_X11-cyan)
![Developed with](https://img.shields.io/badge/Construido%20em-Bash-1f425f.svg)
![Version](https://img.shields.io/badge/-Version_Script:_1.5.0_Build_1.3-blue)
![News](https://img.shields.io/badge/NOVO:_XFCWin_Installer_em_APK-Disponivel_v1.0-green)
![Support](https://img.shields.io/badge/Android_7.0+-3DDC84?style=for-the-badge&logo=android&logoColor=black)

<h1 align="center"> XFCWIN-Desktop For Termux without Root</h1>

![XFCE-Win-10](https://github.com/MatheusTGamerPro/XFCE4-GUI-Termux-Modification-Win10/blob/main/Fotos/Screenshot_2021-12-30-12-07-57.png?raw=true "XFCE with Theme Dark")

Nesse Projeto, você poderá executar um desktop no seu dispositivo Android, sem precisar de ROOT (Enraizamento),
com ele você pode acessar vários programas sendo, navegador, IDLEs, Java, Python, Entre outro programas, está interface e Leve e com uma ótima Otimização.

Execute Programas para Programar sendo em: **Java, Python, NodeJS, C++/C.**
Você pode acessar a Internet com o navegador, assistir vídeos com Vídeo Player,
Escutar música com **Audacious**e muito mais, veja a vídeos no YouTube pelo Navegador e entre várias outras funções, Logo abaixo, você terá um pequeno tutorial Completo
da instalação do XFCWin no seu Dispositivo.

<h1 align="center">Navegação</h1>

- [Sobre o Desktop](#oque-é-este-desktop)
- [Informações do Desktop](#informações-do-xfcwin)
- [Instale o instalador do XFCWIN](#baixar-instalador-do-xfcwin-em-apk)
- [instalação, tutorial e comandos](#instalação)
- [Imagens do desktop](#imagens-do-xfcwin)
- [Funcionalidades](#informações-e-funcionalidades)
- [Manutenção do Projeto](#manutenção-do-projeto)
- [Licenses & Crédits](#licenses-and-credits)
- [Finalização](#finalização)

<h1 align="center">Oque é este desktop</h1>

Está interface gráfica e uma versão do [XFCE4](https://www.xfce.org/) Modificado com algumas alterações sendo temas e funcionalidades,
Está versão do XFCE pode ser executada pelo App emulador de terminal **Termux**, o XFCE Cria uma interface (desktop),
Para que o usuário possa utilizar Teclado e Mouse para configura-la com Papel de parede, programas, Temas, e entre outras variedades de items, está versão
É completamente executada pelo dispositivo, **você não precisa ter acesso a Root**!, Está versão é otimizada e com aplicações leves para o uso, sem precisar utilizar muita CPU.

🚨 | **Você não precisa ter Teclado e Mouse Externo para utilizar o XFCWin,
O próprio VNC disponibiliza o teclado e Mouse virtual, más caso você tenha um teclado e Mouse Externo,
Você pode utilizar..**

<h1 align="center">Informações do XFCWin</h1>

|Informações|Respostas|
|--|--|
|Nome Modificado| ![Status](https://img.shields.io/badge/-XFCWin-green)|
|Tamanho| ![Status](https://img.shields.io/badge/-1.6GB-green)|
|Memória Livre recomendada| ![Status](https://img.shields.io/badge/-3~4GB_Free-green)|
|Versão do XFCE| ![Status](https://img.shields.io/badge/-4-cyan)|
|Versão do Script| ![Status](https://img.shields.io/badge/-v1.5.0e-cyan)|
|Versão do Android| ![Status](https://img.shields.io/badge/-7.0+-cyan)|
|Versão do Termux| ![Status](https://img.shields.io/badge/-v0.118-cyan)|
|Arquitetura| ![Status](https://img.shields.io/badge/-32Bits_and_64Bits-blue)|
|Construção| ![Status](https://img.shields.io/badge/-Automatica-blue)|
|RAM Mínima| ![Status](https://img.shields.io/badge/-2GB_Minimo-blue)|
|RAM Recomendavel| ![Status](https://img.shields.io/badge/-4GB_Recomendavel-blue)|
|ROOT| ![Status](https://img.shields.io/badge/-NO-red)|

**Nota**: Está versão não requer acesso a Root no dispositivo,
Fique tranquilo. Por Favor, utilize a última versão disponível do Termux.

**Nota 2**: Utilize a Nova versão do Termux mais recente a: **v0.118**

<h1 align="center">Baixar instalador do XFCWin em APK</h1>

Ola, agora você poderá pegar o script de instalação, e configurar ele do modo que desejar,
para isso você pode baixar o APK do nosso 'instalador', caso não queira baixar pelo aplicativo, faça as etapas a mais abaixo.

📥 **| XFCWin-installer em APK:** [XFCWin-Installer.apk](https://github.com/MatheusTGamerPro/XFCE4-GUI-Termux-Modification-Win10/releases/tag/v1.0-apk)

Para você que deseja coletar o script instalador pelo APK acima, é muito simples...
basta que você configure do modo que você desejar ao abrir o aplicativo, e pressionar o botão de "Pegar script de instalação", depois irá abrir o seu Termux, e você vai copiar, colar e executar.

<h1 align="center">Instalação</h1>

Abaixo você consegue instalar algums dos scripts que baixa e instala o XFCWIN automaticamente, você pode optar por instalar a versão completa com todos os recursos e programas, ou a versão Lite, que contém recursos limitados e poucos programas,
cada versão abaixo existe um idioma para você instalar (o idioma do script), na versão completa o idioma é selecionado no Terminal do Termux. Lembre-se de autorizar o aplicativo do Termux para acessar o armazenamento interno, para conseguir fazer a instalação corretamente. Acima você pode instalar a versão mais recente do Termux,
é necessário que você tenha-o sempre atualizado.

#### Versão Completa (all languages)
```bash
clear && cd $HOME &&
rm -rf setup.sh
apt update && apt upgrade -y
apt install git && 
git clone https://github.com/MatheusTGamerPro/XFCE4-GUI-Termux-Modification-Win10 &&
cd XFCE4-GUI-Termux-Modification-Win10 &&
mv setup.sh $HOME && cd $HOME && rm -rf XFCE4-GUI-Termux-Modification-Win10 &&
bash setup.sh
```

#### Versão Português (Lite)
```bash
clear && cd $HOME &&
rm -rf setup.sh
apt update && apt upgrade -y
apt install git && 
git clone https://github.com/MatheusTGamerPro/XFCE4-GUI-Termux-Modification-Win10 &&
cd XFCE4-GUI-Termux-Modification-Win10 &&
cd xfcwin-lite && bash install-lite-pt.sh
```

#### Versão Inglês (English Lite)
```bash
clear && cd $HOME &&
rm -rf setup.sh
apt update && apt upgrade -y
apt install git && 
git clone https://github.com/MatheusTGamerPro/XFCE4-GUI-Termux-Modification-Win10 &&
cd XFCE4-GUI-Termux-Modification-Win10 &&
cd xfcwin-lite && bash install-lite-en.sh
```
<h1 align="center">Iniciar o XFCWIN</h1>

Quando o XFCWIN estiver instalado, será necessário que você tenha o aplicativo VNC Viewer para acessar o desktop.
Quando você tiver finalizado a instalação, você poderá utilizar ```xfcwin-guide``` para ver algums dos comandos que você pode utilizar, o mais importante por agora é o ```startvnc```,
este comando faz com que você inicie o servidor e o desktop automáticamente. Na primeira vez que você estiver chamando esse comando, será necessário você criar uma senha maior ou igual que **6** dígitos,
você precisa digitar a senha duas vezes, uma para criar e a outra para confirmar se você digitou corretamente (a senha não será exibida enquanto você estiver digitando, não é um Bug). Após você criar a senha
automáticamente o servidor será iniciado, então agora será necessário acessar o aplicativo **VNC Viewer**.

Agora que estamos com o desktop iniciado, precisamos fazer o acesso a ele, então na tela principal do VNC Viewer percebemos que no canto inferior direito, contém um botão flutuante (+). Pressionando esse botão ele nos leva para uma tela
de adição do nosso servidor, no campo de **endereço/adress** adicionaremos o endereço IP do nosso desktop, como está sendo executado no nosso dispositivo (local), o endereço padrão é ```localhost:1```, adicionando isso no campo de endereço, será necessário colocarmos um nome para o nosso Desktop, no campo **Name** você
pode colocar o nome que desejar aquilo não irá interferir em nada. Agora que você inseriu todos os campos corretamente pressione o botão **Create** para salvar o servidor, após isso você irá para uma tela de resumo e algumas configurações a mais do servidor, na opção **Picture Quality** coloque em **Medium** (Médio), essa opção faz com que a imagem que é exibida do servidor,
fique melhor e corrija algums tons da cor, agora você pressiona o botão **CONNECT** para acessar o desktop, depois você será redirecionado para a tela de "login" do VNC, lembra aquela senha que você criou ao usar o comando **startvnc**, é aquela senha que você irá adicionar no campo que estiver pedindo a senha. Quando você digitar a senha pressione o botão lá em cima no canto direito para acessar o servidor, e pronto, provavelmente você já
deve conseguir utilizar o desktop corretamente, caso apareça senha inválida, volte para o Termux e digite o comando ```vncpasswd```, este comando faz com que você resete e crie uma nova senha.

<h1 align="center">Comandos</h1>

Abaixo contém algums dos comandos disponiveis do XFCWIN.

**Comandos:**
- ```startvnc```
- ```stopvnc```
- ```vncpasswd```
- ```xfcwin-clean```
- ```xfcwin-info```
- ```xfcwin-remove```

<h1 align="center">Imagens do XFCWin</h1>

![XFCE-Win-10](https://github.com/MatheusTGamerPro/XFCE4-GUI-Termux-Modification-Win10/blob/main/Fotos/Screenshot_2021-12-30-12-03-27.png?raw=true "XFCE-1")
-------
![XFCE-Win-10](https://github.com/MatheusTGamerPro/XFCE4-GUI-Termux-Modification-Win10/blob/main/Fotos/Screenshot_2021-12-30-12-07-57.png?raw=true "XFCE-2")
-------
![XFCE-Win-10](https://github.com/MatheusTGamerPro/XFCE4-GUI-Termux-Modification-Win10/blob/main/Fotos/Screenshot_2021-12-30-12-03-51.png?raw=true "XFCE-3")
-------
![XFCE-Win-10](https://github.com/MatheusTGamerPro/XFCE4-GUI-Termux-Modification-Win10/blob/main/Fotos/Screenshot_2022-01-12-10-48-29.png)

<h1 align="center">Informações e Funcionalidades</h1>

Abaixo veja os programas e Funcionalidades disponíveis.
<details><summary>Pressione para ver todos os programas</summary>

- **Navegadores Web:**
   - Otter-browser
   - netsurf

- **Gerenciadores:**
   - Thunar File Manager

- **IDEs & Editores:**
   - Python Tkinter
   - Geany
   - QT-Editor & QT-Designer
   - Vim-GTK
   - nano
   - leafpad

- **Música & Video:**
   - Audacious MP3
   - Vídeo Player

- **Pacotes:**
   - Java 17
   - Python 3 (3.10)

</details>
<details><summary>Pressione para ver as Funcionalidades</summary>

**[ Funcionalidades / Portabilidades ]**

- Versão Lite
- Jogar Games
- Som em tempo real (PulseAudio)
- Teclado e Mouse Externo
- Suporte Proot-Distro
- QTCreator

**[ Bugs Conhecidos ]**

- Se forçar uma nova instalação sobrescrevendo o já instalado, pode causar erros nos ícones.
- FireFox não suporta áudio em 32-bits (Testes) (Firefox por Ubuntu)
- Se tiver mais de 32 Processos abertos o Termux irá fechar (Android 12)

</details>

<h1 align="center">Manutenção do Projeto</h1>

|Informações|Status| 
|-----------|------|
|Status|![Status](https://img.shields.io/badge/-Ativo-green)|
|Mantenedor|![Mantenedor](https://img.shields.io/badge/-MatheusTGP-red)|
|Versão|![Version](https://img.shields.io/badge/-1.5.0e-red)|
|Linguagem|![Language](https://img.shields.io/badge/-Shell_Script-green)|

<h1 align="center">Trajetória</h1>

**Versão Lite:**
- [x] 1.0 (Estável)
- [ ] 2.0
- [ ] 3.0
- [ ] ...

**Versão completa:**
- [x] 1.0.0 (Beta)
- [x] 1.5.0 (Estável)
- [ ] 2.0.0

**Instalador em APK:**
- [x] 1.0 (Beta)
- [ ] 1.5
- [ ] 2.0

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

If this repository conflicts with the license terms, please create an Issue or send it to our Contact email below

Email:**matheustgpcontato@gmail.com**

Please, Add all of the above rights when creating a copy of the repository
Or if you are going to make a distribution.
**Thanks to all the other developers for providing the themes and icons for XFCWin.**

<h1 align="center">Finalização</h1>

A Nova versão ```v1.5.0``` esta funcionando e com muitas novas funções
e Programas, junto com o novo Path em **Português-BR + English-US** um super combo de atualizações
contem várias novas alterações e otimizamentos, espero que tenha funcionado em seu dispositivo é executado corretamente.

Agora é possível voce instalar o nosso novo instalador em APK, onde possibilita voce de coletar um script de instalacao
personalizado do jeito que voce preferir, a primeira versao ja esta disponivel para Dowload aqui na Releases da nossa pagina. desca aqui em baixo
para fazer o download do XFCWin-Installer.apk

**Nova atualização disponivel**: Agora é possível você baixar uma versão Lite do XFCWin.
ainda não está disponível no App instalador, más você pode instalar a versão Lite subindo aí em cima no README.
a versão atual lite v1.0, está otimizada para o armazenamento, trazendo mais espaço ao seu dispositivo, porém é removido algums programas pesados para isso.
más então é isso, até os próximos Updates!
