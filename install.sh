#!/bin/bash

if (( $EUID != 0 )); then
    echo "Please run as root"
    exit
fi

clear

repair(){
    bash <(curl https://raw.githubusercontent.com/Ryzen-DevZ/ThemePterodactyl/main/repair.sh)
}

echo "Copyright (c) 2025 unkweal"
echo "Этот скрипт является бесплатным. Вы можете сливать его или изменять."
echo ""
echo "Discord: https://discord.gg/A6m8usQUsf"
echo "Website: https://store.lamebox.us"
echo ""
echo "[1] Воостановить панель Pterodactyl"
echo "[2] Выйти"

read -p "Пожалуйста, введите цифру: " choice
if [ $choice == "1" ]
    then
    repair
fi
if [ $choice == "2" ]
    then
    exit
fi
