#!/bin/sh

custom() {
	figlet Custom-t
}
main() {
	echo "
	\033[00;96m[\033[02;94m001\033[00;96m] \033[02;96m->\033[0m White\033[02;92m|\033[01;91m\033[0m\033[01;91mRed
	\033[00;96m[\033[02;94m002\033[00;96m] \033[02;96m->\033[0m White\033[02;92m|\033[01;92mGreen
	\033[00;96m[\033[02;94m003\033[00;96m] \033[02;96m-> Custom
	\033[00;96m[\033[02;94m004\033[00;96m] \033[02;96m->\033[0m White\033[02;92m|\033[01;93mYellow\033[02;92m|\033[01;96mMagenta\033[02;92m|\033[01;92mGreen
	\033[00;96m[\033[02;94m005\033[00;96m] \033[02;96m-> \033[01;92mGreen\033[02;92m|\033[01;91mRed
	\033[00;96m[\033[02;94m006\033[00;96m] \033[02;96m-> \033[01;94mBlue\033[02;92m|\033[01;91mRed\033[02;92m|\033[01;96mMagenta\033[02;92m|\033[01;91mRed
	\033[00;96m[\033[02;94m007\033[00;96m] \033[02;96m-> \033[0mWhite\033[02;92m|\033[01;97mBlack
	\033[00;96m[\033[02;94m008\033[00;96m] \033[02;96m-> \033[01;94mYellow\033[02;92m|\033[01;96mMagenta
	\033[00;96m[\033[02;94m009\033[00;96m] \033[02;96m-> \033[01;92mDirectory\033[02;92m|\033[01;91mGreen
	\033[00;96m[\033[02;94m010\033[00;96m] \033[02;96m-> \033[01;92mGreen\033[02;92m|\033[01;94mBlue\033[02;92m|\033[0mWhite
	\033[00;96m[\033[02;94m011\033[00;96m] \033[02;96m-> \033[01;94mBlue\033[02;92m|\033[0mWhite
	\033[00;96m[\033[02;94m012\033[00;96m] \033[02;96m-> \033[0mWhite
	\033[00;96m[\033[02;94m013\033[00;96m] \033[02;96m-> \033[01;91mRed\033[02;92m|\033[01;91mKali
	\033[00;96m[\033[02;94m014\033[00;96m] \033[02;96m-> \033[01;94mBlue\033[02;92m|\033[mWhite\033[02;92m|\033[01;92mGreen
	\033[00;96m[\033[02;94m015\033[00;96m] \033[02;96m-> \033[01;91mRed\033[02;92m|\033[01;93nYellow\033[02;92m|\033[0mWhite\033[02;92m|\033[01;92mGreen
	\033[00;96m[\033[02;94m016\033[00;96m] \033[02;96m-> Custom
	"
}

custom
main

sub_user_host() {
	echo -n "\033[02;92mUsuario: \033[01;96m"
	read usuario
	echo -n "\033[02;92mHostname: \033[01;96m"
	read hostname
}
sub_user() {
	echo -n "\033[02;92mUsuario: \033[01;96m"
	read usuario
}
sub_host() {
	echo -n "\033[02;92mHostname: \033[01;96m"
	read hostname
}

enter_return() {
	echo "\033[02;96mEnter pra retornar ao menu"
	read enter
	sh $HOME/Shell/.custom.sh
}

msg() {
	echo "Abra uma nova aba pra visualizar a saida da nova configuraçâo da PS1"
}
echo -n "\033[00;96mShell->\033[02;92m";read r


case $r in
	'01' | '1')
		cat $HOME/Shell/Custom/01-.txt > ~/.bashrc
		sub_user
		sleep 1
		sed -i "s/usuario/$usuario/g" $HOME/.bashrc
		msg
		enter_return;;

	'02' | '2')
		cat $HOME/Shell/Custom/02-.txt > ~/.bashrc
		sub_user
		sleep 1
		sed -i "s/usuario/$usuario/g" $HOME/.bashrc
		msg
		enter_return;;
	
	'03' | '3')
		cat $HOME/Shell/Custom/03-.txt > ~/.bashrc
		sleep 1
		msg
		enter_return;;
	
	'04' | '4')
		cat $HOME/Shell/Custom/04-.txt > ~/.bashrc
		sub_user_host
		sed -i "s/usuario/$usuario/g" $HOME/.bashrc
		sed -i "s/hostname/$hostname/g" $HOME/.bashrc
		sleep 1
		msg
		enter_return;;
	
	'05' | '5')
		cat $HOME/Shell/Custom/05-.txt > $HOME/.bashrc
		sub_user_host
		sed -i "s/usuario/$usuario/g" $HOME/.bashrc
		sed -i "s/hostname/$hostname/g" $HOME/.bashrc
		sleep 1
		msg
		enter_return;;

	'06' | '6')
		cat $HOME/Shell/Custom/06-.txt > $HOME/.bashrc
		sleep 1
		msg
		enter_return;;

	'07' | '7')
		cat $HOME/Shell/Custom/07-txt > $HOME/.bashrc
		sub_user_host
		sed -i "s/usuario/$usuario/g" $HOME/.bashrc
		sed -i "s/hostname/$hostname/g" $HOME/.bashrc
		sleep 1
		msg
		enter_return;;

	'08' | '8')
		cat $HOME/Shell/Custom/08-.txt > $HOME/.bashrc
		sub_user_host
		sed -i "s/hostname/$hostname/g" $HOME/.bashrc
		sed -i "s/usuario/$usuario/g" $HOME/.bashrc
		sleep 1
		msg
		enter_return;;

	'09' | '9')
		cat $HOME/Shell/Custom/09-.txt > $HOME/.bashrc
		sleep 1
		msg
		enter_return;;

	'010' | '10')
		cat $HOME/Shell/Custom/10-.txt > $HOME/.bashrc
		sleep 1
		msg
		enter_return;;

	'011' | '11')
		cat $HOME/Shell/Custom/11-.txt > $HOME/.bashrc
		sub_user_host
		sed -i "s/usuario/$usuario/g" $HOME/.bashrc
		sed -i "s/hostname/$hostname/g" $HOME/.bashrc
		sleep 1
		msg
		enter_return;;

	'012' | '12')
		cat $HOME/Shell/Custom/12-.txt > $HOME/.bashrc
		sub_user_host
		sed -i "s/usuario/$usuario/g" $HOME/.bashrc
		sed -i "s/hostname/$hostname/g" $HOME/.bashrc
		sleep 1
		msg
		enter_return;;

	'013' | '13')
		cat $HOME/Shell/Custom/13-.txt > $HOME/.bashrc
		sub_user_host
		sed -i "s/usuario/$usuario/g" $HOME/.bashrc
		sed -i "s/hostname/$hostname/g" $HOME/.bashrc
		sleep 1
		msg
		enter_return;;

	'014' | '14')
		cat $HOME/Shell/Custom/04-.txt > $HOME/.bashrc
		sub_user_host
		sed -i "s/usuario/$usuario/g" $HOME/.bashrc
		sed -i "s/hostname/$hostname/g" $HOME/.bashrc
		sleep 1
		msg
		enter_return;;

	'015' | '15')
		cat $HOME/Shell/Custom/15-.txt > $HOME/.bashrc
		sub_user
		sed -i "s/usuario/$usuario/g" $HOME/.bashrc
		sleep 1
		msg
		enter_return;;
	
	'016' | '16')
		cat $HOME/Shell/Custom/16-.txt > $HOME/.bashrc
		sub_user
		sed -i "s/usuario/$usuario/g" $HOME/.bashrc
		sleep 1
		msg
		enter_return;;
	'return' | 'r')
		setterm --foreground white
		./shell.sh
		setterm --foreground white;;

	*)
esac
