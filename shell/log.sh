#!/bin/bash

# Definindo o arquivo de log
LOG_FILE="app.log"

# Função para gerar log com data e hora
log_message() {
    local MESSAGE="$1"
    local TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")
    echo "$TIMESTAMP - $MESSAGE" >> "$LOG_FILE"
}

# Loop infinito simulando o processamento de tarefas
i=1
while true
do
    log_message "Processando tarefa #$i..."

    # Simulando uma operação bem-sucedida com status code 200
    log_message "Status Code: 200 - Tarefa #$i concluída com sucesso"

    # Simulando uma pausa de 2 segundos entre as tarefas
    sleep 2

    # Incrementando o número da tarefa
    ((i++))
done
