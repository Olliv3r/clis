#!/usr/bin/env bash
# Customização do pront do shell
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
	sh core/banner.sh
	echo ''
	echo -e "\E[m		1 -> \E[31;1m[\E[36;1mTermux\E[31;1m]"
	echo -e "\E[m		2 -> \E[31;1m[\E[36;1mOutros\E[31;1m]"
	echo -e "\E[m		3 -> \E[31;1m[\E[36;1mCustom\E[31;1m]"
	echo ''
	echo '		V1.4'
}

while true;do
menuOs

echo -e '\n'

echo -n -e "\E[34;1m--[\E[31;1mQual Seu Sistema\E[34;1m]--\E[36;1m[\E[32;1m+\E[36;1m] \E[m: "
read resp

case $resp in
	"1") echo "Termux"
		
		clear
		setterm --foreground white
		sh core/banner-2.sh
		echo ''

		bash core/menu-1.sh
		
		function menu_return() {
			echo $green"Returning..."
			bash $HOME/Shell/shell.sh
		}

		menu() {
			echo -n $blue"Shell> "$yellow
			read resp
		}

		echo -n $blue"shell> "$red
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
			'return' | 'r')
		
				./shell.sh;;

			*)
		esac;;

	"2") echo "Outros OS"
	
		clear
		setterm --foreground white
		sh core/banner-2.sh
		bash core/menu-2.sh

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
			'return' | 'r')
				
				./shell.sh;;
			*)
                esac;;

	'03' | '3')
		while true;do
		sh ./.custom.sh
		done
		setterm --foreground white;;
	*)
esac
done
