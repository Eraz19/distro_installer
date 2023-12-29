#!/bin/bash


. $PWD/utils.sh;
. $PWD/variables.sh;

function install_game_applications
{
    sudo snap install steam;
    sudo snap install retroarch;
}

function install_music_applications
{
    sudo snap install spotify;
}

function install_social_applications
{
    sudo snap install discord;
}

function install_code_applications
{
    function set_android_studios_zsh_environment_variables
    {
        echo "$android_studios_environment_variables" >> $zshrc_path;
    }

    function set_android_studios_bash_environment_variables
    {
        echo "$android_studios_environment_variables" >> $bashrc_path;
    }

    sudo snap install code --classic;
    sudo snap install android-studio --classic;
    sudo snap install drawio;
    set_android_studios_zsh_environment_variables;
    set_android_studios_bash_environment_variables;
}

function install_math_applications
{
    sudo snap install geogebra-discovery;
}

function install_art_applications
{
    sudo apt -qq -y install krita;
}

function add_applications_to_toolbar
{
    application_array=(
        "org.gnome.Nautilus.desktop"
        "org.gnome.Terminal.desktop"
        "firefox_firefox.desktop"
        "discord_discord.desktop"
        "retroarch_retroarch.desktop"
        "steam_steam.desktop"
        "org.kde.krita.desktop"
        "spotify_spotify.desktop"
        "android-studio_android-studio.desktop"
        "code_code.desktop"
        "drawio_drawio.desktop"
    );

    gsettings set org.gnome.shell favorite-apps "$(from_array_to_string ${application_array[@]})";
}

function install_applications
{
    install_game_applications;
    install_music_applications;
    install_social_applications;
    install_code_applications;
    install_math_applications;
    install_art_applications;
    add_applications_to_toolbar;
}

install_applications;
