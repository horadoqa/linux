# Manual de Shell Script

## Introdução ao Shell Script

O **Shell Script** é um conjunto de comandos do sistema operacional que são executados de forma sequencial por um interpretador de comandos (shell). Ele permite automatizar tarefas no sistema operacional, criar programas simples ou até mesmo sistemas complexos. Os scripts são escritos em arquivos de texto e podem ser executados diretamente no terminal.

### Principais Shells

1. **Bash** (Bourne Again Shell) – O mais utilizado e padrão em muitas distribuições Linux e sistemas UNIX-like.
2. **Sh** (Bourne Shell) – Um shell mais antigo, mas ainda muito utilizado.
3. **Zsh** (Z Shell) – Uma alternativa ao Bash, com mais recursos interativos.
4. **Fish** – Shell interativo e amigável.

## Estrutura de um Shell Script

### 1. **Shebang (#!)**

A primeira linha de um shell script normalmente contém o **shebang**, que define o interpretador a ser usado para executar o script. Exemplo:

```bash
#!/bin/bash
```

Esse shebang indica que o script será executado pelo **Bash**.

### 2. **Comentários**

Comentários são importantes para documentar o script e podem ser feitos com o símbolo `#`.

Exemplo:

```bash
#!/bin/bash
# Este é um comentário
echo "Olá, Mundo!"  # Exibe uma mensagem
```

### 3. **Comandos**

Um shell script é composto por comandos que são executados sequencialmente. Exemplo:

```bash
#!/bin/bash
echo "Iniciando o script..."
ls -l
echo "Fim do script."
```

### 4. **Variáveis**

As variáveis no Shell Script são usadas para armazenar dados temporários. Não é necessário declarar o tipo de variável.

```bash
#!/bin/bash
nome="João"
echo "Olá, $nome!"
```

### 5. **Execução de Script**

Para tornar um script executável, você precisa dar permissões de execução utilizando o comando `chmod`:

```bash
chmod +x script.sh
```

Depois, o script pode ser executado com:

```bash
./script.sh
```

## Controle de Fluxo

### 1. **Condicionais**

O shell script possui instruções condicionais como `if`, `else`, `elif`, que permitem tomar decisões com base em condições.

Exemplo:

```bash
#!/bin/bash
if [ $1 -gt 10 ]; then
  echo "Número maior que 10"
else
  echo "Número menor ou igual a 10"
fi
```

### 2. **Laços de Repetição**

O Shell Script também possui estruturas de repetição, como `for`, `while` e `until`.

#### Exemplo com `for`:

```bash
#!/bin/bash
for i in {1..5}; do
  echo "Número $i"
done
```

#### Exemplo com `while`:

```bash
#!/bin/bash
contador=1
while [ $contador -le 5 ]; do
  echo "Contador $contador"
  ((contador++))
done
```

#### Exemplo com `until`:

```bash
#!/bin/bash
contador=1
until [ $contador -gt 5 ]; do
  echo "Contador $contador"
  ((contador++))
done
```

## Funções

Funções são blocos de código que podem ser reutilizados no script.

Exemplo:

```bash
#!/bin/bash
saudar() {
  echo "Olá, $1!"
}

saudar "Maria"
saudar "Pedro"
```

## Entrada e Saída

### 1. **Leitura de Dados**

Você pode ler dados do usuário usando o comando `read`.

Exemplo:

```bash
#!/bin/bash
echo "Qual é o seu nome?"
read nome
echo "Olá, $nome!"
```

### 2. **Saída de Dados**

A forma mais simples de exibir uma mensagem no terminal é usando o comando `echo`:

```bash
echo "Mensagem na tela"
```

Além disso, você pode usar o `printf` para formatação de saída:

```bash
printf "Nome: %s\nIdade: %d\n" "João" 25
```

## Manipulação de Arquivos

### 1. **Criar Arquivos**

Você pode criar e editar arquivos diretamente no script com o comando `touch`:

```bash
#!/bin/bash
touch novo_arquivo.txt
```

### 2. **Redirecionamento**

O redirecionamento permite que você envie a saída de um comando para um arquivo ou que leia de um arquivo. Isso é feito com `>`, `>>` (saída) ou `<` (entrada).

```bash
#!/bin/bash
echo "Texto de exemplo" > arquivo.txt
cat arquivo.txt
```

## Testando e Depurando

### 1. **Modo Verbose**

O `-v` permite que você visualize cada comando que o script executa:

```bash
#!/bin/bash -v
echo "Olá, Mundo!"
```

### 2. **Modo de Depuração**

O `-x` ajuda a depurar o script, mostrando cada comando e suas expansões.

```bash
#!/bin/bash -x
echo "Depurando o script..."
```

## Exemplos de Scripts Completos

### 1. **Script para Backup de Arquivos**

Este script cria um backup de arquivos de um diretório para outro.

```bash
#!/bin/bash

# Verifica se o número correto de argumentos foi fornecido
if [ $# -ne 2 ]; then
  echo "Uso: $0 <diretório origem> <diretório destino>"
  exit 1
fi

origem=$1
destino=$2

# Cria o diretório de backup, se não existir
mkdir -p "$destino"

# Copia os arquivos
cp -r "$origem"/* "$destino"

echo "Backup concluído com sucesso."
```

### 2. **Script para Monitoramento de Sistema**

Este script monitora o uso de CPU e memória do sistema e envia um alerta se algum valor ultrapassar um limite.

```bash
#!/bin/bash

# Definir os limites de uso
limite_cpu=80
limite_mem=80

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
```

---

## Conclusão

O Shell Script é uma ferramenta poderosa para automação e gerenciamento de sistemas. Através de comandos simples e estruturas de controle, você pode criar scripts que economizam tempo e tornam tarefas repetitivas mais eficientes.