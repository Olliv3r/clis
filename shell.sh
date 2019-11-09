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
	clear
	setterm --foreground white
	sh core/banner.sh
	echo ''
	echo -e "\t\t1 = System Termux OS"
	echo -e "\t\t2 = Others"
	echo -e "\t\t3 = Custom"
	echo -ne "\n\t\tby: olive. v1.5"
}

main() {
# while 1
while true;do
menuOs

echo -e '\n'

echo -ne "\033[01;92mГ\033[01;91mShell\033[0m_\033[01;96m>> \033[0m"
read resp

case $resp in
	"1") echo "Termux"

		while true;do
		clear
		setterm --foreground white
		sh core/banner-2.sh
		echo ''
		
		# while 2
	
		bash core/menu-1.sh
		
		function menu_return() {
			echo $green"Returning..."
			bash $HOME/Shell/shell.sh
		}

		menu() {
			echo -ne "\033[01;92mГ\033[01;91mShell\033[0m_\033[01;96m>> \033[0m"
			read resp
		}

		echo -ne "\033[01;92mГ\033[01;91mShell\033[0m_\033[01;96m>> \033[0m"
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
				cat $HOME/Shell/core/Ubuntu.sh > $home/.bashrc
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

			"6" | "06") echo ''
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

			"7" | "07") echo ''
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

			"8" | "08") echo ''
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

			"9" | "09") echo ''
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


			"10") echo ''
				echo -n $green"SeuNome: "$red
				read SeuNome
				echo -n $green"NomeDaMaquina: "$red
				read NomeDaMaquina
				home=$HOME
				touch $home/.bashrc
				cat $HOME/Shell/core/Archlinux.sh > $home/.bashrc
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
			'return' | 'return')
		
				./shell.sh;;

			*)
		esac
	done;;
	
	"2") echo "Outros OS"
		while true;do
		clear
		setterm --foreground white
		sh core/banner-2.sh
		bash core/menu-2.sh

                function menu_return() {
			echo $green"Returning..."
			bash ~/Shell/hell/shell.sh
                }

                menu() {
                        echo -ne "\033[01;92mГ\033[01;91mShell\033[0m_\033[01;96m>> \033[0m"
                        read resp
                }

                echo -ne "\033[01;92mГ\033[01;91mShell\033[0m_\033[01;96m>> \033[0m"
		read resp
	
		case $resp in
                        "1" | "01") echo ''
                        	echo -n $green"SeuNome: "$red
                        	read SeuNome
                        	echo -n $green"NomeDaMaquina: "$red
                                read NomeDaMaquina

                                touch ~/.bashrc
				cat ~/Shell/core/Parrot.sh > ~/.bashrc
                                sed -i "s/SeuNome/$SeuNome/g" ~/.bashrc
                                sed -i "s/NomeMachine/$NomeDaMaquina/g" ~/.bashrc
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
                                
                                touch ~/.bashrc
                                
				cat /root/Shell/core/Kali-1.sh > ~/.bashrc
                                sed -i "s/SeuNome/$SeuNome/g" ~/.bashrc
                                sed -i "s/NomeMachine/$NomeDaMaquina/g" ~/.bashrc
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
                                
                                touch ~/.bashrc

                                cat ~/Shell/core/Kali-2.sh > ~/.bashrc
                                sed -i "s/SeuNome/$SeuNome/g" ~/.bashrc
                                sed -i "s/NomeMachine/$NomeDaMaquina/g"  ~/.bashrc
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
                                
                                touch ~/.bashrc

                                cat ~/Shell/core/Kali-3.sh > ~/.bashrc
                                sed -i "s/SeuNome/$SeuNome/g" ~/.bashrc
                                sed -i "s/NomeMachine/$NomeDaMaquina/g" ~/.bashrc
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
                        
                                touch ~/.bashrc

                                cat ~/Shell/core/Ubuntu.sh > ~/.bashrc
                                sed -i "s/SeuNome/$SeuNome/g" ~/.bashrc
                                sed -i "s/NomeMachine/$NomeDaMaquina/g" ~/.bashrc
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
                                
                                touch ~/.bashrc

                                cat ~/Shell/core/Debian.sh > ~/.bashrc
                                sed -i "s/SeuNome/$SeuNome/g" ~/.bashrc
                                sed -i "s/NomeMachine/$NomeDaMaquina/g" ~/.bashrc
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
                                
                                touch ~/.bashrc

                                cat ~/Shell/core/Fedora.sh > ~/.bashrc
                                sed -i "s/SeuNome/$SeuNome/g" ~/.bashrc
                                sed -i "s/NomeMachine/$NomeDaMaquina/g" ~/.bashrc
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
                        
				touch ~/.bashrc

                                cat ~/Shell/core/CentOs.sh > ~/.bashrc
                                sed -i "s/SeuNome/$SeuNome/g" ~/.bashrc
                                sed -i "s/NomeMachine/$NomeDaMaquina/g" ~/.bashrc
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
                                
                                touch ~/.bashrc
                                #aqui
				cat ~/Shell/core/OpenSuse.sh > ~/.bashrc
                                sed -i "s/SeuNome/$SeuNome/g" ~/.bashrc
                                sed -i "s/NomeMachine/$NomeDaMaquina/g" ~/.bashrc
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
				
				if test -e ~/.profile ; then

				cat ~/Shell/core/Kali-Default.sh >> ~/.profile
                                sed -i "s/SeuNome/$SeuNome/g" ~/.profile
                                sed -i "s/NomeMachine/$NomeDaMaquina/g" ~/.profile
                                echo $green"Configurando..."
                                sleep 2
     	                           echo $yellow"Abra uma nova aba do termux para visualizar sua nova configuracao da variavel de ambiente PS1 "
				
				elif ! -e ~/.profile ; then
					touch ~/.profile
					cat ~/Shell/core/Kali-Default.sh >> ~/.profile
					sed -i "s/SeuNome/$SeuNome/g" ~/.profile
					sed -i "s/NomeMachine/$NomeDaMaquina/g" ~/.profile
					echo $green"Configurando..."
					sleep 2
					echo $yellow"Abra uma nova aba do termux para visualizar sua nova configuracao da variavel de ambiente PS1 "
				fi

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
                esac
	done;;

	'03' | '3')
		while true;do
		bash ./.custom.sh
		done
		setterm --foreground white;;
	*)
esac
done
}
main
