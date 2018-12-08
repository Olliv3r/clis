#!/bin/sh
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
	setterm --foreground blue
	figlet Shell
	echo "	\033[01;94m'---------------'"
	echo " 	\033[01;94m' \033[01;92m{\033[0m1\033[01;92m} \033[01;91mTermux OS \033[01;94m'"
	echo "	\033[01;94m' \033[01;92m{\033[0m2\033[01;92m} \033[01;91mOutros OS \033[01;94m'"
	echo "  \033[01;94m	'---------------'"
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
		figlet Shell
		echo "$cyan Script que personaliza seu termux do seu jeito, tudo de forma automatica $white"
		echo ''

		echo "{01} Parrot"
		echo "{02} Kali 1"
		echo "{03} Kali 2"
		echo "{04} Ubuntu  $cyan > $green Version: $red v2.5 $white"
		echo "{05} Debian"
		echo "{06} Fedora"
		echo "{07} CentOs"
		echo "{08} OpenSuse 1"
		echo "{09} OpenSuse 2"
		#echo "$white[$blue<11$blue>$white]$red Kali Oficial"
echo ""

		function menu_return() {
		echo $green"Returning..."
		bash $HOME/Shell/shell.sh
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
				cat $HOME/Shell/core/Parrot.sh > $home/.bashrc
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
				cat $HOME/Shell/core/Kali-1.sh > $home/.bashrc
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
				cat $HOME/Shell/core/Kali-2.sh > $home/.bashrc
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
				cat $HOME/Shell/core/Kali-3.sh > $home/.bashrc
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
				cat $HOMEShell/core/Ubuntu.sh > $home/.bashrc
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
				cat $HOME/Shell/core/Debian.sh > $home/.bashrc
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
				cat $HOME/Shell/core/Fedora.sh > $home/.bashrc
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
				cat $HOME/Shell/core/CentOs.sh > $home/.bashrc
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
				cat $HOME/Shell/core/OpenSuse.sh > $home/.bashrc
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
				cat $HOME/Shell/core/OpenSuse-2.sh > $home/.bashrc
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
		figlet Shell
                echo "$cyan Script que personaliza seu termux do seu jeito, tudo de forma automatica $white"
		echo ''
		echo "{01} Parrot"
		echo "{02} Kali 1"
		echo "{03} Kali 2"
                echo "{04} Ubuntu  $cyan > $green Version: $red v2.5 $white"
                echo "{05} Debian"
                echo "{06} Fedora"
                echo "{07} CentOs"
                echo "{08} OpenSuse 1"
		echo "{09} OpenSuse 2"
		echo "{10} Kali Oficial"
echo ""

                function menu_return() {
                echo $green"Returning..."
                bash /root/Shell/hell/shell.sh
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
				cat /root/Shell/core/Parrot.sh > /home/.bashrc
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
                                
				cat /root/Shell/core/Kali-1.sh > /home/.bashrc
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

                                cat /root/Shell/core/Kali-2.sh > /home/.bashrc
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

                                cat /root/Shell/core/Kali-3.sh > /home/.bashrc
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

                                cat /root/Shell/core/Ubuntu.sh > /home/.bashrc
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

                                cat /root/Shell/core/Debian.sh > /home/.bashrc
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

                                cat /root/Shell/core/Fedora.sh > /home/.bashrc
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

                                cat /root/Shell/core/CentOs.sh > /home/.bashrc
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
                                
				cat /root/Shell/core/OpenSuse.sh > /home/.bashrc
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

				cat /root/Shell/core/Kali-Default.sh > /home/.bashrc
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
