#!/bin/sh

function show_menu() {
    NORMAL=`echo "\033[m"`
    MENU=`echo "\033[36m"` #Blue
    NUMBER=`echo "\033[33m"` #yellow
    FGRED=`echo "\033[41m"`
    RED_TEXT=`echo "\033[31m"`
    ENTER_LINE=`echo "\033[33m"`
    echo -e "${MENU}*********************************************${NORMAL}"
    echo -e "${MENU}**${NUMBER} 1)${MENU} git status ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 2)${MENU} git diff on staged ${NORMAL}"
    echo -e "${MENU}** ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 3)${MENU} git new tag ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 4)${MENU} git delete tag ${NORMAL}"
    echo -e "${MENU}** ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 5)${MENU} awk grep search ${NORMAL}"
    echo -e "${MENU}*********************************************${NORMAL}"
    echo -e "${ENTER_LINE}Please enter a menu option and enter or ${RED_TEXT}enter to exit. ${NORMAL}"
    read opt
}

function option_picked() {
    COLOR='\033[01;31m' # bold red
    RESET='\033[00;00m' # normal white
    MESSAGE=${@:-"${RESET}Error: No message passed"}
    echo -e "${COLOR}${MESSAGE}${RESET}"
}

clear
show_menu
while [ opt != '' ]
    do
    if [[ $opt = "" ]]; then 
        exit;
    else
        case $opt in
            1) clear;
                option_picked "Option 1 Picked";
                git status;
                exit;
                ;;

            2) clear;
                option_picked "Option 2 Picked";
                sh /Users/macgmercer/Scripts/gitdiffstaged.sh
                exit;
                ;;

            3) clear;
                option_picked "Option 3 Picked";
                sh /Users/macgmercer/Scripts/gitnewtag.sh
                exit;
                ;;

            4) clear;
                option_picked "Option 4 Picked";
                sh /Users/macgmercer/Scripts/gitdeltag.sh
                exit;
                ;;

            5) clear;
                option_picked "Option 5 Picked";
                sh /Users/macgmercer/Scripts/awkgrep.sh
                exit;
                ;;

            x) exit;
                ;;

            \n) exit;
                ;;

            *) clear;
                option_picked "Pick an option from the menu";
                show_menu;
                ;;
        esac
    fi
done


