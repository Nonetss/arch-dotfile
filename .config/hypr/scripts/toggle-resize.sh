#!/bin/bash

# Obtener las dimensiones del monitor activo
read -r WX WY WW WH <<< $(hyprctl monitors -j | jq -r '.[] | select(.focused == true) | "\(.x) \(.y) \(.width) \(.height)"')

# Ajustar los valores si tienes una barra (como waybar)
WAYBAR_HEIGHT=30 # Cambia este valor según la altura de tu barra
WY=$((WY + WAYBAR_HEIGHT))
WH=$((WH - WAYBAR_HEIGHT))

# Obtener el ID de la ventana activa
WINDOW=$(hyprctl clients -j | jq -r '.[] | select(.focused == true).address')

# Redimensionar y reposicionar la ventana activa
hyprctl dispatch movewindowpixel exact "$WX" "$WY" "$WINDOW"
hyprctl dispatch resizewindowpixel exact "$WW" "$WH" "$WINDOW"
