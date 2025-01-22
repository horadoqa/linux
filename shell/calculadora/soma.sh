#!/bin/bash

# Função que soma dois números
soma() {
  local num1=$1 # Primeiro parâmetro 
  local num2=$2 # Segundo parâmetro
  echo $((num1 + num2))
}

# # Exemplo de uso da função soma
# num1=5
# num2=3
# resultado=$(soma $num1 $num2)

# echo "A soma de $num1 e $num2 é: $resultado"
