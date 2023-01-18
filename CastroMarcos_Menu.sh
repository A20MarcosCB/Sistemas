#!/bin/bash

#Amosar o menú coas diferentes opcións.
sair=1
until ((sair==0))
    do
#Limpar a pantalla antes de facer nada.
        clear
        echo ▀██▀─▄███▄─▀██─██▀██▀▀█
        echo ─██─███─███─██─██─██▄█
        echo ─██─▀██▄██▀─▀█▄█▀─██▀█
        echo ▄██▄▄█▀▀▀─────▀──▄██▄▄█
        echo ""

        echo "1. Identificar archivos del HOME del usuario."
        echo "2. Suma"
        echo "3. Resta"

        seleccion=""
        read -p "Selecciona una opción: " seleccion
#Tratar os casos diferentes.
        case $seleccion in
            1)
                echo ""
                echo "IDENTIFICAR ARCHIVOS DEL HOME DEL USUARIO"
                echo ""
                for file in $HOME/*
                    do
                        if [ -d $file ]
                            then
                                echo $file é un directorio.
                        elif [ -f $file ]
                            then
                                echo $file é un ficheiro.
                        else
                            echo $file non é nin un ficheiro nin un directorio.
                        fi
                    done
            ;;
            2)
                echo ""
                echo "SUMA"
                echo ""
                x=0
                y=0
                read -p "Introduce el primer número: " x
                read -p "Introduce el segundo número: " y
                resultado=$(($x + $y))
                echo "El resultado es: " $resultado
                ;;
            3)
                echo ""
                echo "RESTA"
                echo ""
                x=0
                y=0
                read -p "Introduce el primer número: " x
                read -p "Introduce el segundo número: " y
                resultado=$(($x - $y))
                echo "El resultado es: " $resultado
                ;;
            *)
                echo "Todo"
                ;;
        esac
    #Amosar unha condición de saída do programa
    #Deberá executarse todo o rato ata que o usuario decida saír do programa.
        read -p "Sair? (0 para sair): " sair
    done
    clear
echo ──────────────────────────█
echo ────────────────────────████
echo ────────────────────────█▓███
echo ─────────────────────███▓▓▓██
echo ───────────────────███▓▓▓▓▓▓██
echo ──────────────────██▓▓▓▓▓▓▓▓▓█
echo ──────────────────█▓▓▓▓▓▓▓▓▓▓█ 
echo ─────────────────█▓▓▓▓▓▓▓▓▓████
echo ─────────────────███▓▓▓▓▓▓██──█▄
echo ────────────────█▓▓██▓▓▓▓██─▄███
echo ───────────────█▒▒▒▒██▓▓▓█──█─██
echo ──────────────█▒▒▒▒▒▒██▓█───████
echo ─────────────█▒▒███▒▒▒█▓█───▀███
echo ─────────────█▒█▒▒▒█▒▒▒██──────█
echo ─────────────█▒█▒▒▒▒█▒▒██──────█
echo ─────────────█▒▒█▒▒▒▒▒▒███────██▄
echo ─────────────█▒▒▒█▒▒▒▒▒████──██▒█
echo ─────────────▀█▒▒▒█▒▒▒▒██▒████▒▒█
echo ─────▄██▄─────▀█▒▒▒▒▒▒███▒▒▒▒▒▒▒█▄
echo ─────█▓▓██─────▀█▒▒▒▒▒█▒▒▒▒▒▒▒▒▒▒█
echo ─────█▓▓▓█──────▀█▒▒▒█▒▒▒▒▒▒▒▒▒▒▒█
echo ─────██▓▓██──────▀█▒██▒▒▒▒▒▒▒▒▒▒▒█
echo ──────█▓▓▓█───────████▒▒▒▒████▒▒▒█
echo ──────██▓▓█───────████▒▒▒█▓▓▓▓█▒██
echo ───────█▓▓█──────██▓██▒▒▒█▓▓▓▓████
echo ───────█▓▓█─────██▓▓▓██▒▒█▓▓▓▓▓█▒█
echo ───────█▓▓█────██▓▓▓▓▓██▒▒█▓▓▓▓███
echo ──────▄█▓▓█────██▓▓▓▓▓▓███████▓▓▓█
echo ──────██▓▓█───██▓▓▓▓▓▓▓▓█▀──▀██▓▓█
echo ─────██▓▓██──██▓▓▓▓▓▓▓▓▓▓█────█▓▓█
echo ────██▓▓██──██▓▓▓▓▓▓▓▓▓▓▓██───█▓▓█
echo ───██▓▓██───█▓▓▓▓▓███▓▓▓▓▓█───█▓▓█
echo ──██▓▓██───██▓▓▓▓██─██▓▓▓▓▓█─█▓▓▓█
echo ─██▓▓██────█▓▓▓▓▓█───█▓▓▓▓▓▓█▓▓▓██
echo ▄█▓▓██─────█▓▓▓▓▓█───██▓▓▓▓▓▓▓▓██▀
echo █▓▓██─────██▓▓▓▓▓█────█▓▓▓▓▓▓▓██▀
echo █▓▓█──────█▓▓▓▓▓▓█────██▓▓▓▓▓██▀
echo █▓▓█─────██▓▓▓▓▓▓█─────██▓▓▓▓██▄
echo █▓▓█─────█▓▓▓▓▓▓█─────▄████▓██▓█▄
echo █▓▓█─────█▓▓▓▓▓▓█────██▓▓▓███▓▓▓█
echo █▓▓█─────█▓▓▓▓▓▓█───█▓▓▓▓▓▓▓▓▓▓██
echo █▓▓█─────█▓▓▓▓▓▓▓█─█▓▓▓▓▓▓▓▓▓▓▓██
echo █▓▓█─────██▓▓▓▓▓▓██▓▓▓▓▓▓▓▓▓▓▓██
echo █▓▓██─────█▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓██
echo ██▓▓██────█▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓██
echo ─██▓▓█▄─▄██▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓██
echo ──██▓▓█████▓▓▓▓▓▓▓▓▓▓▓▓▓▓███
echo ───██▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓██
echo ────█████████▓▓▓▓▓▓▓▓▓▓▓██▄
echo ───────────▀████▓▓▓▓▓▓▓▓▓█████▄
echo ─────────────▀██████▓▓▓▓▓▓▓▓▓▓██
echo ─────────────────▀███████▓▓▓▓▓██
echo ──────────────────────▀████████▀

