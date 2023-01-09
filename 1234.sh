#!/bin/bash
#===================================================
#  DESENVOLVIDO POR:  CoutySH
#===================================================
  function msg {
  BRAN='\033[1;37m' && RED='\e[31m' && GREEN='\e[32m' && YELLOW='\e[33m'
  BLUE='\e[34m' && MAGENTA='\e[35m' && MAG='\033[1;36m' && BLACK='\e[1m' && SEMCOR='\e[0m'
  case $1 in
  -ne) cor="${RED}${BLACK}" && echo -ne "${cor}${2}${SEMCOR}" ;;
  -ama) cor="${YELLOW}${BLACK}" && echo -e "${cor}${2}${SEMCOR}" ;;
  -verm) cor="${YELLOW}${BLACK}[!] ${RED}" && echo -e "${cor}${2}${SEMCOR}" ;;
  -azu) cor="${MAG}${BLACK}" && echo -e "${cor}${2}${SEMCOR}" ;;
  -verd) cor="${GREEN}${BLACK}" && echo -e "${cor}${2}${SEMCOR}" ;;
  -bra) cor="${RED}" && echo -ne "${cor}${2}${SEMCOR}" ;;
  -nazu) cor="${COLOR[6]}${BLACK}" && echo -ne "${cor}${2}${SEMCOR}" ;;
  -gri) cor="\e[5m\033[1;100m" && echo -ne "${cor}${2}${SEMCOR}" ;;
  "-bar2" | "-bar") cor="${RED}————————————————————————————————————————————————————" && echo -e "${SEMCOR}${cor}${SEMCOR}" ;;
  esac
}
function install_start {
  echo -e 'by: @Couty_SSH' >/usr/lib/telegram
  msg -bar
  echo -e "\e[1;97m           \e[5m\033[1;100m   ATUALIZAÇÃO DO SISTEMA   \033[1;37m"
  msg -bar
  echo -e "\e[1;97m           \e[5m\033[1;100m  O sistema será atualizado.\n Pode demorar um pouco e pedir algumas confirmações. \033[1;37m"
  msg -bar3
  msg -ama "\n Você deseja continuar? [S/n]: "
  read opcion
  [[ "$opcion" != @(s|S) ]] && stop_install
  clear && clear
  msg -bar
  echo -e "\e[1;97m           \e[5m\033[1;100m   ATUALIZAÇÃO DO SISTEMA   \033[1;37m"
  msg -bar
  apt install software-properties-common
  apt update -y
  apt install figlet -y
  apt install figlet toilet -y
  apt-get install figlet boxes -y
  apt-get install lolcat -y
  apt update -y
  apt upgrade -y
  clear
  msg -bar
  echo -e "\e[1;97m   \e[5m\033[1;100mATUALIZAÇÃO DO SISTEMA CONCLUÍDA COM SUCESSO!\033[1;37m"
  msg -bar
  sleep 3
  clear
}
clear
install_start
IP=$(wget -qO- ipv4.icanhazip.com)
echo "America/Sao_Paulo" > /etc/timezone > /dev/null 2>&1
ln -fs /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime > /dev/null 2>&1
dpkg-reconfigure --frontend noninteractive tzdata > /dev/null 2>&1
clear
echo -e "\E[44;1;37m     CHAVE KEY    \E[0m"
echo ""
echo -e "CoutySSH" | figlet | boxes -d stone -p a0v0 | lolcat
echo -e "                              \033[1;31mBy @Couty_SSH\033[1;36m" | lolcat
echo ""
chave=$(curl -sSL "https://raw.githubusercontent.com/CoutySSH/SSH-WEB/main/chave") &>/dev/null

read -p "DIGITE A CHAVE DE INSTALAÇÃO: " key
    
         if [[ "$key" = "$chave" ]]
         then
               echo -e "[*] VALIDANDO A CHAVE DE INSTALAÇÃO"
                sleep 2
                echo $key > /bin/chave_inst
                echo -e "[*] CHAVE ACEITA"
                sleep 2
            else
            echo "[-] ESSA CHAVE NÃO É VÁLIDA!"
            sleep 3
            clear
            cat /dev/null > ~/.bash_history && history -c
            rm /bin/ubuinst* > /dev/null 2>&1
            exit;
          fi
clear
echo ""
echo -e "CoutySSH" | figlet | boxes -d stone -p a0v0 | lolcat
echo -e "                              \033[1;31mBy @Couty_SSH\033[1;36m" | lolcat
echo ""
echo -e "\n\033[1;36mINICIANDO O MULT MENU 3.0 \n\033[1;33mAGUARDE..."
sleep 2
cd /usr/bin/
wget -q raw.githubusercontent.com/CoutySSH/Mult-Menu/main/ssh5
chmod +x ssh5
./ssh5
