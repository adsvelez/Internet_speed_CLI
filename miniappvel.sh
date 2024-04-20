#!/bin/bash

# Ejecutar el test de velocidad y capturar el resultado
result=$(speedtest-cli --simple)

# Extraer los valores de descarga, subida y ping del resultado
download=$(echo "$result" | awk '/Download/{print $2}')
upload=$(echo "$result" | awk '/Upload/{print $2}')
ping=$(echo "$result" | awk '/Ping/{print $2}')

# Construir el mensaje para mostrar en el aviso
message="Speedtest Result:
Download: $download Mbps
Upload: $upload Mbps
Ping: $ping ms"

# Mostrar el aviso en pantalla
notify-send "Speedtest Result" "$message"
