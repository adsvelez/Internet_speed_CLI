#!/bin/bash

# Ejecutar el test de velocidad y capturar el resultado
result=$(ping 8.8.8.8 -c 4 | grep "packets transmitted")

message="Ping: $result "

notify-send "$message"
