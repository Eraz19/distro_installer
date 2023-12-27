#!/bin/bash


. $PWD/variables.sh;

# All gsettings list of schemas with their options keys
#  gsettings list-recursively

function gnome_shell_background
{
	gsettings set org.gnome.desktop.background picture-uri-dark $_GNOME_SHELL_THEME_INSTALLATION_FOLDER/main.jpg;
}

function gnome_shell_color_scheme
{
	gsettings set org.gnome.desktop.interface color-scheme prefer-dark;
	gsettings set org.gnome.desktop.interface gtk-color-scheme prefer-dark;
	gsettings set org.gnome.desktop.interface gtk-theme 'Yaru-dark';
	gsettings set org.gnome.shell.ubuntu color-scheme prefer-dark;
}

function gnome_shell_dash_to_dack
{
	gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed false;
	gsettings set org.gnome.shell.extensions.dash-to-dock autohide true;
	gsettings set org.gnome.shell.extensions.dash-to-dock intellihide true;
	gsettings set org.gnome.shell.extensions.dash-to-dock dock-position "BOTTOM";
	gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false;
}

# args : boolean
function show_home_icon_on_desktop
{
	gsettings set org.gnome.shell.extensions.ding show-home $1;
}

# args : number
function time_before_unactivity_sleep_mode
{
	gsettings set org.gnome.desktop.session idle-delay $1;	
}

#args : number
function display_scale_factor
{
	echo "
	[org.gnome.desktop.interface]
	scaling-factor=$1
	" | sudo tee /usr/share/glib-2.0/schemas/90_hidpi.gschema.override;

	sudo glib-compile-schemas /usr/share/glib-2.0/schemas;
}

#args : number
function set_sudo_timeout
{
	echo "Defaults timestamp_timeout=$1" | sudo tee /etc/sudoers.d/custom_sudo_timeout;
}

function intsall_gnome_environment
{
	gnome_shell_background;
	gnome_shell_color_scheme;
	gnome_shell_dash_to_dack;
	show_home_icon_on_desktop false;
	time_before_unactivity_sleep_mode 3600;
	set_sudo_timeout 80;
	display_scale_factor 1;
}

intsall_gnome_environment;
