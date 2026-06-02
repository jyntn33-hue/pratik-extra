#!/bin/bash

RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
CYAN='\033[1;36m'
MAGENTA='\033[1;35m'
WHITE='\033[1;37m'
NC='\033[0m'

clear

echo -e "${MAGENTA}"
cat << 'EOF'
██████╗ ██████╗  █████╗ ████████╗██╗██╗  ██╗
██╔══██╗██╔══██╗██╔══██╗╚══██╔══╝██║██║ ██╔╝
██████╔╝██████╔╝███████║   ██║   ██║█████╔╝
██╔═══╝ ██╔══██╗██╔══██║   ██║   ██║██╔═██╗
██║     ██║  ██║██║  ██║   ██║   ██║██║  ██╗
╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝   ╚═╝╚═╝  ╚═╝

                    V7.0
EOF

echo -e "${WHITE}          PRATIK EXTRAS${NC}"
echo -e "${MAGENTA}════════════════════════════════════════════${NC}"
echo ""

echo -e "${CYAN}═══════════════════════════════${NC}"
echo -e "${WHITE}       ACCESS REQUIRED${NC}"
echo -e "${CYAN}═══════════════════════════════${NC}"

read -s -p "Enter Password: " ACCESS_KEY
echo ""

if [ "$ACCESS_KEY" = "GT" ]; then
    echo -e "${GREEN}[✓] Login Successful${NC}"
    sleep 1
    clear
else
    echo -e "${RED}[✗] Wrong Password${NC}"
    exit 1
fi

echo -e "${GREEN}Welcome to PRATIK EXTRAS V7.0${NC}"
