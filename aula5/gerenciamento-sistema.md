# Gerenciamento de Sistema no Linux

Aqui está a documentação detalhada com exemplos para os comandos de **gerenciamento de sistema** no Linux:

---

## 1. **apt update - Atualiza a lista de pacotes disponíveis**

O comando `apt update` é utilizado para atualizar a lista de pacotes disponíveis nos repositórios configurados no seu sistema. Esse comando não instala ou atualiza pacotes, ele apenas atualiza a base de dados do sistema.

### Exemplo de Uso:
```bash
sudo apt update
```

Isso irá atualizar a lista de pacotes disponíveis para o sistema.

#### Exemplo com mais detalhes:
```bash
sudo apt update -y
```

O `-y` automaticamente confirma qualquer solicitação de atualização.

---

## 2. **apt upgrade - Atualiza os pacotes instalados**

O comando `apt upgrade` é utilizado para atualizar os pacotes instalados no sistema para as versões mais recentes disponíveis nos repositórios.

### Exemplo de Uso:
```bash
sudo apt upgrade
```

Isso irá verificar quais pacotes precisam ser atualizados e solicitará sua confirmação para continuar com a atualização.

#### Exemplo com a opção `-y` (para confirmar automaticamente):
```bash
sudo apt upgrade -y
```

O `-y` confirma automaticamente todas as atualizações, sem necessidade de confirmação do usuário.

---

## 3. **top - Monitora processos em tempo real**

O comando `top` exibe uma lista dinâmica de processos em execução no sistema, mostrando o uso de CPU, memória e outras estatísticas importantes em tempo real.

### Exemplo de Uso:
```bash
top
```

Isso exibe uma lista de processos ativos no terminal com informações como PID (ID do processo), uso de CPU, uso de memória e outros detalhes.

#### Exemplo com a opção `-u` (filtrar por usuário):
```bash
top -u usuario
```

Isso exibe apenas os processos pertencentes ao usuário `usuario`.

---

## 4. **ps - Mostra processos em execução**

O comando `ps` (process status) exibe uma lista de processos em execução no momento. Ele pode ser usado de várias maneiras para mostrar diferentes tipos de informações sobre os processos.

### Exemplo de Uso:
```bash
ps aux
```

Isso exibe uma lista detalhada de todos os processos em execução no sistema, incluindo informações como o usuário, PID, uso de CPU, uso de memória, etc.

#### Exemplo para mostrar apenas o processo de um usuário específico:
```bash
ps -u usuario
```

Isso exibe os processos em execução do usuário `usuario`.

---

## 5. **kill - Encerra processos manualmente**

O comando `kill` é utilizado para encerrar processos em execução no sistema. Ele envia um sinal para o processo especificado, informando que deve ser encerrado.

### Exemplo de Uso:
```bash
kill PID
```

Substitua `PID` pelo ID do processo que você deseja encerrar. Esse comando envia um sinal `TERM` para o processo, pedindo para que ele seja encerrado.

#### Exemplo com um sinal de força (`-9`):
```bash
kill -9 PID
```

Isso envia um sinal `KILL` forçado para o processo, forçando seu encerramento imediato.

---

## 6. **df - Mostra o uso de disco**

O comando `df` (disk free) exibe informações sobre o uso de espaço em disco para as partições montadas no sistema.

### Exemplo de Uso:
```bash
df
```

Isso exibe o uso de disco para todas as partições montadas no sistema, mostrando o espaço total, utilizado e disponível.

#### Exemplo com a opção `-h` (formato legível para humanos):
```bash
df -h
```

Isso exibe o uso de disco em um formato legível para humanos, utilizando unidades como GB, MB, etc.

---

## 7. **du - Detalha o uso de espaço por diretório**

O comando `du` (disk usage) exibe o uso de espaço em disco por diretório e seus arquivos. Ele é útil para descobrir quais diretórios estão consumindo mais espaço no sistema.

### Exemplo de Uso:
```bash
du /caminho/do/diretorio
```

Isso exibe o uso de espaço em disco para o diretório `/caminho/do/diretorio`.

#### Exemplo com a opção `-h` (formato legível para humanos):
```bash
du -h /caminho/do/diretorio
```

Isso exibe o uso de espaço de forma legível para humanos, como em KB, MB, GB, etc.

#### Exemplo para ver o uso de espaço total de um diretório:
```bash
du -sh /caminho/do/diretorio
```

A opção `-s` mostra apenas o total de espaço ocupado, e `-h` exibe de forma legível.

---

## 8. **free - Exibe a memória disponível**

O comando `free` exibe informações sobre o uso de memória no sistema, incluindo memória RAM e swap.

### Exemplo de Uso:
```bash
free
```

Isso exibe o uso de memória total, utilizado, livre, e a quantidade de memória swap.

#### Exemplo com a opção `-h` (formato legível para humanos):
```bash
free -h
```

Isso exibe a memória em um formato legível, utilizando unidades como MB, GB, etc.

---

## 9. **uptime - Informa há quanto tempo o sistema está ativo**

O comando `uptime` exibe há quanto tempo o sistema está em execução, além de mostrar a carga média do sistema nos últimos 1, 5 e 15 minutos.

### Exemplo de Uso:
```bash
uptime
```

Isso exibe a duração do tempo desde o último boot do sistema, juntamente com a carga média.

---

## 10. **reboot - Reinicia o sistema**

O comando `reboot` reinicia o sistema operacional. Ele é útil quando você precisa reiniciar o computador por qualquer motivo.

### Exemplo de Uso:
```bash
sudo reboot
```

Isso reinicia o sistema imediatamente.

---

## 11. **shutdown - Desliga o sistema**

O comando `shutdown` é utilizado para desligar o sistema de forma segura. Ele permite especificar um horário para desligamento ou pode ser usado imediatamente.

### Exemplo de Uso (desligamento imediato):
```bash
sudo shutdown now
```

Isso desliga o sistema imediatamente.

#### Exemplo para desligar o sistema após 10 minutos:
```bash
sudo shutdown +10
```

Isso desliga o sistema após 10 minutos. Você pode substituir `+10` por outro valor de tempo, como `+30` para 30 minutos.

#### Exemplo para reiniciar o sistema:
```bash
sudo shutdown -r now
```

Isso reinicia o sistema imediatamente.

---

### Resumo dos Comandos:

| Comando           | Descrição                                | Exemplo                                    |
|-------------------|------------------------------------------|--------------------------------------------|
| `apt update`      | Atualiza a lista de pacotes disponíveis  | `sudo apt update`                         |
| `apt upgrade`     | Atualiza os pacotes instalados           | `sudo apt upgrade`                        |
| `top`             | Monitora processos em tempo real         | `top`                                      |
| `ps`              | Exibe processos em execução              | `ps aux`                                   |
| `kill`            | Encerra processos manualmente            | `kill PID`                                |
| `df`              | Exibe o uso de disco                     | `df -h`                                   |
| `du`              | Detalha o uso de espaço por diretório    | `du -h /caminho/do/diretorio`             |
| `free`            | Exibe o uso de memória                   | `free -h`                                 |
| `uptime`          | Informa o tempo de atividade do sistema  | `uptime`                                  |
| `reboot`          | Reinicia o sistema                       | `sudo reboot`                             |
| `shutdown`        | Desliga o sistema                        | `sudo shutdown now`                       |

---

Com esses comandos, você pode gerenciar e monitorar o sistema Linux de maneira eficiente.