#!/bin/bash


. $PWD/variables.sh;

function get_work_projects
{
    mkdir $_WORK_FOLDER_PATH;

    git clone git@github.com:karimBlj/pointage.git $_WORK_FOLDER_PATH/Pointage;
    git clone git@github.com:karimBlj/Neolog.git $_WORK_FOLDER_PATH/BabySafe;
}

function get_perso_projects
{
    mkdir $_PERSO_FOLDER_PATH;

    git clone git@github.com:Eraz19/3D_Renderer_TS.git $_PERSO_FOLDER_PATH/3D_Renderer_TS;
    git clone git@github.com:Eraz19/3D_Renderer_CSharp.git $_PERSO_FOLDER_PATH/3D_Renderer_CSharp;
}

function install_node
{
    function set_nvm_zsh_environment_variables
    {
        echo "$nvm_environment_variables" >> $zshrc_path;
    }

    function  set_nvm_bash_environment_variables
    {
        echo "$nvm_environment_variables" >> $bashrc_path;
    }

    curl $nvm_installation_url | bash;
    set_nvm_zsh_environment_variables;
    set_nvm_bash_environment_variables;
    nvm install node;
}

install_node;
get_perso_projects;
get_work_projects;
