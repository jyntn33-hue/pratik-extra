#!/bin/bash

# Color codes
RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
CYAN='\033[1;36m'
MAGENTA='\033[1;35m'
WHITE='\033[1;37m'
BLUE='\033[1;34m'
BOLD='\033[1m'
NC='\033[0m'

# Clear screen
clear

# Banner
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
echo -e "${CYAN}                    by Pratik${NC}"
echo -e "${MAGENTA}════════════════════════════════════════════${NC}"
echo ""

echo -e "${CYAN}═══════════════════════════════${NC}"
echo -e "${WHITE}       ${BOLD}ACCESS REQUIRED${NC}"
echo -e "${CYAN}═══════════════════════════════${NC}"
echo ""

read -s -p "  Enter Password: " ACCESS_KEY
echo ""

if [ "$ACCESS_KEY" != "GT" ]; then
    echo ""
    echo -e "${RED}[✗] Wrong Password!${NC}"
    echo -e "${RED}    Access Denied!${NC}"
    sleep 1
    exit 1
fi

echo ""
echo -e "${GREEN}[✓] Access Granted!${NC}"
echo -e "${GREEN}  Welcome back!${NC}"
sleep 1

# Main menu loop
while true; do
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

    echo ""
    echo -e "${MAGENTA}════════════════════════════════════════════${NC}"
    echo ""
    echo -e "  ${YELLOW}[1]${NC} ${WHITE}Panels${NC}"
    echo -e "  ${YELLOW}[2]${NC} ${WHITE}Exit${NC}"
    echo ""
    echo -e "${MAGENTA}════════════════════════════════════════════${NC}"
    echo ""
    read -p "  Select => " option

    case $option in
        1)
            clear

            echo -e "${CYAN}═══════════════════════════════${NC}"
            echo -e "${WHITE}           PANELS${NC}"
            echo -e "${CYAN}═══════════════════════════════${NC}"
            echo ""

            echo -e "  ${YELLOW}[A]${NC} ${WHITE}UnOfficial Panel${NC}"
            echo -e "  ${YELLOW}[B]${NC} ${WHITE}Pterodactyl${NC}"
            echo -e "  ${YELLOW}[C]${NC} ${WHITE}Back${NC}"
            echo ""
            echo -e "${CYAN}═══════════════════════════════${NC}"
            echo ""
            read -p "  Select => " panel

            case $panel in
                A|a)
                    clear
                    echo -e "${MAGENTA}════════════════════════════════════════════${NC}"
                    echo -e "${WHITE}       Installing UnOfficial Panel${NC}"
                    echo -e "${MAGENTA}════════════════════════════════════════════${NC}"
                    echo ""
                    
                    echo -e "${CYAN}[*] Updating System...${NC}"
                    apt update -y 2>/dev/null
                    
                    echo -e "${CYAN}[*] Installing Dependencies...${NC}"
                    apt install -y git nodejs npm curl wget 2>/dev/null
                    
                    echo -e "${CYAN}[*] Downloading Panel...${NC}"
                    
                    if [ -d "crispy-adventure" ]; then
                        echo -e "${YELLOW}[!] Removing old version...${NC}"
                        rm -rf crispy-adventure
                    fi
                    
                    git clone https://github.com/pratikgamer11/crispy-adventure
                    
                    if [ ! -d "crispy-adventure" ]; then
                        echo ""
                        echo -e "${RED}[✗] Failed to download panel!${NC}"
                        read -p "  Press Enter to continue..."
                        continue
                    fi
                    
                    cd crispy-adventure || exit 1
                    
                    echo -e "${CYAN}[*] Installing Packages...${NC}"
                    npm install express
                    
                    clear
                    echo ""
                    echo -e "${MAGENTA}════════════════════════════════════════════${NC}"
                    echo -e "${GREEN}[✓] Installation Complete!${NC}"
                    echo -e "${MAGENTA}════════════════════════════════════════════${NC}"
                    echo ""
                    echo -e "${GREEN}[*] Starting Panel...${NC}"
                    echo ""
                    echo -e "${YELLOW}Press ${RED}Ctrl+C ${YELLOW}to stop the panel${NC}"
                    echo ""
                    
                    node .
                    ;;

                B|b)
                    clear
                    echo -e "${MAGENTA}════════════════════════════════════════════${NC}"
                    echo -e "${WHITE}       Pterodactyl Panel${NC}"
                    echo -e "${MAGENTA}════════════════════════════════════════════${NC}"
                    echo ""
                    echo -e "${YELLOW}[!] This feature is coming soon!${NC}"
                    echo ""
                    read -p "  Press Enter to continue..."
                    ;;

                C|c)
                    ;;
                
                *)
                    echo ""
                    echo -e "${RED}[✗] Invalid Option!${NC}"
                    sleep 1
                    ;;
            esac
            ;;

        2)
            clear
            echo -e "${MAGENTA}"
            cat << 'EOF'
██████╗ ██████╗  █████╗ ████████╗██╗██╗  ██╗
██╔══██╗██╔══██╗██╔══██╗╚══██╔══╝██║██║ ██╔╝
██████╔╝██████╔╝███████║   ██║   ██║█████╔╝
██╔═══╝ ██╔══██╗██╔══██║   ██║   ██║██╔═██╗
██║     ██║  ██║██║  ██║   ██║   ██║██║  ██╗
╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝   ╚═╝╚═╝  ╚═╝
EOF

            echo ""
            echo -e "${MAGENTA}════════════════════════════════════════════${NC}"
            echo -e "${GREEN}          Thank You for using!${NC}"
            echo -e "${MAGENTA}════════════════════════════════════════════${NC}"
            echo ""
            echo -e "${CYAN}        See you next time!${NC}"
            echo ""
            echo -e "${WHITE}Exiting...${NC}"
            sleep 1
            exit 0
            ;;

        *)
            echo ""
            echo -e "${RED}[✗] Invalid Option!${NC}"
            sleep 1
            ;;
    esac
done    echo -e "${RED}[✗] Wrong Password!${NC}"
    exit 1
fi

echo -e "${GREEN}[✓] Access Granted!${NC}"
sleep 1

while true; do

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

echo ""
echo -e "${YELLOW}[1] Panels${NC}"
echo -e "${YELLOW}[2] Exit${NC}"
echo ""

read -p "Select => " option

case $option in

1)

    clear

    echo -e "${CYAN}═══════════════════════════════${NC}"
    echo -e "${WHITE}           PANELS${NC}"
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

        if [ -d crispy-adventure ]; then
            rm -rf crispy-adventure
        fi

        git clone https://github.com/pratikgamer11/crispy-adventure

        cd crispy-adventure || exit

        echo -e "${CYAN}[+] Installing Packages...${NC}"
        npm install express

        echo -e "${GREEN}[✓] Installation Complete!${NC}"
        echo -e "${GREEN}[✓] Starting Panel...${NC}"

        node .
        ;;

    B|b)

        echo ""
        echo -e "${YELLOW}[!] Pterodactyl Section Coming Soon${NC}"
        read -p "Press Enter to continue..."
        ;;

    C|c)
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

done    echo -e "${RED}[✗] Wrong Password!${NC}"
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

    

