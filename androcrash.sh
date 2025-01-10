#!/bin/bash

# Color Codes
red="\e[91m"
rset="\e[0m"
grn="\e[92m"
ylo="\e[93m"
blue="\e[94m"
cyan="\e[96m"
pink="\e[95m"

# Paths
log_file="generated_links.log"

# Banner Function
banner() {
    clear
    echo -e "$cyan
    _              _                              _                
   / \\   _ __   __| |_ __ ___   ___ _ __ __ _ ___| |__   ___ _ __  
  / _ \\ | '_ \\ / _\` | '__/ _ \\ / __| '__/ _\` / __| '_ \\ / _ \\ '__| 
 / ___ \\| | | | (_| | | | (_) | (__| | | (_| \\__ \\ | | |  __/ |    
/_/   \\_\\_| |_|\\__,_|_|  \\___/ \\___|_|  \\__,_|___/_| |_|\\___|_|     
${rset}"
    echo -e "${grn}Developed by: Technical Corp${rset}"
    echo "-------------------------------------------------"
    echo
}

# Disclaimer Function
disclaimer() {
    echo -e "${red}[!] Disclaimer:${rset}"
    echo -e "${ylo}This tool is for educational and testing purposes only."
    echo -e "Do not use it for any illegal activities. The creator is not"
    echo -e "responsible for any misuse of this tool.${rset}"
    echo
}

# Function to Generate APK Link
generate_link() {
    echo -n -e "${cyan}[?] Enter the APK file name (e.g., myapp.apk): ${rset}"
    read apk_name
    if [[ -z $apk_name ]]; then
        echo -e "${red}[!] Invalid input! Please try again.${rset}"
        return
    fi
    
    # Simulated hosting link (Replace with actual hosting URL)
    apk_link="https://www.4shared.com/s/fBWdZqrn4fa"
    
    # Optional: Shorten the link (Simulated here)
    short_link="https://shrinkme.in/androcrash"
    
    echo -e "${grn}[+] APK Link Generated Successfully!${rset}"
    echo -e "${blue}Direct Link: ${apk_link}${rset}"
    echo -e "${blue}Shortened Link: ${short_link}${rset}"

    # Log the link
    echo "APK: $apk_name | Direct Link: $apk_link | Shortened Link: $short_link" >> $log_file
    echo -e "${grn}[+] Link saved to log file: $log_file${rset}"
    echo

    # Post-Generation Menu
    echo -e "${ylo}Would you like to:${rset}"
    echo -e "${grn}1. Return to the main menu${rset}"
    echo -e "${red}2. Exit the tool${rset}"
    echo
    echo -n -e "${cyan}[?] Choose an option: ${rset}"
    read choice
    if [[ $choice == "1" ]]; then
        menu
    elif [[ $choice == "2" ]]; then
        echo -e "${red}Exiting...${rset}"
        exit 0
    else
        echo -e "${red}[!] Invalid choice. Exiting...${rset}"
        exit 1
    fi
}

# View Log Function
view_logs() {
    if [[ -f $log_file ]]; then
        echo -e "${grn}[+] Generated Links:${rset}"
        cat $log_file
    else
        echo -e "${red}[!] No logs found!${rset}"
    fi
    echo
    back_to_menu
}

# Back to Menu Function
back_to_menu() {
    echo -e "${ylo}Press Enter to return to the main menu.${rset}"
    read
    menu
}

# Enhanced Menu
menu() {
    banner
    disclaimer
    echo -e "${grn}1. Generate APK Link"
    echo -e "2. View Generated Links (Log)"
    echo -e "3. View About (Tool Info)"
    echo -e "4. Exit${rset}"
    echo
    echo -n -e "${ylo}[?] Select an option: ${rset}"
    read choice
    case $choice in
    1)
        generate_link
        ;;
    2)
        view_logs
        ;;
    3)
        echo -e "${cyan}[!] Crash Defender v2.0 by Technical Corp${rset}"
        echo -e "${blue}This tool generates APK download links for testing purposes.${rset}"
        back_to_menu
        ;;
    4)
        echo -e "${red}Exiting...${rset}"
        exit 0
        ;;
    *)
        echo -e "${red}[!] Invalid Option! Try again.${rset}"
        menu
        ;;
    esac
}

# Main Execution
menu
