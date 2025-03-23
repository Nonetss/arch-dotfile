#!/bin/bash

VPN_INTERFACE="vpn"

# Pedir la contraseña con un cuadro de diálogo
PASSWORD=$(zenity --password --title="Autenticación requerida")

# Si el usuario cancela, salir
if [[ -z "$PASSWORD" ]]; then
    exit 1
fi

# Comprobar si la VPN está activa
if ip link show "$VPN_INTERFACE" | grep -q "UP"; then
    echo "🔻 La VPN está activa. Desactivándola..."
    echo "$PASSWORD" | sudo -S wg-quick down "$VPN_INTERFACE"
    zenity --info --title="VPN" --text="✅ VPN desactivada."
else
    echo "🔺 La VPN está inactiva. Activándola..."
    echo "$PASSWORD" | sudo -S wg-quick up "$VPN_INTERFACE"
    zenity --info --title="VPN" --text="✅ VPN activada."
fi
