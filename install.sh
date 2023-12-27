#!/bin/bash


. $PWD/variables.sh;

sudo_password="";

function install_required_softwares
{
    sudo apt -qq -y install curl;
    sudo apt -qq -y install expect;
}

function get_sudo_password
{
    while true;
    do
        read -s -p "Enter your password: " sudo_password;

        if echo $sudo_password | sudo -S true;
        then
            echo "Password is correct.\n Proceeding with the task ...\n";
            break;
        else
            echo "Password is incorrect.\n Please insert the correct password ...\n";
        fi
    done
}

function reboot_to_apply_changes
{
    while true;
    do
        read -p "Do you want to reboot to apply the changes ? (Y/N) " answer;

        if [ $answer == "yes" ] || [ $answer == "Y" ] || [ $answer == "y" ];
        then
            echo "Rebooting ...";
            sudo reboot;
        elif [ $answer == "no" ] || [ $answer == "N" ] || [ $answer == "n" ];
        then
            echo "The changes will be applied after you reboot your system.\n";
            break;
        else
            echo "Invalid answer. Please enter yes/Y/y or no/N/n.\n";
        fi
    done
}

get_sudo_password;
install_required_softwares;

#chmod +x $_GNOME_SHELL_THEME_INSTALLATION_FOLDER/install.sh;
#bash $_GNOME_SHELL_THEME_INSTALLATION_FOLDER/install.sh; # OK
#chmod +x $_GIT_INSTALLATION_FOLDER/install.sh;
#bash $_GIT_INSTALLATION_FOLDER/install.sh; # OK
#chmod +x $_TERMINAL_INSTALLATION_FOLDER/install.sh;
#bash $_TERMINAL_INSTALLATION_FOLDER/install.sh $sudo_password; # OK
#chmod +x $_APPLICATIONS_INSTALLATION_FOLDER/install.sh;
bash $_APPLICATIONS_INSTALLATION_FOLDER/install.sh; # OK
#chmod +x $_PROJECTS_INSTALLATION_FOLDER/install.sh;
#bash $_PROJECTS_INSTALLATION_FOLDER/install.sh; # OK
#chmod +x $_GNOME_SHELL_EXTENSIONS_INSTALLATION_FOLDER/install.sh;
#bash $_GNOME_SHELL_EXTENSIONS_INSTALLATION_FOLDER/install.sh;

#sudo apt -y update;
#sudo apt -y upgrade;#

reboot_to_apply_changes;
