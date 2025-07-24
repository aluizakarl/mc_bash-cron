#!/bin/bash
# Verifica se um site está online

URL="https://exemplo.com"
STATUS=$(curl -Is $URL | head -n 1)

if [[ "$STATUS" != *"200"* ]]; then
  echo "$(date): $URL está fora do ar!" >> $HOME/logs/site_monitoramento.log
fi

