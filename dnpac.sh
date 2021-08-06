#!/bin/bash

function dnpac (){
    if((EUID != 0)); then
        echo "Please run this script with sudo."
    exit 0
    else
        case $1 in

            i|install)
                echo "Performing command: pacman -S ${@:2}"
                pacman -S ${@:2}
            ;;

            r|remove)
                echo "Performing command: pacman -R ${@:2}"
                pacman -R ${@:2}
            ;;

            u|update)
                echo "Performing command: pacman -Syu"
                pacman -Syu
            ;;
            c|clean)
                echo "Performing command: paccache"
                paccache -r
            ;;
            h|help)
                echo "Operations:"
                echo "{i install} <packages>"
                echo "{r remove} <packages>"
                echo "{u update}"
                echo "{c clean} <packages>"
                echo "{h help} <packages>"
            ;;
            *)
                echo "Unknown argument, no command performed."
            ;;
            esac
    exit
    fi
}
dnpac $@



