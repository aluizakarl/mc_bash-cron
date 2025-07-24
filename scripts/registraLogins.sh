#!/bin/bash
# Registra logins recentes e salva em um arquivo de log

if [ ! -e $HOME/logs ]; then
	mkdir $HOME/logs
fi

echo "Logins em $(date)" >> $HOME/logs/login.log
last -a | head -n 5 >> $HOME/logs/login.log
