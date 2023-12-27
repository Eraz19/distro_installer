_INSTALLATION_FOLDER="$HOME/Documents/Backup";
_WORK_FOLDER_PATH="$HOME/Documents/Work";
_PERSO_FOLDER_PATH="$HOME/Documents/Perso";

_APPLICATIONS_INSTALLATION_FOLDER="$_INSTALLATION_FOLDER/applications";
_GIT_INSTALLATION_FOLDER="$_INSTALLATION_FOLDER/git";
_GNOME_SHELL_EXTENSIONS_INSTALLATION_FOLDER="$_INSTALLATION_FOLDER/gnome-shell-extensions";
_GNOME_SHELL_THEME_INSTALLATION_FOLDER="$_INSTALLATION_FOLDER/gnome-shell-theme";
_PROJECTS_INSTALLATION_FOLDER="$_INSTALLATION_FOLDER/projects";
_TERMINAL_INSTALLATION_FOLDER="$_INSTALLATION_FOLDER/terminal";


zshrc_path="$HOME/.zshrc";
bashrc_path="$HOME/.bashrc";

ssh_key_destination_path="$HOME/.ssh";

expect_script_path="$_TERMINAL_INSTALLATION_FOLDER/set_zsh_default.expect";
oh_my_zsh_installation_url="https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh";

nvm_installation_url="https://raw.githubusercontent.com/creationix/nvm/master/install.sh";
nvm_environment_variables=$'
export NVM_DIR="$HOME/.nvm"\n
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm\n
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion\n
';

extensions_destination_path="$HOME/.local/share/gnome-shell/extensions";
extensions_source_path="$_GNOME_SHELL_EXTENSIONS_INSTALLATION_FOLDER/extensions";

android_studios_environment_variables=$'
export ANDROID_HOME=$HOME/Android/Sdk\n
export PATH=$PATH:$ANDROID_HOME/emulator\n
export PATH=$PATH:$ANDROID_HOME/platform-tools\n
';

gsettings_source_folder=/usr/share/glib-2.0/schemas;
