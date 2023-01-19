#!/bin/bash

#Amosar o menú coas diferentes opcións.
sair=1
function f.menu(){
        echo ""
        echo ███╗░░░███╗███████╗███╗░░██╗██╗░░░██╗
        echo ████╗░████║██╔════╝████╗░██║██║░░░██║
        echo ██╔████╔██║█████╗░░██╔██╗██║██║░░░██║
        echo ██║╚██╔╝██║██╔══╝░░██║╚████║██║░░░██║
        echo ██║░╚═╝░██║███████╗██║░╚███║╚██████╔╝
        echo ╚═╝░░░░░╚═╝╚══════╝╚═╝░░╚══╝░╚═════╝░
        echo ""

        echo "1. Identificar archivos del HOME del usuario."
        echo "2. Realizar una suma"
        echo "3. Realizar una resta"
        echo "4. Identificar el procesador del equipo."
        echo "5. Crear notas."
        echo ""
}
function f.identificar(){
    clear
    echo ""
    echo ██╗░░██╗░█████╗░███╗░░░███╗███████╗
    echo ██║░░██║██╔══██╗████╗░████║██╔════╝
    echo ███████║██║░░██║██╔████╔██║█████╗░░
    echo ██╔══██║██║░░██║██║╚██╔╝██║██╔══╝░░
    echo ██║░░██║╚█████╔╝██║░╚═╝░██║███████╗
    echo ╚═╝░░╚═╝░╚════╝░╚═╝░░░░░╚═╝╚══════╝
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
    echo ""
}
function f.suma(){
    clear
    echo ""
    echo ░██████╗██╗░░░██╗███╗░░░███╗░█████╗░
    echo ██╔════╝██║░░░██║████╗░████║██╔══██╗
    echo ╚█████╗░██║░░░██║██╔████╔██║███████║
    echo  ░╚═══██╗██║░░░██║██║╚██╔╝██║██╔══██║
    echo ██████╔╝╚██████╔╝██║░╚═╝░██║██║░░██║
    echo ╚═════╝░░╚═════╝░╚═╝░░░░░╚═╝╚═╝░░╚═╝
    echo ""
    echo "REALIZAR UNA SUMA"
    echo ""
                x=0
                y=0
                read -p "Introduce el primer número: " x
                read -p "Introduce el segundo número: " y
                resultado=$(($x + $y))
                echo "El resultado es: " $resultado
}
function f.resta(){
    clear
    echo ""
    echo ██████╗░███████╗░██████╗████████╗░█████╗░
    echo ██╔══██╗██╔════╝██╔════╝╚══██╔══╝██╔══██╗
    echo ██████╔╝█████╗░░╚█████╗░░░░██║░░░███████║
    echo ██╔══██╗██╔══╝░░░╚═══██╗░░░██║░░░██╔══██║
    echo ██║░░██║███████╗██████╔╝░░░██║░░░██║░░██║
    echo ╚═╝░░╚═╝╚══════╝╚═════╝░░░░╚═╝░░░╚═╝░░╚═
    echo ""
    echo "REALIZAR UNA RESTA"
    echo ""
    x=0
    y=0
    read -p "Introduce el primer número: " x
    read -p "Introduce el segundo número: " y
    resultado=$(($x - $y))
    echo "El resultado es: " $resultado
}
function f.procesador(){
    clear
    echo ""
    echo ░█████╗░██████╗░██╗░░░██╗
    echo ██╔══██╗██╔══██╗██║░░░██║
    echo ██║░░╚═╝██████╔╝██║░░░██║
    echo ██║░░██╗██╔═══╝░██║░░░██║
    echo ╚█████╔╝██║░░░░░╚██████╔╝
    echo ░╚════╝░╚═╝░░░░░░╚═════╝░
    echo ""
    echo "IDENTIFICAR EL PROCESADOR DEL EQUIPO"
    echo ""
    grep -w Modelo lscpu
}
function f.notas(){
            clear
            echo ""
            echo ███╗░░██╗░█████╗░████████╗░█████╗░░██████╗
            echo ████╗░██║██╔══██╗╚══██╔══╝██╔══██╗██╔════╝
            echo ██╔██╗██║██║░░██║░░░██║░░░███████║╚█████╗░
            echo ██║╚████║██║░░██║░░░██║░░░██╔══██║░╚═══██╗
            echo ██║░╚███║╚█████╔╝░░░██║░░░██║░░██║██████╔╝
            echo ╚═╝░░╚══╝░╚════╝░░░░╚═╝░░░╚═╝░░╚═╝╚═════╝░
            echo ""
            echo "CREAR NOTAS"
            echo ""
            
            if [ -e Notas ]
                then
                    echo ""
                else
                    mkdir Notas
                    echo ""
            fi
            echo "Tienes las siguientes notas: "
            echo ""
            ls Notas
            echo ""
            read -p "Nombre de la nota (sin extensión): " nota
            echo ""
            
            if [ -e Notas/$nota.txt ]
                then
                    echo "Nombre ya existente."
                    echo ""
                else
                    touch Notas/$nota.txt
                    read -p "Contenido de la nota: " contenido
                    echo $contenido > Notas/$nota.txt
                    echo ""
            fi
            
            
}
until ((sair==0))
    do
#Limpar a pantalla antes de facer nada.
        clear
        f.menu

        seleccion=""
        read -p "Selecciona una opción: " seleccion
#Tratar os casos diferentes.
        case $seleccion in
            1)
                f.identificar
                ;;
            2)
                f.suma
                ;;
            3)
                f.resta
                ;;
            4)
                f.procesador
                ;;
            5)
                f.notas
                ;;
            *)
                clear
                echo ╭━━━╮
                echo ┃╭━━╯
                echo ┃╰━━┳━┳━┳━━┳━╮
                echo ┃╭━━┫╭┫╭┫╭╮┃╭╯
                echo ┃╰━━┫┃┃┃┃╰╯┃┃
                echo ╰━━━┻╯╰╯╰━━┻╯
                echo ""
                echo "Selecciona una de las anteriores opciones."
                echo ""
                ;;
        esac
    #Amosar unha condición de saída do programa
    #Deberá executarse todo o rato ata que o usuario decida saír do programa.
        read -p "Sair? (0 para sair): " sair
    done
    clear
    echo ""
    echo ░██████╗░██████╗░░█████╗░░█████╗░██╗░█████╗░░██████╗
    echo ██╔════╝░██╔══██╗██╔══██╗██╔══██╗██║██╔══██╗██╔════╝
    echo ██║░░██╗░██████╔╝███████║██║░░╚═╝██║███████║╚█████╗░
    echo ██║░░╚██╗██╔══██╗██╔══██║██║░░██╗██║██╔══██║░╚═══██╗
    echo ╚██████╔╝██║░░██║██║░░██║╚█████╔╝██║██║░░██║██████╔╝
    echo ░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝░╚════╝░╚═╝╚═╝░░╚═╝╚═════╝
