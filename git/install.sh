#!/bin/bash


. $PWD/variables.sh;

function provide_ssh_keys_for_connection
{
    mkdir $ssh_key_destination_path;

    cp $_GIT_INSTALLATION_FOLDER/id_ed25519.pub $ssh_key_destination_path;
    cp $_GIT_INSTALLATION_FOLDER/id_ed25519 $ssh_key_destination_path;

    ssh-keyscan -t rsa github.com >> $ssh_key_destination_path/known_hosts;

    chmod 700 $ssh_key_destination_path;
    chmod 600 $ssh_key_destination_path/*;
}

function indicate_git_mail
{
    cp $_GIT_INSTALLATION_FOLDER/.gitconfig $HOME/;
}

function install_git
{
    sudo apt -qq -y install git-all;
    indicate_git_mail;
    provide_ssh_keys_for_connection;
}

install_git;
