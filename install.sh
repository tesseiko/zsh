#!/bin/sh

install () 
{
	sed -i 's/export ZDOTDIR=\"${XDG_CONFIG_HOME:-$HOME\/.config}\/zsh\"//' ~/.profile
	echo 'export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"' >> $HOME/.profile
	rm $HOME/.zprofile 2> /dev/null
	ln -sf $HOME/.profile $HOME/.zprofile
}

install
