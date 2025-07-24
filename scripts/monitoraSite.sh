#!/bin/bash
# Verifica se um site está online

if [ ! -e $HOME/logs ]; then
	mkdir $HOME/logs
fi

URL="https://google.com"
STATUS=$(curl -Is $URL | head -n 1)

if [[ "$STATUS" != *"200"* ]]; then
  echo "$(date): $URL está fora do ar!" >> $HOME/logs/site_monitoramento.log
fi

