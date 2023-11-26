#!/bin/bash

#----------------------------------------------------------------------------------------
#----------------------------------------AUTHOR------------------------------------------
#----------------------------------------------------------------------------------------
#
#  		____                 _  ____               _              _   
# 		|  _ \   __ _  _ __  (_)|  _ \  _ __  __ _ (_)__   __ ___ | |_ 
# 		| | | | / _` || '_ \ | || |_) || '__|/ _` || |\ \ / // _ \| __|
# 		| |_| || (_| || | | || ||  __/ | |  | (_| || | \ V /|  __/| |_ 
# 		|____/  \__,_||_| |_||_||_|    |_|   \__,_||_|  \_/  \___| \__|

# Colours
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

# Variables
trap ctrl_c INT

function ctrl_c() {
	clear
	echo -e "\n\t${grayColour}[${endColour}${redColour}-${endColour}${grayColour}]${endColour}${yellowColour} Hasta la proxima${endColour}"
	exit 1
	
	}

# Main

#Loading
echo -e "\n\t${grayColour}[${endColour}${greenColour}*${endColour}${grayColour}]${endColour}${yellowColour} Loading Calculator...${endColour}"
sleep 3

while true; do
clear
	#Menu
	echo -e "\n\t${yellowColour}Menu de opciones${endColour}"
	echo -e "\n\n\t\t${turquoiseColour}1${endColour}${yellowColour}. Sumar${endColour}"
	echo -e "\n\t\t${turquoiseColour}2${endColour}${yellowColour}. Restar${endColour}"
	echo -e "\n\t\t${turquoiseColour}3${endColour}${yellowColour}. Mutiplicar${endColour}"
	echo -e "\n\t\t${turquoiseColour}4${endColour}${yellowColour}. Dividir${endColour}"
	echo -e "\n\t\t${turquoiseColour}CTRL_C${endColour} ${yellowColour}--> Salir${endColour}"
	echo -e "\n\t"
	read option
	clear

# Case --> $option

	case $option in
		1)	
			echo -e "\n\t${yellowColour}Escribe el primer número${endColour}"
			read n1
			echo -e "\n\t${yellowColour}Escribe el segundo número${endColour}"
			read n2
			echo -e "El resultado es ${n1} + ${n2} = ${resultado}"
			resultado=$((n1 + n2))
			sleep 2
			echo -e "\n\t${grayColour}[${endColour}${yellowColour}+${endColour}${grayColour}]${endColour}${yellowColour} Volviendo al menu principal${endColour}"
			sleep 3
			clear
		;;
		2)	
			echo -e "\n\t${yellowColour}Escribe el primer número${endColour}"
			read n1
			echo -e "\n\t${yellowColour}Escribe el segundo número${endColour}"
			read n2
			echo -e "El resultado es ${n1} + ${n2} = ${resultado}"
			resultado=$((n1 - n2))
            echo -e "El resultado es ${n1} - ${n2} = ${resultado}"
            sleep 2
            echo -e "\n\t${grayColour}[${endColour}${yellowColour}+${endColour}${grayColour}]${endColour}${yellowColour} Volviendo al menu principal${endColour}"
            sleep 3
            clear
		;;
		3) 	
			echo -e "\n\t${yellowColour}Escribe el primer número${endColour}"
			read n1
			echo -e "\n\t${yellowColour}Escribe el segundo número${endColour}"
			read n2
			echo -e "El resultado es ${n1} + ${n2} = ${resultado}"
			resultado=$((n1 * n2))
            echo -e "El resultado es ${n1} x ${n2} = ${resultado}"
            sleep 2
            echo -e "\n\t${grayColour}[${endColour}${yellowColour}+${endColour}${grayColour}]${endColour}${yellowColour} Volviendo al menu principal${endColour}"
            sleep 3
            clear
		;;
		4)	
			echo -e "\n\t${yellowColour}Escribe el primer número${endColour}"
			read n1
			echo -e "\n\t${yellowColour}Escribe el segundo número${endColour}"
			read n2
			echo -e "El resultado es ${n1} + ${n2} = ${resultado}"
			resultado=$((n1 / n2))
            echo -e "El resultado es ${n1} : ${n2} = ${resultado}"
            sleep 2
            echo -e "\n\t${grayColour}[${endColour}${yellowColour}+${endColour}${grayColour}]${endColour}${yellowColour} Volviendo al menu principal${endColour}"
            sleep 3
            clear 
		;;

		*)	echo -e "\n\t${grayColour}[${endColour}${redColour}-${endColour}${grayColour}]${endColour}${yellowColour} Error: Debe indicar el número de la opción represendado a la izquierda${endColour}"
			echo -e "\n\t${grayColour}[${endColour}${yellowColour}·${endColour}${grayColour}]${endColour}${yellowColour} Presione ENTER para volver al menú${endColour}"
			read enter
		;;
		
	esac
done
