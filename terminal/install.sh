#!/bin/bash


. $PWD/variables.sh;

sudo_password=$1;

function install_and_set_zsh_as_default
{
	function install_zsh
	{
		sudo apt -qq -y install zsh;
		touch $zshrc_path;
	}
	
	function set_zsh_as_default
	{
		chmod +x $expect_script_path;
		expect $expect_script_path $USER $sudo_password $(which zsh);
	}
	
	install_zsh;
	set_zsh_as_default;
}

function install_oh_my_zsh
{
	sh -c "$(curl -fsSL $oh_my_zsh_installation_url) --unattended";
}

# TODO
#define_custom_zsh_theme()
#{
#	echo '
#	#----------------------------- result script zsh theme installation -----------------------------#
#		
#	# Set name of the theme to load
#	ZSH_THEME="terminal-eraz-theme"
#		
#	# Enable empty line between commands
#	#alias clear="precmd() {precmd() {echo }} && clear";
#	precmd()
#	{
#		precmd()
#		{
#			echo
#		}
#	}
#
#	# Which plugins would you like to load
#	plugins=
#	(
#		git
#		zsh-syntax-highlighting
#		zsh-autosuggestions
#		macos
#		docker
#		iterm2
#	)' >> $zshrc_path;
#}

function install_terminal
{
	install_and_set_zsh_as_default;
	install_oh_my_zsh;
}

install_terminal;
