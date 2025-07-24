#!/bin/bash
# Cria pastas individuais para cada usuário listado em um arquivo

arquivo="usuarios.txt"

if [ ! -f "$arquivo" ]; then
  echo "Arquivo $arquivo não encontrado!"
  exit 1
fi

while read nome; do
  if [ ! -z "$nome" ]; then
    mkdir -p "home_alunos/$nome"
    echo "Diretório criado para: $nome"
  fi
done < "$arquivo"

echo "Todos os diretórios foram criados com sucesso."
