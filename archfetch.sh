#!/bin/bash

# Códigos de colores y formato
BOLD=$(tput bold)
RESET=$(tput sgr0)
BLUE="\033[34m"  # Solo el color azul
RESET_COLOR="\033[0m"  # Para resetear el color

# Función para verificar si un comando está disponible
command_exists() {
  command -v "$1" &>/dev/null
}

# Obtener los detalles del sistema
OS=$(uname -o)
HOSTNAME=$(hostname)
KERNEL=$(uname -r)
UPTIME=$(uptime -p)
PACKAGES=$(pacman -Qq | wc -l)
SHELL=$(basename "$SHELL") $(bash --version | head -n 1 | awk '{print $4}' | cut -d'(' -f1)
RESOLUTION=""
DE=$(echo $XDG_CURRENT_DESKTOP)
WM=""
THEME=$(gsettings get org.gnome.desktop.interface gtk-theme | tr -d "'")
ICONS=$(gsettings get org.gnome.desktop.interface icon-theme | tr -d "'")
TERMINAL=$(echo $TERM)
CPU=$(lscpu | grep "Model name" | sed 's/Model name:[ ]*//')
GPU=$(lspci | grep VGA | awk -F ': ' '{print $2}')
MEMORY=$(free -h | grep Mem | awk '{print $3 " / " $2}')
STORAGE=$(df -h / | tail -1 | awk '{print $3 " / " $2 " (" $5 " used)"}')

# Solo obtener la resolución si xrandr está disponible
if command_exists "xrandr"; then
  RESOLUTION=$(xrandr | grep '*' | awk '{print $1}')
fi

# Solo obtener el gestor de ventanas (WM) si wmctrl está disponible
if command_exists "wmctrl"; then
  WM=$(wmctrl -m | grep Name | awk '{print $3}')
fi

# Mostrar solo los datos si están disponibles
[ -n "$OS" ] && echo -e "${BOLD}${BLUE}OS${RESET}: $OS"
[ -n "$HOSTNAME" ] && echo -e "${BOLD}${BLUE}Host${RESET}: $HOSTNAME"
[ -n "$KERNEL" ] && echo -e "${BOLD}${BLUE}Kernel${RESET}: $KERNEL"
[ -n "$UPTIME" ] && echo -e "${BOLD}${BLUE}Uptime${RESET}: $UPTIME"
[ -n "$PACKAGES" ] && echo -e "${BOLD}${BLUE}Packages${RESET}: $PACKAGES (pacman)"
[ -n "$SHELL" ] && echo -e "${BOLD}${BLUE}Shell${RESET}: $SHELL"
[ -n "$RESOLUTION" ] && echo -e "${BOLD}${BLUE}Resolution${RESET}: $RESOLUTION"
[ -n "$DE" ] && echo -e "${BOLD}${BLUE}DE${RESET}: $DE"
[ -n "$WM" ] && echo -e "${BOLD}${BLUE}WM${RESET}: $WM"
[ -n "$THEME" ] && echo -e "${BOLD}${BLUE}Theme${RESET}: $THEME [GTK2/3]"
[ -n "$ICONS" ] && echo -e "${BOLD}${BLUE}Icons${RESET}: $ICONS [GTK2/3]"
[ -n "$TERMINAL" ] && echo -e "${BOLD}${BLUE}Terminal${RESET}: $TERMINAL"
[ -n "$CPU" ] && echo -e "${BOLD}${BLUE}CPU${RESET}: $CPU"
[ -n "$GPU" ] && echo -e "${BOLD}${BLUE}GPU${RESET}: $GPU"
[ -n "$MEMORY" ] && echo -e "${BOLD}${BLUE}Memory${RESET}: $MEMORY"
[ -n "$STORAGE" ] && echo -e "${BOLD}${BLUE}Storage${RESET}: $STORAGE"
