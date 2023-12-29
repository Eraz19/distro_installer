#!/bin/bash


. $PWD/utils.sh;
. $PWD/variables.sh;

function install_extensions
{
	function settings_burn_my_window
	{
		gsettings list-keys org.gnome.shell.extensions.burn-my-windows > /dev/null 2>&1;
		
		if [ $? -eq 0 ];
		then
			mkdir -p $burn_my_windows_settings_path;

			echo "$burn_my_windows_settings" > "$burn_my_windows_settings_path/$burn_my_windows_settings_filename";
		fi
	}
	
	function settings_top_hat
	{
		gsettings list-keys org.gnome.shell.extensions.tophat > /dev/null 2>&1;
		
		if [ $? -eq 0 ];
		then
			gsettings set org.gnome.shell.extensions.tophat cpu-display 'both';
			gsettings set org.gnome.shell.extensions.tophat cpu-show-cores true;
			gsettings set org.gnome.shell.extensions.tophat disk-display 'both';
			gsettings set org.gnome.shell.extensions.tophat disk-monitor-mode 'both';
			gsettings set org.gnome.shell.extensions.tophat mem-display 'both';
			gsettings set org.gnome.shell.extensions.tophat meter-bar-width 0.59999999999999998;
			gsettings set org.gnome.shell.extensions.tophat meter-fg-color '#eb8f34';
			gsettings set org.gnome.shell.extensions.tophat mount-to-monitor '';
			gsettings set org.gnome.shell.extensions.tophat network-usage-unit 'bytes';
			gsettings set org.gnome.shell.extensions.tophat position-in-panel 'right';
			gsettings set org.gnome.shell.extensions.tophat refresh-rate 'medium';
			gsettings set org.gnome.shell.extensions.tophat show-animations true;
			gsettings set org.gnome.shell.extensions.tophat show-cpu true;
			gsettings set org.gnome.shell.extensions.tophat show-disk true;
			gsettings set org.gnome.shell.extensions.tophat show-icons true;
			gsettings set org.gnome.shell.extensions.tophat show-mem true;
			gsettings set org.gnome.shell.extensions.tophat show-net true;
		fi
	}

	function add_extension_settings
	{
		extension_uuid=$1;

		sudo find $extensions_destination_path/$extension_uuid/schemas/ -type f ! -name gschemas.compiled -exec mv -t $gsettings_source_folder {} +;
		sudo rm -rf $extensions_destination_path/$extension_uuid/schemas/;
	}

    extension_zip_array=(`ls $extensions_source_path`);

    mkdir $extensions_destination_path;

    for extension_zip in ${extension_zip_array[@]}
    do
        extension_uuid=`unzip -c $extensions_source_path/$extension_zip metadata.json | grep uuid | cut -d \" -f4`;

        mkdir -p $extensions_destination_path/$extension_uuid;
        unzip -q $extensions_source_path/$extension_zip -d $extensions_destination_path/$extension_uuid/;

		# Count the number of files in the folder (excluding the specific file)
		file_count=$(find $extensions_destination_path/$extension_uuid/schemas -type f ! -name gschemas.compiled | wc -l);

		if [ "$file_count" -gt 0 ];
		then
			add_extension_settings $extension_uuid;
		fi
    done
    
    sudo glib-compile-schemas $gsettings_source_folder;
	settings_burn_my_window;
	settings_top_hat;

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
