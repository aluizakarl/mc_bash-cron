#!/bin/bash
# Script que verifica o uso do disco e alerta se passar de 80%

uso=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')

if [ "$uso" -ge 80 ]; then
  echo "Atenção! Uso do disco em $uso%!" #| mail -s "Alerta: Espaço em Disco" anamartins@unifeso.edu.br
else
  echo "Uso do disco em nível normal: $uso%"
fi
