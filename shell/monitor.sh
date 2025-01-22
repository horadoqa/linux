#!/bin/bash

# Definir os limites de uso
limite_cpu=99
limite_mem=10

# Obter uso de CPU e memória
uso_cpu=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')
uso_mem=$(free | grep Mem | awk '{print $3/$2 * 100.0}')

# Verificar se os limites foram ultrapassados
if (( $(echo "$uso_cpu > $limite_cpu" | bc -l) )); then
  echo "Alerta: Uso de CPU está em $uso_cpu%, que excede o limite de $limite_cpu%!"
fi

if (( $(echo "$uso_mem > $limite_mem" | bc -l) )); then
  echo "Alerta: Uso de memória está em $uso_mem%, que excede o limite de $limite_mem%!"
fi
