#!/bin/bash

# Carregar as funções dos arquivos externos
source ./soma.sh
source ./subtracao.sh

# Perguntar ao usuário qual operação ele deseja realizar
echo "Escolha a operação que deseja realizar:"
echo "1 - Soma"
echo "2 - Subtração"
read -p "Digite o número correspondente à operação: " operacao

# Solicitar os números para a operação
read -p "Digite o primeiro número: " num1
read -p "Digite o segundo número: " num2

# Realizar a operação escolhida
case $operacao in
  1)
    resultado=$(soma $num1 $num2)
    echo "O resultado da soma de $num1 e $num2 é: $resultado"
    ;;
  2)
    resultado=$(subtracao $num1 $num2)
    echo "O resultado da subtração de $num1 e $num2 é: $resultado"
    ;;
  *)
    echo "Operação inválida!"
    ;;
esac
