#!/usr/bin/env bash
# clis.sh
#
# Aplica configuração
# Obs.: armazena a configuração no arquivo .bash_login
#
# Versão 0.0.1: Configuração ANDRAX adicionada
# Versão 0.0.2:	Configuração DEBIAN adicionada
# Versão 0.0.3: Configuração FEDORA adicionada
# Versão 0.0.4: Configuração KALI LINUX adicionada
# Versão 0.0.5: Configuração NETHUNTER 2020 adicionada
# Versão 0.0.6: Configiração PARROT OS adicionada
# Versão 0.0.7: Configuração UBUNTU adicionada
# Versão 0.0.8: Interação de janelas adicionada,
#		útil para evitar as opçôes do programa
# Versão 0.0.9: Adicionado configuraçôes para o usuário administrativo
#
# Por oliver, 13 de dezembro 2020
#

# Chaves
fazer=0			# Deve fazer? (desligada por padrão)
desfazer=0		# Deve desfazer? (desligada por padrão)
listar=0		# Deve listar? (desligada por padrão)
executar=0		# Deve executar o programa? (desligada por padrão)
usuario=0		# Deve alterar o usuario? (desligada por padrão)
renomear=0		# Deve renomear o arquivo? (desligado por padrâo)
system_n=""		# Deve ser qual distribuição linux? (vaziu por padrão)
diretorio_n=""		# Deve ser qual diretório? (vaziu por padrão)
diretorio_root=0	# Deve ser root? (zero representa desligado)
arquivo_deleta=0	# Deve deletar? (zero representa desligado)

# Cores
white="\e[0m"		# Cor branca (normal)
red="\e[31;1m"		# Cor vermelha (normal)
green="\e[32;1m"	# Cor verde (normal)
yellow="\e[33;1m"	# Cor amarelo (normal)
blue=""			# Cor azul (normal)
cyan="\e[36;1m"		# Cor ciano ou roxo (normal)
magenta=""		# Cor magento ou azul clarinho (normal)

# Vars
diretorio_local=src
arquivo_ini=${HOME}/.bash_login
arquivo_env=src/conf/.*
texto_config="[+] Configuração ${system} aplicada no arquivo .bash_login"
texto_obs="[!] Obs.: Reinicie a sessão para visualizar o efeito"
dir_apt=/etc/apt
yesno="[yes/no]"
diretorio_termux=/data/data/com.termux/files/usr${dir_apt}
diretorio_debian=${dir_apt}
configNova=${new_name}
chave_n=1
sub_diretorio_local=conf
text_file_not_found="[${red}!${white}] Nâo foi possível encontrar nenhum arquivo com o nome .bash_login, tente aplicar a configuraçâo primeiro para que o arquivo tenha seu nome restaurado ou renomear manualmente o arquivo."

# Modo de uso
modo_uso="
Uso: $(basename "$0") [OPÇÔES]

   -s, --setup CONFIG   A referência CONFIG é o sistema operacional linux que contém a configuração
   -u, --undo		Desfaz a configuração atualmente aplicada (deleta arquivos .bash_login, .system.*)
   -l, --list		Mostra todos os sistemas operacionais linux que contém a configuração
   -c, --clis		Executa o programa clis (útil para se livrar das opçôes e argumentos do programa)
   -U, --user USER	A referência USER é o nome desejado que ficará no lugar do usuário antigo no arquivo.bash_login (Exem: de root@kali para joao@kali)
   -r, --rename-file	Alterar o nome do arquivo .bash_login caso o sistema nâo execute suas configuraçôes
   -a, --add		Adicionar arquivo .bash_login ao diretório root (.suroot)
   -d, --delete		Deleta arquivo de configuração do root

   -h, --help		Mostra esta tela de ajuda e sai
   -V, --version	Mostra a versão mais recente do programa e sai
"

# Versao do programa
versao() {
	echo -n $(basename "$0")
	grep '^# Versão ' "$0" | tail -1 | cut -d : -f 1 | tr -d \#
}

while test -n "$1"
do
	case "$1" in
		-s | --setup)
			fazer=1 	# Ligando a chave 'fazer'
			shift   	# Atendendo ${1}
			system="$1"     # Guardar dado atendido

			if test -z "$system" # So se ${system} for vaziu
			then
				echo "Faltou argumento para -s/--setup"
				exit 1
			
			fi
			echo ${system} > ${diretorio_local}/.env.system.ini # redirecionando dado atendido para o arquivo .env.system.ini
			echo "anemonas" > ${diretorio_local}/.env.user.ini # redirecionando usuário "anemonas" como padrão para o arquivo .env.user.ini
			;;

		-u | --undo)
			desfazer=1  	# Ligando a chave 'desfazer'
			;;
		-l | --list)
			listar=1	# Ligando a chave 'listar'
			;;
		-c | --clis)
			executar=1	# Ligando a chave 'executar'
			;;
		-U | --user)
			usuario=1	# Ligando a chave 'usuario'
			shift		# Atendendo {1}
			usuario_argumento=${1}	# Guardar dado atentido

			if test -z "${usuario_argumento}" # So se ${system} for vaziu
			then
				echo "Faltou argumento para -U/--user"
				exit 1
			fi
			# arquivo .env.user.ini #
			# contendo o		#
			# arquivo mais antigo	#
			usuario_antigo_env_user_ini=$(cat ${diretorio_local}/.env.user.ini)
			usuario_novo_argumento=${usuario_argumento}
			# Usuario novo do argumento  #
			# jogado no  arquivo 	     #
			# .env.user.ini mais recente #
			echo ${usuario_argumento} > ${diretorio_local}/.env.user.ini
			usuario_novo_env_user_ini=$(cat ${diretorio_local}/.env.user.ini)
			;;

		-r | --rename-file)
			renomear=1
		;;
		-a | --add)
			diretorio_root=1
		;;
		-d | --delete)
			arquivo_deleta=1
		;;
		-h | --help)
			echo "$modo_uso" # Imprime tela de ajuda
			exit 0		 # Status de saida (0)
			;;
		-V | --version)
			# Extrair a versão diretamente dos cabeçalhos do programa
			versao	# Acionar função 'versao'
			exit 0  # Status de saída (0)
			;;
		*)
			if test -n "$1" # So se ${1} for um valor inválido
			then
				echo "Inválido: $1"
				exit 1
			fi
			;;
	esac
	shift # Seguir a fila normalmente
done

configExistente() {
	echo -ne "${white}[${green}!${white}] Arquivo .bash_login existente em ${green}${diretorio_n}${white}, deseja substituí-lo? ${yesno} : ${cyan}";read yn
	if test "${yn}" = "yes" || test "${yn}" = "y"
	then
		aplicaConfig
	elif test "${yn}" = "no" || test "${yn}" = "n"
	then
		exit 1
	fi
}

aplicaConfig() {
	if test ! ${diretorio_local}/${system}
	then
		echo "Arquivo não encontrado"
		exit 1
	fi
	cat ${diretorio_local}/${system} > ${arquivo_ini}
	echo "${texto_config}"
	sleep 1
	echo "${texto_obs}"
	sleep 1
}

verificaArquivoIni() {
	if test ! -e ${arquivo_ini}
	then
		aplicaConfig
		exit 0
	fi
	configExistente
	exit 0
}

config() {
	case ${system} in
		andrax)
			verificaArquivoIni
			;;
		debian)
			verificaArquivoIni
                        ;;
		fedora)
			verificaArquivoIni
			;;
		kalilinux)
			verificaArquivoIni
			;;
		kalinethunter2020)
			verificaArquivoIni
			;;
		parrot)
			verificaArquivoIni
			;;
		ubuntu)
			verificaArquivoIni
			;;
                *)
	esac
}

# Fazer configuracao
fazerConfig() {
	if test "$system" == "andrax" || test "${system}" == "debian" || test "${system}" == "fedora" || test "${system}" == "kalilinux" || test "${system}" == "kalinethunter2020" || test "${system}" == "parrot" || test "${system}" == "ubuntu"
	then
		if test -d ${diretorio_termux}
		then
			diretorio_n=${arquivo_ini}
			config
		elif test -d ${diretorio_ubuntu}
		then
			diretorio_n=${arquivo_ini}
			config
		fi
	fi
	echo "Inválido: $system"
	exit 1

}

# Deleta todos os arquivos (.system.*)
# .
# └── clis  			<- fica intacto
#     └── src 		        <- fica intacto
#	  └── conf	        <- fica intacto
#	  |   └──.system.*      <- são deletados
#	  └──.env.system.ini    <- fica intacto
#	  └──.env.user.ini      <- fica intacto
#     └──.clis.sh 	        <- fica intacto
#
deletaArquivosEnv() {
	for arquivo in ${diretorio_local}/${sub_diretorio_local}/.*
	do
		if test -e ${arquivo} && test -f ${arquivo} 
		then
			echo "[+] Removendo: ${arquivo}"
			rm ${arquivo}
		fi
	done

	# Verifica se um ou outro arquivo exista
	if test -e ${HOME}/.bash_login
	then
		arquivo_ini=${arquivo_ini}
	elif test -e ${HOME}/.bashrc
	then
		arquivo_ini=${HOME}/.bashrc
	else
		echo "[!] Todos os arquivos foram removidos"
		exit 0
	fi
		
	echo "[+] Removendo: ${arquivo_ini}"
	rm ${arquivo_ini}
	toBackupRestory
	exit 0
}

deletarConfig() {
	deletaArquivosEnv
}

# dezfazer configuracao
desfazerConfig() {
	if test -d ${diretorio_termux}
	then
		deletarConfig
	elif test -d ${diretorio_ubuntu}
	then
		deletarConfig
	fi
}
# fazer listagem
fazerList() {
	os=("Andrax OS ${green}=> ${red}andrax${white}" "Debian ${green}=> ${red}debian${white}" "Fedora ${green}=> ${red}fedora${white}" "Kali Linux  ${green}=> ${red}kalilinux${white}" "Kali Nethunter 2020 ${green}=> ${red}kalinethunter2020${white}" "Parrot OS ${green}=> ${red}parrot${white}" "Ubuntu ${green}=> ${red}ubuntu${white}")
	echo -e "Sistemas com suas configuraçôes\n"
	for (( i = 0; i <7; i++ ))
	do
		echo -e "- ${os[i]}"
	done
	echo ""
}

# bloco altera
blocoAltera() {
	usuario_padrao="anemonas" # usuário padrão do .bash_...
	arquivo_sistema=${arquivo_sistema_distribuicao} # arquivo .system.*...
	usuario_antigo=${usuario_antigo_env_user_ini} # Arquivo .env.user.ini contendo o usuario mais antigo
	usuario_novo=${usuario_novo_env_user_ini} # usuario do argumento
	sistema_operacional=${distribuicao_linux}

	if test -e ${diretorio_local}/.env.user.ini
	then
		comandoAltera # Comando altera usuario
	fi
	echo "Arquivo necessário não foi encontrado"
}

# alterar usuário
alteraUsuario() {
	sistema_padrao_aplicado=$(cat ${diretorio_local}/.env.system.ini) # Sistema aplicado como padrão

	if test ${diretorio_local}/.env.system.ini
	then
		case "${sistema_padrao_aplicado}" in
			andrax)
				# andrax
				cat ${diretorio_local}/andrax > ${diretorio_local}/conf/.system.andrax
				arquivo_sistema_distribuicao=".system.andrax"
				distribuicao_linux="Andrax OS"

				blocoAltera # Executa block que seria repetido
				;;
			debian)
				# debian
				cat ${diretorio_local}/debian > ${diretorio_local}/conf/.system.debian
				arquivo_sistema_distribuicao=".system.debian"
				distribuicao_linux="Debian"
				blocoAltera # Executar block que seria repetido
				;;
			fedora)
				# fedora
				cat ${diretorio_local}/fedora > ${diretorio_local}/conf/.system.fedora
				arquivo_sistema_distribuicao=".system.fedora"
				distribuicao_linux="Fedora"
				blocoAltera # Executar block que seria repetido
				;;
			kalilinux)
				# kalilinux
				cat ${diretorio_local}/kalilinux > ${diretorio_local}/conf/.system.kalilinux
				arquivo_sistema_distribuicao=".system.kalilinux"
				distribuicao_linux="Kali Linux"
				blocoAltera # Executar block que seria repetido
				;;
			kalinethunter2020)
				# kalinethunter2020
				cat ${diretorio_local}/kalinethunter2020 > ${diretorio_local}/conf/.system.kalinethunter2020
				arquivo_sistema_distribuicao=".system.kalinethunter2020"
				distribuicao_linux="Kali Nethunter 2020"
				blocoAltera # Executar block que seria repetido
				;;
			parrot)
				# parrot
				cat ${diretorio_local}/parrot > ${diretorio_local}/conf/.system.parrot
				arquivo_sistema_distribuicao=".system.parrot"
				distribuicao_linux="Parrot OS"
				blocoAltera # Executar block que seria repetido
				;;
			ubuntu)
				# ubuntu
				cat ${diretorio_local}/ubuntu > ${diretorio_local}/conf/.system.ubuntu
				arquivo_sistema_distribuicao=".system.ubuntu"
				distribuicao_linux="Ubuntu"
				blocoAltera # Executar block que seria repetido
				;;
			*)
		esac
	fi
	echo "Arquivo necessário não foi encontrado, aplique a configuração pelo menos uma única vez"
	exit 1
}

# comandoAltera
comandoAltera() {
	if test ${diretorio_local}/conf/${arquivo_sistema}
	then
		echo -e "Alterando nome de usuário do sistema ${red}${sistema_operacional}${white} de '${green}${usuario_antigo}${white}' para ${green}${usuario_novo}${white}!"

		sed -i "s/${usuario_padrao}/${usuario_novo}/g" ${diretorio_local}/conf/${arquivo_sistema}

		echo -ne "Deseja finalmente alterar o arquivo ${green}${arquivo_ini}${white}? obs! esta ação não pode ser desfeita! ${yesno} : "; read yn
		if test "${yn}" == "yes" || test "${yn}" == "y"
		then
			cat ${diretorio_local}/conf/${arquivo_sistema} > ${arquivo_ini}
			sleep 0.5
			echo "Alterado com êxito"
			echo -e "${white}Usuário antigo ${yellow}[${green}${usuario_antigo}${yellow}] ${white}alterado para o novo usuário ${yellow}[${green}${usuario_novo}${yellow}] ${white} !"
		else
			echo "Alteração cancelada!"
			exit 1 
		fi
		exit 0
	fi
	exit 1
}

alteraNomeArquivo() {
	# Verificar se existe
	if test -e ${arquivo_ini}
	then
		echo "Renomeando de ${arquivo_ini} para .bashrc"
		mv ${arquivo_ini} ${HOME}/.bashrc
		sleep 1

	elif test ! -e ${arquivo_ini}
	then
		echo -e "${text_file_not_found}"
		exit 1
	fi
}

adicionaArquivoParaRoot() {
	# Verificação de root
	if test $(id -u) != 0
	then
		echo "Permissão negada, és root?"
		exit 1
	fi
	if test -d ~
	then
		if test -e ~/../.bash_login
		then
			cat ~/../.bash_login > ${HOME}/.bashrc
			# Alterar o usuário padrão para o root
			usuario_comum=$(cat ~/../clis/src/.env.user.ini)
			usuario_administrativo=$(whoami)
			sed -i "s/$usuario_comum/$usuario_administrativo/g" ~/.bashrc
			echo "[+] Bem sucedido"
			exit 0
		elif test ! -e ~/../.bash_login
		then
			echo "Nenhum arquivo necessário encontrado, Aplique a configuração pelo menos uma vez para concluir o processo"
			exit 1
		fi
	elif test ! -d ~
	then
		echo "Ouve um problema desconhecido, contate o autor @Oliver_py no telegram para mais informaçôes"
		exit 1
	fi
}

deletarArquivoRoot() {
	# Verificação de root
	if test $(id -u) != 0
	then
		echo "Permissão negada, és root?"
		exit 1
	fi
	if test -e ~/.bashrc
	then
		sudo rm ~/.bashrc
		echo "[+] Bem sucedido"
		exit 0
	elif test ! -e ~/.bashrc
	then
		echo "Arquivo não existe"
		exit 1
	fi
}

# backup de arquivos

# backup_copy
function backup_copy() {
	if test ${HOME}/.bash_login
	then
		cp ${HOME}/.bash_login ${diretorio_local}/backups
	else
		echo "O arquivo pra backup não existe"
		exit 1
	fi
}
# backup_restory
function backup_restory() {
	if test ${diretorio_local}/backups/.bash_login
	then
		cp ${diretorio_local}/backups/.bash_login ${HOME}
	else
		echo "O arquivo de backup não existe"
		exit 1
	fi
}

# toBackupCopy()
function toBackupCopy() {
	if test ${diretorio_local}/backups
	then
		backup_copy
	fi
	mkdir ${diretorio_local}/backups
	backup_copy
}

# toBackupRestory
function toBackupRestory() {
	backup_restory
}

# Processamento

if test "$fazer" == "$chave_n"
then
	toBackupCopy
	system_default=$(cat ${diretorio_local}/.env.system.ini)
	fazerConfig

elif test "$desfazer" == "$chave_n"
then
	desfazerConfig

elif test "$listar" == "$chave_n"
then
	fazerList
elif test "$usuario" == "$chave_n"
then
	alteraUsuario
elif test "$renomear" == "$chave_n"
then
	alteraNomeArquivo
elif test "$diretorio_root" == "$chave_n"
then
	adicionaArquivoParaRoot
elif test "$arquivo_deleta" == "$chave_n"
then
	deletarArquivoRoot
fi

# Essa parte é para ser executado por usuários que tem preguiça de passar opçôes e argumentos para o programa 'clis.sh' hehehe

listarSistemas() {
	clear
	echo -e "
	Sub tela do programa clis\n
	1) Andrax OS
	2) Debian
	3) Fedora
	4) Kali Linux
	5) Kali Nethunter 2020
	6) Parrot OS
	7) Ubuntu
	r) Voltar para o início do programa
	x) Sair do programa clis
	"
	echo -n "clis~> ";read op

	if test -z "$op"
	then
		echo "Entrada necessária"
		sleep 0.5
		listarSistemas
	fi

	# redireciona sistemabe e usuario anemonas para arquivos
	redireciona() {
		sistema_argumento=${system}
		echo "${sistema_argumento}" > ${diretorio_local}/.env.system.ini
		echo "anemonas" > ${diretorio_local}/.env.user.ini
	}

	case "$op" in
		1)
			system="andrax" # sistema escolhido
			redireciona # aciona função que grava sistema escolhido em arquivo .env.system.ini e usuário padrão anemonas
			fazerConfig # aciona função que faz a configuração
			;;
		2)
			system="debian" # sistema escolhido
			redireciona # aciona função que grava sistema escolhido em arquivo .env.system.ini e usuário padrão anemonas
			fazerConfig # aciona função que faz a configuração
			;;
		3)
			system="fedora" # sistema escolhido
			redireciona # aciona função que grava sistema escolhido em arquivo .env.system.ini e usuário padrão anemonas
			fazerConfig # aciona função que faz a configuração
			;;
		4)
			system="kalilinux" # sistema escolhido
			redireciona # aciona função que grava sistema escolhido em arquivo .env.system.ini e usuário padrão anemonas
			fazerConfig # aciona função que faz a configuração
			;;
		5)
			system="kalinethunter2020" # sistema escolhido
			redireciona # aciona função que grava sistema escolhido em arquivo .env.system.ini e usuário padrão anemonas
			fazerConfig # aciona funçäo que faz a configuração
			;;
		6)
			system="parrot" # sistema escolhido
			redireciona # aciona função que grava sistema escolhido em arquivo .env.system.ini e usuário padrão anemonas
			fazerConfig # aciona funçäo que faz a configuração
			;;
		7)
			system="ubuntu" # sistema escolhido
			redireciona # aciona função que grava sistema escolhido em arquivo .env.system.ini e usuário padrão anemonas
			fazerConfig # aciona funçäo que faz a configuração
			;;
		r | R)
			entrada # aciona função que volta para a tela inicial do programa
			;;
		x | X)
			echo "Encerrando programa..."
			exit 0
			;;
		*)
			if test "${op}" != 1 || test "${op}" != 2 || test "${op}" != 3
			then
				echo "Opção inválida: ${op}"
				sleep 0.5
				listarSistemas
			fi
			;;
	esac

}
# Alterar Usuario do Sistema
altUsuarioSistema() {
	if test -e ${arquivo_ini}
		then

		echo "obs! digite 'back' para voltar a tela inicial"
		echo -n "Novo nome de usuário: ";read novo_nome
	
		if test -z "${novo_nome}"
		then
			echo "Campo necessário !"
			sleep 0.5
			altUsuarioSistema
		fi
		if test "${novo_nome}" == "back"
		then
			entrada
		fi

		# usuario antigo do arquivo .env.user.ini mais antigo
		usuario_antigo_env_user_ini=$(cat ${diretorio_local}/.env.user.ini)
		echo "${novo_nome}" > ${diretorio_local}/.env.user.ini
	
		# usuario novo do arquivo .env.user.ini mais recente
		usuario_novo_env_user_ini=$(cat ${diretorio_local}/.env.user.ini)

		alteraUsuario
		comandoAltera
	elif test ! -e ${arquivo_ini}
	then
		echo -e "${text_file_not_found}"
		exit 1
	fi
}
alteraUsuarioSistema() {
	if test -e ${diretorio_local}/.env.user.ini
	then
		atual_usuario=$(cat ${diretorio_local}/.env.user.ini)
		echo -e "Nome de usuário atual: ${atual_usuario}\n"
		altUsuarioSistema
	fi
	echo -e "Ainda não existe nome de usuário alterado atualmente\n"
	voltar
}

# Voltar para trás
voltar() {
	echo ""
	echo -e "Digite 'back' para voltar para trás\n"
	echo -n "clis~> ";read op

	if test -z "${op}"
	then
		echo "Campo necessário"
		voltar
	elif test "${op}" == "back"
	then
		entrada
	else
		echo "Inválido: ${op}"
		voltar
	fi
}

# historico
abrirHistorico() {
	echo "Histórico:"
	for arquivo in ${diretorio_local}/${sub_diretorio_local}/.*
	do
		if test -d ${arquivo}
		then
			echo "Diretório: ${arquivo}"
		elif test -e ${arquivo}
		then
			echo "Arquivo: ${arquivo}"
		fi
	done

}

# Entrada
entrada() {
	clear
	echo -e "
	Tela inicial do programa\n
	1) Termux Android
	2) Debian & derivados
	3) Defazer a configuração (Deleta os arquivos: .bash_login, .system)
	4) Alterar nome de usuário do sistema
	5) Listar todos os sistemas operacionais disponíveis
	6) Alterar o nome do arquivo .bash_login
	v) Versão do programa
	x) Sair do programa clis
	h) Histótico
	"

	echo -n "clis~> ";read op

	if test -z "$op"
	then
		echo "Entrada necessária"
		sleep 0.5
		entrada
	fi

	# verifica diretorio do sistema
	verificaSistema() {
		diretorio=${diretorio_sistema}
		if test -d ${diretorio}
		then
			listarSistemas
		fi
		echo -e "O diretório\033[01;92m ${diretorio} \033[0m não encontrado! Execute esta opção quando estiver rodando ${aviso_sistema} ${distribuicao_necessario}\033[0m"
		voltar
	}

	case "$op" in
		1)
			diretorio_sistema=${diretorio_termux}
			distribuicao_necessario="\033[01;91mtermux"
			aviso_sistema="um ambiente android"
			verificaSistema
			;;
		2)
			diretorio_sistema=${diretorio_debian}
			distribuicao_necessario="\033[01;91mdebian"
			aviso_sistema="um ambiente derivado do"
			verificaSistema
			;;
		3)
			desfazerConfig
			;;
		4)
			alteraUsuarioSistema
			;;
		5)
			fazerList
			voltar
			;;
		6)
			alteraNomeArquivo
			;;
		v | V)
			versao
			voltar
			;;
		x | X)
			echo "Programa encerrado..."
			exit 0
			;;
		h | H)
			abrirHistorico
			;;
		*)
			if test "$op" != 1 || test "$op" != 2 || test "$op" != 3
			then
				echo "Opção inválida: ${op}"
				sleep 0.5
				entrada
			fi
	esac
	exit 0
}

if test "$executar" == "$chave_n"
then
	entrada
fi
