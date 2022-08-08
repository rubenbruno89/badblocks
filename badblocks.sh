#!/bin/bash
MENU () {
clear
echo
echo " MENU "
echo 
echo
echo " 1 - Teste de BadBlocks de leitura  " 
echo " 2 - Teste de BadBlocks de Gravacao"
echo 
echo
echo " S - Sair "
echo
echo
read -p "Informe o número da opção desejada : " num 
case $num in
	
	1) 
	    sudo fdisk -l
		echo
		read -p "Informe a apartição que o linux esta usado: " part
		badblocks -sv -c 1024 $part
		echo
		MENU
	;;
	
	2)		
		sudo fdisk -l
		echo
		read -p "Informe a apartição que o linux esta usado: " part
		badblocks -nsv -c 10240 $part
		echo
		MENU
		
	;;
	
	
	S) 
	    echo
		echo "Você escolheu SAIR" 	
		echo
		exit
	;;
	
	*)	
		echo
		echo "Não entendi sua opção. Carectere inesperado!"
		echo "Pressione qualquer tecla para continuar!"
		pausa
		MENU
		
		;;		
		esac

		echo 
		}
		pausa () {
			read -p "$*"
			}
			MENU
