#!/bin/bash

PINK='\033[1;95m'
PURPLE='\033[1;35m'
GREEN='\033[1;92m'
CYAN='\033[1;96m'
WHITE='\033[1;97m'
RED='\033[1;91m'
NC='\033[0m'

while true; do

clear

echo -e "${PINK}"
cat << "EOF"

██████╗ ██████╗  █████╗ ████████╗██╗██╗  ██╗
██╔══██╗██╔══██╗██╔══██╗╚══██╔══╝██║██║ ██╔╝
██████╔╝██████╔╝███████║   ██║   ██║█████╔╝
██╔═══╝ ██╔══██╗██╔══██║   ██║   ██║██╔═██╗
██║     ██║  ██║██║  ██║   ██║   ██║██║  ██╗
╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝   ╚═╝╚═╝  ╚═╝

EOF

echo -e "${PURPLE}                    V7.0${NC}"
echo -e "${GREEN}                PRATIK EXTRAS${NC}"
echo -e "${PINK}════════════════════════════════════════════${NC}"
echo ""

echo -e "${CYAN}System Information${NC}"
echo "OS      : $(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')"
echo "RAM     : $(free -h | awk '/Mem:/ {print $2}')"
echo "CPU     : $(nproc) Cores"
echo "User    : $(whoami)"
echo ""

echo "[1] Panel"
echo "[2] Exit"
echo ""

read -p "Select => " OPTION

case $OPTION in

1)
    clear

    echo "=============================="
    echo "          PANELS"
    echo "=============================="
    echo ""
    echo "[1] UnOfficial Panel"
    echo "[2] Back"
    echo ""

    read -p "Select => " PANEL

    case $PANEL in

    1)
        echo ""
        echo "[+] Updating System..."
        apt update -y

        echo "[+] Installing Dependencies..."
        apt install -y git nodejs npm curl wget

        echo "[+] Downloading Panel..."
        rm -rf crispy-adventure
        git clone https://github.com/pratikgamer11/crispy-adventure

        cd crispy-adventure || exit

        echo "[+] Installing Packages..."
        npm install express

        echo "[✓] Installation Complete!"
        echo "[✓] Starting Panel..."

        node .
        exit
        ;;

    2)
        ;;
    esac
    ;;

2)
    echo "Goodbye!"
    exit 0
    ;;

*)
    echo "Invalid Option!"
    sleep 1
    ;;

esac

done    echo ""

    echo -e "${WHITE}[1] Install UnOfficial Panel${NC}"
    echo -e "${WHITE}[2] Exit${NC}"
    echo ""

    read -p "Select => " OPTION

    case $OPTION in

    1)
        echo ""
        echo -e "${CYAN}[+] Updating System...${NC}"
        apt update -y

        echo -e "${CYAN}[+] Installing Dependencies...${NC}"
        apt install -y git nodejs npm curl wget

        echo -e "${CYAN}[+] Downloading Panel...${NC}"

        rm -rf crispy-adventure
        git clone https://github.com/pratikgamer11/crispy-adventure

        cd crispy-adventure || exit

        echo -e "${CYAN}[+] Installing Packages...${NC}"
        npm install express

        echo -e "${GREEN}[✓] Installation Complete!${NC}"
        echo -e "${GREEN}[✓] Starting Panel...${NC}"

        node .
        exit
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

doneif [ "$PASS" != "GT" ]; then
    echo -e "${RED}[✗] Wrong Password!${NC}"
    exit 1
fi

echo -e "${GREEN}[✓] Access Granted!${NC}"
sleep 1

while true
do
    clear

    echo -e "${PINK}PRATIK EXTRAS V7.0${NC}"
    echo ""
    echo -e "${WHITE}[1] Panels${NC}"
    echo -e "${WHITE}[2] Exit${NC}"
    echo ""

    read -p "Select => " OPTION

    case $OPTION in

    1)
        clear

        echo -e "${PURPLE}════════════════════════════${NC}"
        echo -e "${GREEN}         PANELS${NC}"
        echo -e "${PURPLE}════════════════════════════${NC}"
        echo ""

        echo "[A] UnOfficial Panel"
        echo "[B] Pterodactyl"
        echo "[C] Back"
        echo ""

        read -p "Select => " PANEL

        case $PANEL in

        A|a)
            echo ""
            echo -e "${CYAN}[+] Updating System...${NC}"
            apt update -y

            echo -e "${CYAN}[+] Installing Dependencies...${NC}"
            apt install -y git nodejs npm curl wget

            echo -e "${CYAN}[+] Downloading Panel...${NC}"

            rm -rf crispy-adventure
            git clone https://github.com/pratikgamer11/crispy-adventure

            cd crispy-adventure || exit

            npm install express

            echo -e "${GREEN}[✓] Starting Panel...${NC}"

            node .
            ;;

        B|b)
            echo ""
            echo -e "${YELLOW}Pterodactyl Section Coming Soon${NC}"
            read -p "Press Enter..."
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

done    if [ "$EUID" -ne 0 ]; then 
        echo -e "${RED}[✗] Please run as root (use sudo)${NC}"
        exit 1
    fi
}

# Function to install dependencies
install_deps() {
    echo -e "${CYAN}[*] Checking system type...${NC}"
    
    if command -v apt &> /dev/null; then
        echo -e "${GREEN}[✓] Debian/Ubuntu detected${NC}"
        echo -e "${CYAN}[*] Updating package list...${NC}"
        apt update -y > /dev/null 2>&1        
        echo -e "${CYAN}[*] Installing required dependencies...${NC}"
        apt install -y git nodejs npm curl wget build-essential > /dev/null 2>&1
        
        # Verify installations
        if ! command -v node &> /dev/null; then
            echo -e "${RED}[✗] Node.js installation failed${NC}"
            return 1
        fi
        if ! command -v npm &> /dev/null; then
            echo -e "${RED}[✗] npm installation failed${NC}"
            return 1
        fi
    else
        echo -e "${RED}[✗] Unsupported system. Only Debian/Ubuntu supported.${NC}"
        return 1
    fi
    
    echo -e "${GREEN}[✓] All dependencies installed successfully${NC}"
    return 0
}

# Function to install unofficial panel
install_unofficial_panel() {
    clear
    echo -e "${MAGENTA}════════════════════════════════════════════${NC}"
    echo -e "${WHITE}       Installing UnOfficial Panel${NC}"
    echo -e "${MAGENTA}════════════════════════════════════════════${NC}"
    echo ""
    
    # Install dependencies first
    install_deps
    if [ $? -ne 0 ]; then
        echo -e "${RED}[✗] Dependency installation failed${NC}"
        read -p "  Press Enter to continue..."
        return
    fi
    
    echo -e "${CYAN}[*] Downloading Panel from GitHub...${NC}"
    
    # Remove old version if exists
    if [ -d "crispy-adventure" ]; then
        echo -e "${YELLOW}[!] Removing old version...${NC}"
        rm -rf crispy-adventure
    fi
    
    # Clone repository
    if git clone https://github.com/pratikgamer11/crispy-adventure 2>/dev/null; then
        echo -e "${GREEN}[✓] Download completed${NC}"
    else        echo -e "${RED}[✗] Failed to download panel!${NC}"
        read -p "  Press Enter to continue..."
        return
    fi
    
    cd crispy-adventure || {
        echo -e "${RED}[✗] Cannot access directory${NC}"
        read -p "  Press Enter to continue..."
        return
    }
    
    echo -e "${CYAN}[*] Installing Node.js packages...${NC}"
    if npm install express 2>/dev/null; then
        echo -e "${GREEN}[✓] Packages installed${NC}"
    else
        echo -e "${RED}[✗] Package installation failed${NC}"
        read -p "  Press Enter to continue..."
        return
    fi
    
    clear
    echo ""
    echo -e "${MAGENTA}════════════════════════════════════════════${NC}"
    echo -e "${GREEN}[✓] Installation Complete!${NC}"
    echo -e "${MAGENTA}════════════════════════════════════════════${NC}"
    echo ""
    echo -e "${GREEN}[*] Starting Panel...${NC}"
    echo -e "${YELLOW}Press ${RED}Ctrl+C ${YELLOW}to stop the panel${NC}"
    echo ""
    
    # Start node in background and capture PID
    node . &
    NODE_PID=$!
    
    echo -e "${CYAN}[*] Panel started with PID: $NODE_PID${NC}"
    echo -e "${CYAN}[*] Waiting for panel to initialize...${NC}"
    sleep 3
    
    # Return to menu instead of hanging
    echo -e "${GREEN}[✓] Panel is running in background${NC}"
    echo -e "${YELLOW}[!] To stop panel, use: kill $NODE_PID${NC}"
    read -p "  Press Enter to return to menu..."
    
    # Optional: Kill the node process when returning to menu
    # kill $NODE_PID 2>/dev/null
}

# Main authentication
check_root
show_banner
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
echo -e "${GREEN}  Welcome back, Pratik!${NC}"
sleep 1

# Main menu loop
while true; do
    show_banner
    
    echo -e "  ${YELLOW}[1]${NC} ${WHITE}Panels Management${NC}"
    echo -e "  ${YELLOW}[2]${NC} ${WHITE}System Info${NC}"
    echo -e "  ${YELLOW}[3]${NC} ${WHITE}Exit${NC}"
    echo ""
    echo -e "${MAGENTA}════════════════════════════════════════════${NC}"
    echo ""
    read -p "  Select Option => " option

    case $option in
        1)
            clear
            echo -e "${CYAN}═══════════════════════════════${NC}"
            echo -e "${WHITE}           PANELS${NC}"
            echo -e "${CYAN}═══════════════════════════════${NC}"
            echo ""
            echo -e "  ${YELLOW}[A]${NC} ${WHITE}UnOfficial Panel (Crispy Adventure)${NC}"
            echo -e "  ${YELLOW}[B]${NC} ${WHITE}Pterodactyl Panel (Coming Soon)${NC}"
            echo -e "  ${YELLOW}[C]${NC} ${WHITE}Back to Main Menu${NC}"
            echo ""
            echo -e "${CYAN}═══════════════════════════════${NC}"
            echo ""
            read -p "  Select Panel => " panel

            case $panel in                A|a)
                    install_unofficial_panel
                    ;;
                B|b)
                    clear
                    echo -e "${MAGENTA}════════════════════════════════════════════${NC}"
                    echo -e "${WHITE}       Pterodactyl Panel${NC}"
                    echo -e "${MAGENTA}════════════════════════════════════════════${NC}"
                    echo ""
                    echo -e "${YELLOW}[!] This feature is under development${NC}"
                    echo -e "${CYAN}[*] Expected release: Next update${NC}"
                    echo ""
                    read -p "  Press Enter to continue..."
                    ;;
                C|c)
                    continue
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
            echo -e "${CYAN}═══════════════════════════════${NC}"
            echo -e "${WHITE}         SYSTEM INFO${NC}"
            echo -e "${CYAN}═══════════════════════════════${NC}"
            echo ""
            echo -e "${GREEN}OS:${NC} $(lsb_release -ds 2>/dev/null || cat /etc/*release 2>/dev/null | head -n1)"
            echo -e "${GREEN}Kernel:${NC} $(uname -r)"
            echo -e "${GREEN}Uptime:${NC} $(uptime -p 2>/dev/null || uptime)"
            echo -e "${GREEN}Memory Usage:${NC} $(free -h | awk '/^Mem:/ {print $3 "/" $2}')"
            echo -e "${GREEN}Disk Usage:${NC} $(df -h / | awk 'NR==2 {print $3 "/" $2}')"
            echo ""
            read -p "  Press Enter to continue..."
            ;;

        3)
            clear
            echo -e "${MAGENTA}"
            cat << 'EOF'
██████╗ ██████╗  █████╗ ████████╗██╗██╗  ██╗
██╔══██╗██╔══██╗██╔══██╗╚══██╔══╝██║██║ ██╔╝
██████╔╝██████╔╝███████║   ██║   ██║█████╔╝
██╔═══╝ ██╔══██╗██╔══██║   ██║   ██║██╔═██╗
██║     ██║  ██║██║  ██║   ██║   ██║██║  ██╗
╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝   ╚═╝╚═╝  ╚═╝EOF
            echo ""
            echo -e "${MAGENTA}════════════════════════════════════════════${NC}"
            echo -e "${GREEN}          Thank You for using!${NC}"
            echo -e "${MAGENTA}════════════════════════════════════════════${NC}"
            echo ""
            echo -e "${CYAN}        See you next time, Pratik!${NC}"
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
doneecho -e "${WHITE}       ${BOLD}ACCESS REQUIRED${NC}"
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

    
;;;
