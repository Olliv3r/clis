#!/bin/bash
# PS1 variavel de ambiente
# Autor: olive > canal >> tio olive

red=`setterm --foreground red`
green=`setterm --foreground green`
yellow=`setterm --foreground yellow`
cyan=`setterm --foreground cyan`
blue=`setterm --foreground blue`
white=`setterm --foreground white`
clear

menuOs() {
	setterm --foreground white
	echo "--------------"
	echo "[1] Termux OS"
	echo "[2] Outros Sistemas Linux"
	echo "--------------"
}

menuOs

echo ''

echo "Qual Seu Systema Os [+]"
echo ''
read resp

case $resp in
	"1") echo "Termux"
		clear
		setterm --foreground white
		figlet A-shell
		echo "$cyan Script que personaliza seu termux do seu jeito, tudo de forma automatica $white"
		echo ''

		echo "[01] Parrot"
		echo "[02] Kali 1"
		echo "[03] Kali 2"
		echo "[04] Ubuntu  $cyan > $green Version: $red v2.2 $white"
		echo "[05] Debian"
		echo "[06] Fedora"
		echo "[07] CentOs"
		echo "[08] OpenSuse 1"
		echo "[09] OpenSuse 2"
		#echo "$white[$blue<11$blue>$white]$red Kali Oficial"
echo ""

		function menu_return() {
		echo $green"Returning..."
		bash $HOME/A-shell/a-shell.sh
		}

		menu() {
			echo -n $blue"Ps1> "$yellow
			read resp
		}

		echo -n $blue"A-shell> "$red
		read resp

		case $resp in
			"1" | "01") echo ''
				echo -n $green"SeuNome: "$red
				read SeuNome
				echo -n $green"NomeDaMaquina: "$red
				read NomeDaMaquina
				home=$HOME
				touch $home/.bashrc
				cat $HOME/A-shell/core/Parrot.sh > $home/.bashrc
				sed -i "s/SeuNome/$SeuNome/g" $home/.bashrc
				sed -i "s/NomeMachine/$NomeDaMaquina/g" $home/.bashrc
				echo $green"Configurando..."
				sleep 2
				echo $yellow"Abra uma nova aba do termux para visualizar sua nova configuracao da variavel de ambiente PS1 "
				menu
				case $resp in
					"return" | "r") echo ''
						menu_return;;
					"exit" | "e") echo ''
						exit
						echo by;;
					*)
				esac;;

			"2" | "02") echo ''
				echo -n $green"SeuNome: "$red
				read SeuNome
				echo -n $green"NomeDaMaquina: "$red
				read NomeDaMaquina
				home=$HOME
				touch $home/.bashrc
				cat $HOME/A-shell/core/Kali-1.sh > $home/.bashrc
				sed -i "s/SeuNome/$SeuNome/g" $home/.bashrc
				sed -i "s/NomeMachine/$NomeDaMaquina/g" $home/.bashrc
				echo $green"Configurando..."
				sleep 2
				echo $yellow"Abra uma nova aba do termux para visualizar sua nova configuracao da variavel de ambiente PS1 "
				menu
				case $resp in
					"return" | "r") echo ''
						menu_return;;
					"exit" | "e") echo ''
						exit
						echo by;;
					*)
				esac;;

			"3" | "03") echo ''
				echo -n $green"SeuNome: "$red
				read SeuNome
				echo -n $green"NomeDaMaquina: "$red
				read NomeDaMaquina
				home=$HOME
				touch $home/.bashrc
				cat $HOME/A-shell/core/Kali-2.sh > $home/.bashrc
				sed -i "s/SeuNome/$SeuNome/g" $home/.bashrc
				sed -i "s/NomeMachine/$NomeDaMaquina/g" $home/.bashrc
				echo $green"Configurando..."
				sleep 2
				echo $yellow"Abra uma nova aba do termux para visualizar sua nova configuracao da variavel de ambiente PS1 "
				menu
				case $resp in
					"return" | "r") echo ''
						menu_return;;
					"exit" | "e") echo ''
						exit
						echo by;;
					*)
				esac;;

			"4" | "04") echo ''
				echo -n $green"SeuNome: "$red
				read SeuNome
				echo -n $green"NomeDaMaquina: "$red
				read NomeDaMaquina
				home=$HOME
				touch $home/.bashrc
				cat $HOME/A-shell/core/Kali-3.sh > $home/.bashrc
				sed -i "s/SeuNome/$SeuNome/g" $home/.bashrc
				sed -i "s/NomeMachine/$NomeDaMaquina/g" $home/.bashrc
				echo $green"Configurando..."
				sleep 2
				echo $yellow"Abra uma nova aba do termux para visualizar sua nova configuracao da variavel de ambiente PS1 "
				menu
				case $resp in
					"return" | "r") echo ''
						menu_return;;
					"exit" | "e") echo ''
						exit
						echo by;;
					*)
				esac;;

			"5" | "05") echo ''
				echo -n $green"SeuNome: "$red
				read SeuNome
				echo -n $green"NomeDaMaquina: "$red
				read NomeDaMaquina
				home=$HOME
				touch $home/.bashrc
				cat $HOME/A-shell/core/Ubuntu.sh > $home/.bashrc
				sed -i "s/SeuNome/$SeuNome/g" $home/.bashrc
				sed -i "s/NomeMachine/$NomeDaMaquina/g" $home/.bashrc
				echo $green"Configurando..."
				sleep 2
				echo $yellow"Abra uma nova aba do termux para visualizar sua nova configuracao da variavel de ambiente PS1 "
				menu
				case $resp in
					"return" | "r") echo ''
						menu_return;;
					"exit" | "e") echo ''
						exit
						echo by;;
					*)
				esac;;

			"6" | "06") echo ''
				echo -n $green"SeuNome: "$red
				read SeuNome
				echo -n $green"NomeDaMaquina: "$red
				read NomeDaMaquina
				home=$HOME
				touch $home/.bashrc
				cat $HOME/A-shell/core/Debian.sh > $home/.bashrc
				sed -i "s/SeuNome/$SeuNome/g" $home/.bashrc
				sed -i "s/NomeMachine/$NomeDaMaquina/g" $home/.bashrc
				echo $green"Configurando..."
				sleep 2
				echo $yellow"Abra uma nova aba do termux para visualizar sua nova configuracao da variavel de ambiente PS1 "
				menu
				case $resp in
					"return" | "r") echo ''
						menu_return;;
					"exit" | "e") echo ''
						exit
						echo by;;
					*)
				esac;;

			"7" | "07") echo ''
				echo -n $green"SeuNome: "$red
				read SeuNome
				echo -n $green"NomeDaMaquina: "$red
				read NomeDaMaquina
				home=$HOME
				touch $home/.bashrc
				cat $HOME/A-shell/core/Fedora.sh > $home/.bashrc
				sed -i "s/SeuNome/$SeuNome/g" $home/.bashrc
				sed -i "s/NomeMachine/$NomeDaMaquina/g" $home/.bashrc
				echo $green"Configurando..."
				sleep 2
				echo $yellow"Abra uma nova aba do termux para visualizar sua nova configuracao da variavel de ambiente PS1 "
				menu
				case $resp in
					"return" | "r") echo ''
						menu_return;;
					"exit" | "e") echo ''
						exit
						echo by;;
					*)
				esac;;

			"8" | "08") echo ''
				echo -n $green"SeuNome: "$red
				read SeuNome
				echo -n $green"NomeDaMaquina: "$red
				read NomeDaMaquina
				home=$HOME
				touch $home/.bashrc
				cat $HOME/A-shell/core/CentOs.sh > $home/.bashrc
				sed -i "s/SeuNome/$SeuNome/g" $home/.bashrc
				sed -i "s/NomeMachine/$NomeDaMaquina/g" $home/.bashrc
				echo $green"Configurando..."
				sleep 2
				echo $yellow"Abra uma nova aba do termux para visualizar sua nova configuracao da variavel de ambiente PS1 "
				menu
				case $resp in
					"return" | "r") echo ''
						menu_return;;
					"exit" | "e") echo ''
						exit
						echo by;;
					*)
				esac;;

			"9" | "09") echo ''
				echo -n $green"SeuNome: "$red
				read SeuNome
				echo -n $green"NomeDaMaquina: "$red
				read NomeDaMaquina
				home=$HOME
				touch $home/.bashrc
				cat $HOME/A-shell/core/OpenSuse.sh > $home/.bashrc
				sed -i "s/SeuNome/$SeuNome/g" $home/.bashrc
				sed -i "s/NomeMachine/$NomeDaMaquina/g" $home/.bashrc
				echo $green"Configurando..."
				sleep 2
				echo $yellow"Abra uma nova aba do termux para visualizar sua nova configuracao da variavel de ambiente PS1 "
				menu
				case $resp in
					"return" | "r") echo ''
						menu_return;;
					"exit" | "e") echo ''
						exit
						echo by;;
					*)
				esac;;

			"10") echo ''
				echo -n $green"SeuNome: "$red
				read SeuNome
				echo -n $green"NomeDaMaquina: "$red
				read NomeDaMaquina
				home=$HOME
				touch $home/.bashrc
				cat $HOME/A-shell/core/OpenSuse-2.sh > $home/.bashrc
				sed -i "s/SeuNome/$SeuNome/g" $home/.bashrc
				sed -i "s/NomeMachine/$NomeDaMaquina/g" $home/.bashrc
				echo $green"Configurando..."
				sleep 2
				echo $yellow"Abra uma nova aba do termux para visualizar sua nova configuracao da variavel de ambiente PS1 "
				menu
				case $resp in
					"return" | "r") echo ''
				menu_return;;
					"exit" | "e") echo ''
						exit
						echo by;;
					*)
				esac;;
			"sair" | "exit") echo ''
				exit
				logout;;
			*)
		esac;;

	"2") echo "Outros OS"
		clear
		setterm --foreground white
		figlet A-shell
                echo "$cyan Script que personaliza seu termux do seu jeito, tudo de forma automatica $white"
		echo ''
		echo "[01] Parrot"
		echo "[02] Kali 1"
		echo "[03] Kali 2"
                echo "[04] Ubuntu  $cyan > $green Version: $red v2.2 $white"
                echo "[05] Debian"
                echo "[06] Fedora"
                echo "[07] CentOs"
                echo "[08] OpenSuse 1"
		echo "[09] OpenSuse 2"
		echo "[10] Kali Oficial"
echo ""

                function menu_return() {
                echo $green"Returning..."
                bash /root/A-shell/a-shell.sh
                }

                menu() {
                        echo -n $blue"Ps1> "$yellow
                        read resp
                }

                echo -n $blue"A-shell> "$red
		read resp

		case $resp in
                        "1" | "01") echo ''
                        	echo -n $green"SeuNome: "$red
                        	read SeuNome
                        	echo -n $green"NomeDaMaquina: "$red
                                read NomeDaMaquina

                                touch /home/.bashrc
				cat /root/A-shell/core/Parrot.sh > /home/.bashrc
                                sed -i "s/SeuNome/$SeuNome/g" /root/.bashrc
                                sed -i "s/NomeMachine/$NomeDaMaquina/g" /home/.bashrc
                                echo $green"Configurando..."
                                sleep 2
                                echo $yellow"Abra uma nova aba do termux para visualizar sua nova configuracao da variavel de ambiente PS1 "
                                menu
                                case $resp in
                                        "return" | "r") echo ''
                                                menu_return;;
                                        "exit" | "e") echo ''
                                                exit
                                                echo by;;
                                        *)
                                esac;;

				"2" | "02") echo ''
                                echo -n $green"SeuNome: "$red
                                read SeuNome
                                echo -n $green"NomeDaMaquina: "$red
                                read NomeDaMaquina
                                
                                touch /home/.bashrc
                                
				cat /root/A-shell/core/Kali-1.sh > /home/.bashrc
                                sed -i "s/SeuNome/$SeuNome/g" /home/.bashrc
                                sed -i "s/NomeMachine/$NomeDaMaquina/g" /home/.bashrc
                                echo $green"Configurando..."
                                sleep 2
                                echo $yellow"Abra uma nova aba do termux para visualizar sua nova configuracao da variavel de ambiente PS1 "
                                menu
                                case $resp in
                                        "return" | "r") echo ''
                                                menu_return;;
                                        "exit" | "e") echo ''
                                                exit
                                                echo by;;
                                        *)
                                esac;;
				"3" | "03") echo ''
                                echo -n $green"SeuNome: "$red
                                read SeuNome
                                echo -n $green"NomeDaMaquina: "$red
                                read NomeDaMaquina
                                
                                touch /home/.bashrc

                                cat /root/A-shell/core/Kali-2.sh > /home/.bashrc
                                sed -i "s/SeuNome/$SeuNome/g" /home/.bashrc
                                sed -i "s/NomeMachine/$NomeDaMaquina/g"  /home/.bashrc
                                echo $green"Configurando..."
                                sleep 2
                                echo $yellow"Abra uma nova aba do termux para visualizar sua nova configuracao da variavel de ambiente PS1 "
                                menu
                                case $resp in
                                        "return" | "r") echo ''
                                                menu_return;;
                                        "exit" | "e") echo ''
                                                exit
                                                echo by;;
                                        *)
                                esac;;

				"4" | "04") echo ''
                                echo -n $green"SeuNome: "$red
                                read SeuNome
                                echo -n $green"NomeDaMaquina: "$red
                                read NomeDaMaquina
                                
                                touch /home/.bashrc

                                cat /root/A-shell/core/Kali-3.sh > /home/.bashrc
                                sed -i "s/SeuNome/$SeuNome/g" /root/.bashrc
                                sed -i "s/NomeMachine/$NomeDaMaquina/g" /home/.bashrc
                                echo $green"Configurando..."
                                sleep 2
                                echo $yellow"Abra uma nova aba do termux para visualizar sua nova configuracao da variavel de ambiente PS1 "
                                menu
                                case $resp in
                                        "return" | "r") echo ''
                                                menu_return;;
                                        "exit" | "e") echo ''
                                                exit
                                                echo by;;
                                        *)
                                esac;;

				"5" | "05") echo ''
                                echo -n $green"SeuNome: "$red
                                read SeuNome
                                echo -n $green"NomeDaMaquina: "$red
                                read NomeDaMaquina
                        
                                touch /home/.bashrc

                                cat /root/A-shell/core/Ubuntu.sh > /home/.bashrc
                                sed -i "s/SeuNome/$SeuNome/g" /home/.bashrc
                                sed -i "s/NomeMachine/$NomeDaMaquina/g" /home/.bashrc
                                echo $green"Configurando..."
                                sleep 2
                                echo $yellow"Abra uma nova aba do termux para visualizar sua nova configuracao da variavel de ambiente PS1 "
                                menu
                                case $resp in
                                        "return" | "r") echo ''
                                                menu_return;;
                                        "exit" | "e") echo ''
                                                exit
                                                echo by;;
                                        *)
                                esac;;

				"6" | "06") echo ''
                                echo -n $green"SeuNome: "$red
                                read SeuNome
                                echo -n $green"NomeDaMaquina: "$red
                                read NomeDaMaquina
                                
                                touch /home/.bashrc

                                cat /root/A-shell/core/Debian.sh > /home/.bashrc
                                sed -i "s/SeuNome/$SeuNome/g" /home/.bashrc
                                sed -i "s/NomeMachine/$NomeDaMaquina/g" /home/.bashrc
                                echo $green"Configurando..."
                                sleep 2
                                echo $yellow"Abra uma nova aba do termux para visualizar sua nova configuracao da variavel de ambiente PS1 "
                                menu
                                case $resp in
                                        "return" | "r") echo ''
                                                menu_return;;
                                        "exit" | "e") echo ''
                                                exit
                                                echo by;;
                                        *)
                                esac;;

				"7" | "07") echo ''
                                echo -n $green"SeuNome: "$red
                                read SeuNome
                                echo -n $green"NomeDaMaquina: "$red
                                read NomeDaMaquina
                                
                                touch /home/.bashrc

                                cat /root/A-shell/core/Fedora.sh > /home/.bashrc
                                sed -i "s/SeuNome/$SeuNome/g" /home/.bashrc
                                sed -i "s/NomeMachine/$NomeDaMaquina/g" /home/.bashrc
                                echo $green"Configurando..."
                                sleep 2
                                echo $yellow"Abra uma nova aba do termux para visualizar sua nova configuracao da variavel de ambiente PS1 "
                                menu
                                case $resp in
                                        "return" | "r") echo ''
                                                menu_return;;
                                        "exit" | "e") echo ''
                                                exit
                                                echo by;;
                                        *)
                                esac;;

				"8" | "08") echo ''
                                echo -n $green"SeuNome: "$red
                                read SeuNome
                                echo -n $green"NomeDaMaquina: "$red
                                read NomeDaMaquina
                        
                                touch /home/.bashrc

                                cat /root/A-shell/core/CentOs.sh > /home/.bashrc
                                sed -i "s/SeuNome/$SeuNome/g" /home/.bashrc
                                sed -i "s/NomeMachine/$NomeDaMaquina/g" /home/.bashrc
                                echo $green"Configurando..."
                                sleep 2
                                echo $yellow"Abra uma nova aba do termux para visualizar sua nova configuracao da variavel de ambiente PS1 "
                                menu
                                case $resp in
                                        "return" | "r") echo ''
                                                menu_return;;
                                        "exit" | "e") echo ''
                                                exit
                                                echo by;;
                                        *)
                                esac;;

				"9" | "09") echo ''
                                echo -n $green"SeuNome: "$red
                                read SeuNome
                                echo -n $green"NomeDaMaquina: "$red
                                read NomeDaMaquina
                                
                                touch /home/.bashrc
                                
				cat /root/A-shell/core/OpenSuse.sh > /home/.bashrc
                                sed -i "s/SeuNome/$SeuNome/g" /home/.bashrc
                                sed -i "s/NomeMachine/$NomeDaMaquina/g" /home/.bashrc
                                echo $green"Configurando..."
                                sleep 2
                                echo $yellow"Abra uma nova aba do termux para visualizar sua nova configuracao da variavel de ambiente PS1 "
                                menu
                                case $resp in
                                        "return" | "r") echo ''
                                                menu_return;;
                                        "exit" | "e") echo ''
                                                exit
                                                echo by;;
                                        *)
                                esac;;
				
				"10") echo ''
                                echo -n $green"SeuNome: "$red
                                read SeuNome
                                echo -n $green"NomeDaMaquina: "$red
                                read NomeDaMaquina

                                touch /home/.bashrc

				cat /root/A-shell/core/Kali-Default.sh > /home/.bashrc
                                sed -i "s/SeuNome/$SeuNome/g" /home/.bashrc
                                sed -i "s/NomeMachine/$NomeDaMaquina/g" /home/.bashrc
                                echo $green"Configurando..."
                                sleep 2
                                echo $yellow"Abra uma nova aba do termux para visualizar sua nova configuracao da variavel de ambiente PS1 "
                                menu
                                case $resp in
                                        "return" | "r") echo ''
                                menu_return;;
                                        "exit" | "e") echo ''
                                                exit
                                                echo by;;
                                        *)
                                esac;;



                        "sair" | "exit") echo ''
                                exit
                                logout;;
                        *)
                esac;;

	*)
esac
