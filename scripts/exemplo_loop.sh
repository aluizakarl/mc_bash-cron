#!/bin/bash
# Cria pastas individuais para cada usuário listado em um arquivo

arquivo="amostras.txt"

if [ ! -f "$arquivo" ]; then
  echo "Arquivo $arquivo não encontrado!"
  exit 1
fi

while read amostra; do
  if [ ! -z "$amostra" ]; then
    mkdir -p "home_amostras/$amostra"
    echo "Diretório criado para: $amostra"
  fi
done < "$arquivo"

echo "Todos os diretórios foram criados com sucesso."
