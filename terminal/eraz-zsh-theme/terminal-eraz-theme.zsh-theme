#!/bin/bash

#----------------------------- types -----------------------------#

# type T_Hex_Value = 0|1|2|3|4|5|6|7|8|9|A|B|C|D|E|F;
# type T_Hex_Color = `#${T_Hex_Value}${T_Hex_Value}${T_Hex_Value}${T_Hex_Value}${T_Hex_Value}${T_Hex_Value}`;
# type T_RGB_Color = `rgb(${number},${number},${number})``;

# type T_ZSHSyntaxHighlighting_Color = `fg=${T_Hex_Color}` | `fg=${T_Hex_Color},bold` | "none";


typeset -g POWERLEVEL9K_LEFT_PROMPT_FIRST_SEGMENT_START_SYMBOL='░▒▓';
typeset -g POWERLEVEL9K_RIGHT_PROMPT_LAST_SEGMENT_END_SYMBOL='▓▒░';

#----------------------------- gnome-teerminal settings -----------------------------#

is_bell_activated=false;           # boolean
is_background_transparent=true;    # boolean 
background_transparency_percent=0; # number
cell_height_scale=1.2;             # number
cursor_blink="on";                 # "on" | "off"
cursor_type="underline";           # "block" | "ibeam" (vertical bar) | "underline"
use_custom_highlighting=true;      # boolean
column_size=95;                    # number
row_size=35;                       # number


# get liest of all gsettings options
# gsettings list-recursively org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$(gsettings get org.gnome.Terminal.ProfilesList default | awk -F "'" '{print $2}')/


# gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$(gsettings get org.gnome.Terminal.ProfilesList default | awk -F "'" '{print $2}')/ use-theme-colors                false;

gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$(gsettings get org.gnome.Terminal.ProfilesList default | awk -F "'" '{print $2}')/ audible-bell                      $is_bell_activated;

gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$(gsettings get org.gnome.Terminal.ProfilesList default | awk -F "'" '{print $2}')/ use-transparent-background        $is_background_transparent;
# gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$(gsettings get org.gnome.Terminal.ProfilesList default | awk -F "'" '{print $2}')/ use-theme-transparency          true;
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$(gsettings get org.gnome.Terminal.ProfilesList default | awk -F "'" '{print $2}')/ background-color                  $background_color;
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$(gsettings get org.gnome.Terminal.ProfilesList default | awk -F "'" '{print $2}')/ background-transparency-percent   $background_transparency_percent;

# gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$(gsettings get org.gnome.Terminal.ProfilesList default | awk -F "'" '{print $2}')/ backspace-binding               'ascii-delete';

# gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$(gsettings get org.gnome.Terminal.ProfilesList default | awk -F "'" '{print $2}')/ bold-color-same-as-fg           true;
# gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$(gsettings get org.gnome.Terminal.ProfilesList default | awk -F "'" '{print $2}')/ bold-is-bright                  false;
# gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$(gsettings get org.gnome.Terminal.ProfilesList default | awk -F "'" '{print $2}')/ bold-color                      '#000000';

gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$(gsettings get org.gnome.Terminal.ProfilesList default | awk -F "'" '{print $2}')/ cell-height-scale                 $cell_height_scale;
# gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$(gsettings get org.gnome.Terminal.ProfilesList default | awk -F "'" '{print $2}')/ cell-width-scale                1.0;
# gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$(gsettings get org.gnome.Terminal.ProfilesList default | awk -F "'" '{print $2}')/ cjk-utf8-ambiguous-width        'narrow';

# gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$(gsettings get org.gnome.Terminal.ProfilesList default | awk -F "'" '{print $2}')/ cursor-colors-set               false;
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$(gsettings get org.gnome.Terminal.ProfilesList default | awk -F "'" '{print $2}')/ cursor-blink-mode                 $cursor_blink;
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$(gsettings get org.gnome.Terminal.ProfilesList default | awk -F "'" '{print $2}')/ cursor-shape                      $cursor_type;
# gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$(gsettings get org.gnome.Terminal.ProfilesList default | awk -F "'" '{print $2}')/ cursor-background-color         '#000000';
# gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$(gsettings get org.gnome.Terminal.ProfilesList default | awk -F "'" '{print $2}')/ cursor-foreground-color         '#fffff2f';

# gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$(gsettings get org.gnome.Terminal.ProfilesList default | awk -F "'" '{print $2}')/ custom-command                  '';

gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$(gsettings get org.gnome.Terminal.ProfilesList default | awk -F "'" '{print $2}')/ default-size-columns              $column_size;
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$(gsettings get org.gnome.Terminal.ProfilesList default | awk -F "'" '{print $2}')/ default-size-rows                 $row_size;

# gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$(gsettings get org.gnome.Terminal.ProfilesList default | awk -F "'" '{print $2}')/ delete-binding                  'delete-sequence';

# gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$(gsettings get org.gnome.Terminal.ProfilesList default | awk -F "'" '{print $2}')/ enable-bidi                     true;

# gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$(gsettings get org.gnome.Terminal.ProfilesList default | awk -F "'" '{print $2}')/ enable-shaping                  true;

# gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$(gsettings get org.gnome.Terminal.ProfilesList default | awk -F "'" '{print $2}')/ enable-sixel                    false;

# gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$(gsettings get org.gnome.Terminal.ProfilesList default | awk -F "'" '{print $2}')/ encoding                        'UTF-8';

# gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$(gsettings get org.gnome.Terminal.ProfilesList default | awk -F "'" '{print $2}')/ exit-action                     'close';

# gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$(gsettings get org.gnome.Terminal.ProfilesList default | awk -F "'" '{print $2}')/ use-system-font                 true';
# gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$(gsettings get org.gnome.Terminal.ProfilesList default | awk -F "'" '{print $2}')/ font                            'Monospace 12;
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$(gsettings get org.gnome.Terminal.ProfilesList default | awk -F "'" '{print $2}')/ foreground-color                  $foreground_color;

gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$(gsettings get org.gnome.Terminal.ProfilesList default | awk -F "'" '{print $2}')/ highlight-colors-set              $use_custom_highlighting;
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$(gsettings get org.gnome.Terminal.ProfilesList default | awk -F "'" '{print $2}')/ highlight-background-color        $highlight_background_color;
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$(gsettings get org.gnome.Terminal.ProfilesList default | awk -F "'" '{print $2}')/ highlight-foreground-color        $highlight_text_color;

# gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$(gsettings get org.gnome.Terminal.ProfilesList default | awk -F "'" '{print $2}')/ login-shell                     false;

# gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$(gsettings get org.gnome.Terminal.ProfilesList default | awk -F "'" '{print $2}')/ preserve-working-directory      'safe';

# gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$(gsettings get org.gnome.Terminal.ProfilesList default | awk -F "'" '{print $2}')/ rewrap-on-resize                true;

# gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$(gsettings get org.gnome.Terminal.ProfilesList default | awk -F "'" '{print $2}')/ scroll-on-keystroke             true;
# gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$(gsettings get org.gnome.Terminal.ProfilesList default | awk -F "'" '{print $2}')/ scroll-on-output                false;
# gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$(gsettings get org.gnome.Terminal.ProfilesList default | awk -F "'" '{print $2}')/ scrollback-lines                10000;
# gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$(gsettings get org.gnome.Terminal.ProfilesList default | awk -F "'" '{print $2}')/ scrollback-unlimited            false;
# gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$(gsettings get org.gnome.Terminal.ProfilesList default | awk -F "'" '{print $2}')/ scrollbar-policy                'always';

# gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$(gsettings get org.gnome.Terminal.ProfilesList default | awk -F "'" '{print $2}')/ text-blink-mode                 'always';

# gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$(gsettings get org.gnome.Terminal.ProfilesList default | awk -F "'" '{print $2}')/ use-custom-command              false;

# gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$(gsettings get org.gnome.Terminal.ProfilesList default | awk -F "'" '{print $2}')/ visible-name                    'temp';


#----------------------------- zsh-syntax-highlighting pluggin settings -----------------------------#

# Declare the variable
typeset -A ZSH_HIGHLIGHT_STYLES

# ZSH_HIGHLIGHT_STYLES[field] : T_ZSHSyntaxHighlighting_Color;

#ZSH_HIGHLIGHT_STYLES[unknown-token]="";                           # unknown tokens / errors
#ZSH_HIGHLIGHT_STYLES[reserved-word]="";                           # shell reserved words (if, for)
#ZSH_HIGHLIGHT_STYLES[alias]="";                                   # aliases
#ZSH_HIGHLIGHT_STYLES[suffix-alias]="";                            # suffix aliases (requires zsh 5.1.1 or newer)
#ZSH_HIGHLIGHT_STYLES[global-alias]="";                            # global aliases
#ZSH_HIGHLIGHT_STYLES[builtin]="" ;                                # shell builtin commands (shift, pwd, zstyle)
#ZSH_HIGHLIGHT_STYLES[function]="";                                # function names
#ZSH_HIGHLIGHT_STYLES[command]="";                                 # command names
#ZSH_HIGHLIGHT_STYLES[precommand]="";                              # precommand modifiers (e.g., noglob, builtin)
#ZSH_HIGHLIGHT_STYLES[commandseparator]="";                        # command separation tokens (;, &&)
#ZSH_HIGHLIGHT_STYLES[hashed-command]="";                          # hashed commands
#ZSH_HIGHLIGHT_STYLES[autodirectory]="";                           # a directory name in command position when the AUTO_CD option is set
#ZSH_HIGHLIGHT_STYLES[path]="";                                    # existing filenames
#ZSH_HIGHLIGHT_STYLES[path_pathseparator]="";                      # path separators in filenames (/); if unset, path is used (default)
#ZSH_HIGHLIGHT_STYLES[path_prefix]="";                             # prefixes of existing filenames
#ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]="";               # path separators in prefixes of existing filenames (/); if unset, path_prefix is used (default)
#ZSH_HIGHLIGHT_STYLES[globbing]="";                                # globbing expressions (*.txt)
#ZSH_HIGHLIGHT_STYLES[history-expansion]="";                       # history expansion expressions (!foo and ^foo^bar)
#ZSH_HIGHLIGHT_STYLES[command-substitution]="";                    # command substitutions ($(echo foo))
#ZSH_HIGHLIGHT_STYLES[command-substitution-unquoted]="";           # an unquoted command substitution ($(echo foo))
#ZSH_HIGHLIGHT_STYLES[command-substitution-quoted]="";             # a quoted command substitution ("$(echo foo)")
#ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter]="";          # command substitution delimiters ($( and ))
#ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter-unquoted]=""; # an unquoted command substitution delimiters ($( and ))
#ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter-quoted]="";   # a quoted command substitution delimiters ("$( and )")
#ZSH_HIGHLIGHT_STYLES[process-substitution]="";                    # process substitutions (<(echo foo))
#ZSH_HIGHLIGHT_STYLES[process-substitution-delimiter]="";          # process substitution delimiters (<( and ))
#ZSH_HIGHLIGHT_STYLES[arithmetic-expansion]="";                    # arithmetic expansion $(( 42 )))
#ZSH_HIGHLIGHT_STYLES[single-hyphen-option]="";                    # single-hyphen options (-o)
#ZSH_HIGHLIGHT_STYLES[double-hyphen-option]="";                    # double-hyphen options (--option)
#ZSH_HIGHLIGHT_STYLES[back-quoted-argument]="";                    # backtick command substitution (`foo`)
#ZSH_HIGHLIGHT_STYLES[back-quoted-argument-unclosed]="";           # unclosed backtick command substitution (`foo)
#ZSH_HIGHLIGHT_STYLES[back-quoted-argument-delimiter]="";          # backtick command substitution delimiters (`)
#ZSH_HIGHLIGHT_STYLES[single-quoted-argument]="";                  # single-quoted arguments ('foo')
#ZSH_HIGHLIGHT_STYLES[single-quoted-argument-unclosed]="";         # unclosed single-quoted arguments ('foo)
#ZSH_HIGHLIGHT_STYLES[double-quoted-argument]="";                  # double-quoted arguments ("foo")
#ZSH_HIGHLIGHT_STYLES[double-quoted-argument-unclosed]="";         # unclosed double-quoted arguments ("foo)
#ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]="";                  # dollar-quoted arguments ($'foo')
#ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument-unclosed]="";         # unclosed dollar-quoted arguments ($'foo)
#ZSH_HIGHLIGHT_STYLES[rc-quote]="";                                # two single quotes inside single quotes when the RC_QUOTES option is set ('foo''bar')
#ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]="";           # parameter expansion inside double quotes ($foo inside "")
#ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]="";             # backslash escape sequences inside double-quoted arguments (\" in "foo\"bar")
#ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]="";             # backslash escape sequences inside dollar-quoted arguments (\x in $'\x48')
#ZSH_HIGHLIGHT_STYLES[assign]="";                                  # parameter assignments (x=foo and x=( ))
#ZSH_HIGHLIGHT_STYLES[redirection]="";                             # redirection operators (<, >, etc)
#ZSH_HIGHLIGHT_STYLES[comment]="";                                 # comments, when setopt INTERACTIVE_COMMENTS is in effect (echo # foo)
#ZSH_HIGHLIGHT_STYLES[comment]="";                                 # elided parameters in command position ($x ls when $x is unset or empty)
#ZSH_HIGHLIGHT_STYLES[named-fd]="";                                # named file descriptor (the fd in echo foo {fd}>&2)
#ZSH_HIGHLIGHT_STYLES[numeric-fd]="";                              # numeric file descriptor (the 2 in echo foo {fd}>&2)
#ZSH_HIGHLIGHT_STYLES[arg0]="";                 # a command word other than one of those enumerated above (other than a command, precommand, alias, function, or shell builtin command).
#ZSH_HIGHLIGHT_STYLES[default]="";           #  everything else


#----------------------------- git code -----------------------------#

git_untracked_icon="📑"; # string
git_modified_icon="📝";  # string
git_commit_icon="⇡";    # string

prompt_git()
{
    git_branch_status()
    {
        #args
        #   git_total_status_len : number;
        #   git_status_count     : number;
        #   icon                 : string;
        git_branch_status_spaces() 
        {
            local git_total_status_len=$1;
            local git_status_count=$2;
            local icon=$3;

            #echo "git_total_status_len = $git_total_status_len";
            #echo "git_status_count = $git_status_count";
            #echo "icon = $icon";

            if [ $git_total_status_len -gt 0 ]; then echo "  $git_status_count $icon";
            else                                     echo "$git_status_count $icon";
            fi
        }

        #args
        #   git_total_status : string;
        git_branch_untracked_files_status()
        {
            local git_total_status=$1;
            local untracked_files=`git ls-files --others --exclude-standard | wc -l`;

            #echo "untracked_files = $untracked_files";

            if [ $untracked_files -gt 0 ];
            then
                echo "$(git_branch_status_spaces ${#git_total_status} $untracked_files $git_untracked_icon)";
            fi
        }

        #args
        #   git_total_status : string;
        git_branch_modified_files_status()
        {
            local git_total_status=$1;
            local modified_files=`git status -s -uno | wc -l`;

            #echo "modified_files = $modified_files";

            if [ $modified_files -gt 0 ];
            then
                echo "$(git_branch_status_spaces ${#git_total_status} $modified_files $git_modified_icon)";
            fi
        }

        #args
        #   git_total_status : string;
        git_branch_commit_count_status()
        {
            local git_total_status=$1;
            local commit_count=`git log --oneline @{u}.. | wc -l | awk '{ print $1 }'`;

            #echo "commit_count = $commit_count";

            if [ $commit_count -gt 0 ];
            then
                echo "$(git_branch_status_spaces ${#git_total_status} $commit_count $git_commit_icon)";
            fi
        }

            ahead=`git rev-list ${upstream}..${local} --count`
            behind=`git rev-list ${local}..${upstream} --count`
        
        if git rev-parse --is-inside-git-dir > /dev/null 2>&1;
        then
            upstream_name=`git for-each-ref --format='%(upstream:short)' $(git symbolic-ref -q HEAD)`;

            if [ -z "$upstream_name" ];
            then
                echo "%F{$git_branch_no_stream_color}(No upstream)%f";
            else
                result=``;

                result="$result$(git_branch_untracked_files_status $result)";
                result="$result$(git_branch_modified_files_status $result)";
                result="$result$(git_branch_commit_count_status $result)";

                if [ ${#result} -gt 0 ];
                then
                    echo "$result ";
                fi
            fi
        fi
    }

    echo "$(git_prompt_info) $(git_branch_status)";
}

ZSH_THEME_GIT_PROMPT_PREFIX="";
ZSH_THEME_GIT_PROMPT_SUFFIX="";
ZSH_THEME_GIT_PROMPT_DIRTY="*";
ZSH_THEME_GIT_PROMPT_CLEAN="";

#----------------------------- prompt code -----------------------------#

# background_color : T_Hex_Color
background_color="#282c34";
# text_color : T_Hex_Color
foreground_color="#7a8b9e";
# highlighting_color : T_Hex_Color
highlight_background_color="#7a8391";
# highlighting_color : T_Hex_Color
highlight_text_color="#242a30";
# user_name_background : T_Hex_Color
user_name_background="#6c354c";
# user_name_color : T_Hex_Color
user_name_color="#c1643b";
# git_status_background : T_Hex_Color
git_background="#dceb0c";
# git_status_color : T_Hex_Color
git_color="#37ab46";
# pwd_text_color : T_Hex_Color
pwd_text_color="#df7744";
# git_branch_no_stream_color : T_Hex_Color
git_branch_no_stream_color="";

#args:
#   type                  : "dash" | "triangle";
#   anchor                : "dashed-top-left" | "dashed-bottom-left" | "dashed-top-right" | "dashed-bottom-right" | "triangle-left" | "triangle-right";
#   content               : string;
#   text_color            : T_Hex_Color;
#   background_color      : T_Hex_Color;
#   next_background_color : T_Hex_Color | "";
prompt_segment()
{
    local type=$1;
    local anchor=$2;
    local content=$3;
    local text_color=$4;
    local background_color=$5;
    local next_background_color=$6;

    # args:
    #   icon : "◥" | "◢" | "◤" | "◣" | "\ue0b2" | "\ue0b0";
    coloring_end_segment_icon()
    {
        local icon=$1;

        end_segment_icon_background()
        {
            echo "$([ -z $next_background_color ] && echo "%k" || echo "%K{$next_background_color}")";
        }

        echo "$(end_segment_icon_background)%F{$background_color}$icon%{$reset_color%}";
    }

    coloring_segment_content()
    {
        echo "%K{$background_color}%F{$text_color}%B$content%b%{$reset_color%}";
    }

    prompt_segment_dash()
    {
        prompt_segment_dash_top_left()
        {
            echo "$(coloring_end_segment_icon "◥")$(coloring_segment_content)%{$reset_color%}";
        }

        prompt_segment_dash_bottom_left()
        {
            echo "$(coloring_end_segment_icon "◢")$(coloring_segment_content)%{$reset_color%}";
        }

        prompt_segment_dash_top_right()
        {
            echo "$(coloring_segment_content)$(coloring_end_segment_icon "◤")%{$reset_color%}";
        }

        prompt_segment_dash_bottom_right()
        {
            echo "$(coloring_segment_content)$(coloring_end_segment_icon "◣")%{$reset_color%}";
        }

        if   [ $anchor = "dashed-top-left" ];     then echo "$(prompt_segment_dash_top_left)";
        elif [ $anchor = "dashed-bottom-left" ];  then echo "$(prompt_segment_dash_bottom_left)";
        elif [ $anchor = "dashed-top-right" ];    then echo "$(prompt_segment_dash_top_right)";
        elif [ $anchor = "dashed-bottom-right" ]; then echo "$(prompt_segment_dash_bottom_right)";
        fi
    }

    prompt_segment_triangle()
    {

        prompt_segment_triangle_left()
        {
            echo "$(coloring_end_segment_icon "\ue0b2")$(coloring_segment_content)%{$reset_color%}";
        }

        prompt_segment_triangle_right()
        {
            echo "$(coloring_segment_content)$(coloring_end_segment_icon "\ue0b0")%{$reset_color%}";
        }

        if   [ $anchor = "triangle-left" ];  then echo "$(prompt_segment_triangle_left)";
        elif [ $anchor = "triangle-right" ]; then echo "$(prompt_segment_triangle_right)";
        fi
    }

    if [ $type = "dash" ]; then echo "$(prompt_segment_dash)";
    else                        echo "$(prompt_segment_triangle)";
    fi
}

prompt_pwd()
{
    echo "%F{$pwd_text_color}╭ %0/\n╰⎼%{$reset_color%}";
}

prompt_user_name()
{
    echo "$(prompt_segment "dash" "dashed-bottom-right" "%n" $user_name_color $user_name_background $git_background)%{$reset_color%}";
}

PROMPT='$(prompt_pwd) $(prompt_user_name)$(prompt_git) ';

RPROMPT="%(?.✔.%{$fg[red]%}✘%f) %*";
