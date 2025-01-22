#!/bin/bash

# Salva o resultado em um arquivo dentro da pasta /tmp
result=/tmp/resultado_"$HOSTNAME"_$(date +%Y%m%d_%H%M%S).txt
# Salva a média em um arquivo dentro da pasta /tmp
avg=/tmp/media_"$HOSTNAME"_$(date +%Y%m%d_%H%M%S).txt
d_ini=$(date +%s)
t=0

# Barra de título
header="tempo                | cpu(%idle)   | mem(%free)   | load-avg   | tcp"
header_format="%-20s | %-12s | %-12s | %-10s | %-3s"

i=0

echo -e "$header"

if [ $# -ne 2 ]
then
  echo -e "Utilização correta: ./monitor.sh <tempo> <iteracao>\n"
  echo "       <tempo>  -  Tempo total da bateria. Valor em segundos."
  echo "    <iteracao>  -  Tempo de coleta das métricas. Valor em segundos."
  exit 1
fi

# Inicializando variáveis para as médias
total_cpu=0
total_mem=0
total_load=0
total_tcp=0
count=0

while [ $t -le $1 ]
do
  if [ $i -eq 20 ]; then
    echo -e "$header"
    i=0
  fi

  # Coletando as métricas
  loadavg=$(cut -d' ' -f1 /proc/loadavg)
  idlecpu=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')
  memory=$(free | grep Mem | awk '{print $3/$2 * 100.0}')
  tcpinuse=$(cat /proc/net/sockstat | grep TCP: | cut -d' ' -f3)

  # Capturando o timestamp
  timestamp=$(date +"%Y/%m/%d %T")

  # Exibindo os dados formatados
  printf "$header_format\n" "$timestamp" "$idlecpu" "$memory" "$loadavg" "$tcpinuse"
  
  # Registrando resultados
  echo "$timestamp,$idlecpu,$memory,$loadavg,$tcpinuse" >> "$result"

  let "i++"

  # Calculando os totais para as médias
  total_cpu=$(echo "$total_cpu + $idlecpu" | bc)
  total_mem=$(echo "$total_mem + $memory" | bc)
  total_load=$(echo "$total_load + $loadavg" | bc)
  total_tcp=$(echo "$total_tcp + $tcpinuse" | bc)
  let "count++"

  d_end=$(date +%s)
  t=$(expr $d_end - $d_ini)

  sleep $2 # Dorme durante o tempo de iteração
done

# Calculando as médias
avg_cpu=$(echo "scale=2; $total_cpu / $count" | bc)
avg_memoria=$(echo "scale=2; $total_mem / $count" | bc)
avg_load=$(echo "scale=2; $total_load / $count" | bc)
avg_tcp=$(echo "scale=2; $total_tcp / $count" | bc)

# Exibindo as médias
echo
echo "Média de CPU (idle):       $avg_cpu %"
echo "Média de Memória (free):   $avg_memoria %"
echo "Média de loadavg:          $avg_load"
echo "Média de conexões TCP:     $avg_tcp"
echo

# Salvando no arquivo de médias
echo "$avg_cpu" > "$avg"
echo "$avg_memoria" >> "$avg"
echo "$avg_load" >> "$avg"
echo "$avg_tcp" >> "$avg"

# Saída para fácil cópia/colagem
echo -e "Copy/Paste:\n$avg_cpu\n$avg_memoria\n$avg_load\n$avg_tcp" | tee -a "$avg"

# EOF
