#!/bin/bash

arquivo_texto="texto1.txt"

frases_a_extrair=("O dia estava lindo." "O sol brilhava no céu." "as aves cantavam.")

for frase in "${frases_a_extrair[@]}"; do
  extracao=$(grep -o -i "$frase" "$arquivo_texto")
  if [ -n "$extracao" ]; then
    echo "Frase extraída: $extracao"
  fi
done
