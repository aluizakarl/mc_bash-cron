#!/bin/bash
# Faz backup da pasta Documentos para uma pasta de segurança

origem="$HOME/Documentos"
destino="$HOME/Backup"
data=$(date +%F)

mkdir -p $destino
cp -r "$origem" "$destino/backup-$data"

echo "Backup concluído para $destino/backup-$data"
