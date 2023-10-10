#!/bin/bash

newfiles=()

whiptailinstalled="false"

if [[ $(which whiptail) == "whiptail not found" ]]
then
    whiptailinstalled="false"
    echo -e "\e[1;31mWhiptail not found. Please install whiptail."
else
    whiptailinstalled="true"
fi

VERSION=0.5

function version(){
    echo -e "\n\n\e[1;35mBash Rename, Version: $VERSION.\n"
}

function help(){
    echo -e "\n\e[1mBash Rename \e[0m- A utility for renaming multiple files.\n\n\n"

    echo -e "\e[1;32mFlags:"
    echo -e " \e[1m--TUI \e[0m- If used, it will use whiptail for displaying Terminal/Text UI.\n"
    echo -e " \e[1m--help, -h \e[0m- Shows this menu."
    echo -e " \e[1m--version, -v \e[0m- Shows the current version of the tool.\n\n"
    echo -e "\e[1;36mIf none of the flags are specified, it will use standard IO for communication with the user.\n"
}

if [[ $1 == "--help" || $1 == "-h" ]]
then

   help

elif [[ $1 == "--version" || $1 == "-v" ]]
then

    version

elif [[ $1 == --TUI ]]
then
    if [[ $whiptailinstalled == "true" ]]
    then
    whiptail --inputbox "Please enter the names of the files you want to rename. Whitespace separated. If there are any files that don't have their names specified, they will be named file1, file2, file3... respectively." 15 50 --title "test"
    newfiles=($?)
    echo $newfiles

    elif [[ $whiptailinstalled == "false" ]]
    then
    echo -e "\n\e[1;31mWhiptail is not installed. Cannot proceed."

    fi

fi