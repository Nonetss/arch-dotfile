#!/bin/bash

# Nombre de la interfaz de la VPN
VPN_INTERFACE="vpn"

# Comprobar si la VPN está activa
if ip link show "$VPN_INTERFACE" | grep -q "UP"; then
    echo "🔻 La VPN está activa. Desactivándola..."
    sudo wg-quick down "$VPN_INTERFACE"
    echo "✅ VPN desactivada."
else
    echo "🔺 La VPN está inactiva. Activándola..."
    sudo wg-quick up "$VPN_INTERFACE"
    echo "✅ VPN activada."
fi
