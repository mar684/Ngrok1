#!/bin/bash

while :
do

	echo -e -n "¿Quiere instalar Ngrok?

	[1] SI
	[2] NO

	>>> "
	read -r respuesta
	[ "$respuesta" == "1" ]||[ "$respuesta" == "2" ] && break
	echo -e "OPCIÓN INCORRECTA"
	sleep 2
	clear
done

case $respuesta in
        1)
		echo -e "Instalacion de Ngrok..."

		chmod 777 ngrok-stable-linux-arm.zip
		unzip ngrok-stable-linux-arm.zip
		cp ngrok $PREFIX/bin

		echo -e -n "Escriba el authtoken de ngrok >>> "
		read -r Nauthtoken
		$Nauthtoken
		clear

		echo -e "Ngrok Instalado Correctamente"
		;;
	2)
		echo -e "Gracias por usar mi script"
esac

