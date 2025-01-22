#!/bin/bash

# Função que subtrai dois números
subtracao() {
  local num1=$1 # Primeiro parâmetro 
  local num2=$2 # Segundo parâmetro
  echo $((num1 - num2))
}

# # Exemplo de uso da função subtrai
# num1=10
# num2=3
# resultado=$(subtrai $num1 $num2)

# echo "A subtração de $num1 e $num2 é: $resultado"
