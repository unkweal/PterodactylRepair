#!/bin/bash

if (( $EUID != 0 )); then
    echo "Please run as root"
    exit
fi

clear

repair(){
    bash <(curl https://raw.githubusercontent.com/Ryzen-DevZ/ThemePterodactyl/main/repair.sh)
}

echo "Copyright (c) 2024 LameBox | https://discord.gg/A6m8usQUsf"
echo "Эта программа является бесплатной. Вы можете сливать ее или изменять."
echo ""
echo "Discord: https://discord.gg/A6m8usQUsf"
echo "Website: https://store.lamebox.us"
echo ""
echo "[3] Воостановить панель Pterodactyl"
echo "[4] Выйти"

read -p "Пожалуйста, введите цифру: " choice
if [ $choice == "1" ]
    then
    repair
fi
if [ $choice == "2" ]
    then
    exit
fi
