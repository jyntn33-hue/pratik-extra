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

if [ "$ACCESS_KEY" != "GT" ]; then
    echo -e "${RED}[✗] Wrong Password!${NC}"
    exit 1
fi

echo -e "${GREEN}[✓] Access Granted!${NC}"
sleep 1

while true
do
    clear

    echo -e "${MAGENTA}PRATIK EXTRAS V7.0${NC}"
    echo ""

    echo -e "${YELLOW}[1] Panel${NC}"
    echo -e "${YELLOW}[2] Exit${NC}"
    echo ""

    read -p "Select => " option

    case $option in

    1)
        clear

        echo -e "${CYAN}═══════════════════════════════${NC}"
        echo -e "${WHITE}            PANELS${NC}"
        echo -e "${CYAN}═══════════════════════════════${NC}"
        echo ""

        echo "[A] UnOfficial Panel"
        echo "[B] Pterodactyl"
        echo "[C] Back"
        echo ""

        read -p "Select => " panel

        case $panel in

        A|a)
            echo ""
            echo -e "${CYAN}[+] Updating System...${NC}"
            apt update -y

            echo -e "${CYAN}[+] Installing Dependencies...${NC}"
            apt install git nodejs npm curl wget -y

            echo -e "${CYAN}[+] Downloading Panel...${NC}"
            git clone https://github.com/pratikgamer11/crispy-adventure

            cd crispy-adventure || exit

            echo -e "${CYAN}[+] Installing NPM Packages...${NC}"
            npm install express

            echo -e "${GREEN}[✓] Installation Completed!${NC}"
            echo -e "${GREEN}[✓] Starting Panel...${NC}"

            node .
            ;;

        B|b)
            echo ""
            echo -e "${YELLOW}[!] Pterodactyl Section Coming Soon${NC}"
            read -p "Press Enter to continue..."
            ;;

        C|c)
            continue
            ;;

        *)
            echo -e "${RED}Invalid Option!${NC}"
            sleep 1
            ;;
        esac
        ;;

    2)
        echo -e "${GREEN}Goodbye!${NC}"
        exit 0
        ;;

    *)
        echo -e "${RED}Invalid Option!${NC}"
        sleep 1
        ;;
    esac

doneecho ""
echo -e "${CYAN}═══════════════════════════════${NC}"
echo -e "${WHITE}           MAIN MENU${NC}"
echo -e "${CYAN}═══════════════════════════════${NC}"

echo ""
echo -e "${YELLOW}[1] Panels${NC}"
echo -e "${YELLOW}[2] Install Java 21${NC}"
echo -e "${YELLOW}[3] Install Cloudflared${NC}"
echo -e "${YELLOW}[4] Optional Packages${NC}"
echo -e "${YELLOW}[5] Exit${NC}"
echo ""

read -p "Select => " option

case $option in

1)
    clear

    echo -e "${CYAN}═══════════════════════════════${NC}"
    echo -e "${WHITE}            PANELS${NC}"
    echo -e "${CYAN}═══════════════════════════════${NC}"

    echo ""
    echo "[A] UnOfficial Panel"
    echo "[B] Pterodactyl"
    echo ""

    read -p "Select => " panel

    case $panel in

    A|a)
        echo ""
        echo -e "${CYAN}[+] Updating System...${NC}"
        apt update -y

        echo -e "${CYAN}[+] Installing Dependencies...${NC}"
        apt install git nodejs npm curl wget -y

        echo -e "${CYAN}[+] Downloading Panel...${NC}"
        git clone https://github.com/pratikgamer11/crispy-adventure

        cd crispy-adventure || exit

        echo -e "${CYAN}[+] Installing NPM Packages...${NC}"
        npm install express

        echo -e "${GREEN}[✓] Installation Completed!${NC}"
        echo -e "${GREEN}[✓] Starting Panel...${NC}"

        node .
        ;;

    B|b)
        echo ""
        echo -e "${CYAN}═══════════════════════════════${NC}"
        echo -e "${WHITE}         PTERODACTYL${NC}"
        echo -e "${CYAN}═══════════════════════════════${NC}"

        echo ""
        echo "[1] Install Panel"
        echo "[2] Install Wings"
        echo "[3] Install MariaDB"
        echo "[4] Back"
        echo ""

    

