#!/bin/bash


. $PWD/utils.sh;
. $PWD/variables.sh;

function install_extensions
{
    extension_zip_array=(`ls $extensions_source_path`);

    mkdir $extensions_destination_path;

    for extension_zip in ${extension_zip_array[@]}
    do
        extension_uuid=`unzip -c $extensions_source_path/$extension_zip metadata.json | grep uuid | cut -d \" -f4`;

        mkdir -p $extensions_destination_path/$extension_uuid;
        unzip -q $extensions_source_path/$extension_zip -d $extensions_destination_path/$extension_uuid/;
        glib-compile-schemas $extensions_destination_path/$extension_uuid/schemas/;
        sudo cp $extensions_destination_path/$extension_uuid/schemas/!('gschemas.compiled') $gsettings_source_folder;
    done

    ## install GTop for Top Hat extension
    sudo apt -qq -y install gir1.2-gtop-2.0;
}

function enable_extensions
{
    extension_array=(`ls $extensions_destination_path`);

    gsettings set org.gnome.shell enabled-extensions "$(from_array_to_string ${extension_array[@]})";
}

install_extensions;
enable_extensions;
