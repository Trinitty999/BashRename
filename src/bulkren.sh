#!/bin/bash

if [[ $1 == "--help" || $1 == "-h" ]]
then

    echo -e "\n\e[1mBash Bulk Rename \e[0m- A utility for renaming files.\n\n\n"

    echo -e "\e[1;32mFlags:\e[0m"
    echo -e "\n \e[1m--GUI \e[0m- If used, it will use zenity for displaying Graphical UI."
    echo -e " \e[1m--TUI \e[0m- If used, it will use whiptail for displaying Terminal UI.\n"
    echo -e " \e[1m--help, -h \e[0m- Shows this menu."
    echo -e " \e[1m--version, -v \e[0m- Shows the current version of the tool.\n\n"
    echo -e "\e[1;36mIf none of the flags are specified, it will use standard IO for communication with the user.\n"
fi

