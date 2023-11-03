#!/bin/bash

# Nome do arquivo de texto
arquivo_texto="texto1.txt"

# Frases a serem extraídas
frases_a_extrair=("O dia estava lindo." "O sol brilhava no céu." "as aves cantavam.")

# Loop através das frases a serem extraídas e use grep para encontrá-las no arquivo de texto
for frase in "${frases_a_extrair[@]}"; do
  extracao=$(grep -o -i "$frase" "$arquivo_texto")
  if [ -n "$extracao" ]; then
    echo "Frase extraída: $extracao"
  fi
done
