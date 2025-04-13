# 📁 Manual Básico: 

## ✅ O que é o `rsync`?

`rsync` é uma ferramenta poderosa para transferir e sincronizar arquivos e diretórios entre sistemas local ou remotamente, com suporte a compressão, exclusão, filtros, e mais.

Usando `rsync` para Sincronizar Arquivos

---

## 🛠️ Comando Básico

```bash
rsync -avh origem/ destino/
```

### Explicação das opções:
- `-a` → Modo arquivamento (preserva permissões, links simbólicos, etc.)
- `-v` → Verbose (mostra o progresso)
- `-h` → Human readable (exibe tamanhos de forma legível, tipo 10K, 1M, etc.)
- `-z` → 

---

## 🔁 Sincronizando com um servidor remoto

```bash
rsync -avh /caminho/origem/ usuario@servidor:/caminho/destino/
```

Para fazer o caminho inverso (do servidor para o local):

```bash
rsync -avh usuario@servidor:/caminho/origem/ /caminho/local/
```

---

## 🔒 Usando SSH para segurança

O `rsync` usa SSH por padrão ao sincronizar com hosts remotos:

```bash
rsync -avhe ssh /origem/ usuario@host:/destino/
```

---

## 🧹 Excluindo arquivos específicos

```bash
rsync -avh --exclude '*.log' origem/ destino/
```

---

## 🧪 Testando sem copiar (modo dry-run)

```bash
rsync -avhn origem/ destino/
```

---

Agora, se o seu objetivo era mostrar como **usar o `lsyncd` com `rsync`**, posso ajudar com um exemplo de configuração real no estilo `/etc/lsyncd/lsyncd.conf.lua`. Quer isso também?


## ✅ O que é o `lsyncd`?

O **Live Syncing Daemon** (um serviço para monitorar e sincronizar arquivos em tempo real).

## 📦 Instalação (caso não tenha ainda)

Ubuntu/Debian:

```bash
sudo apt install lsyncd
```

RHEL/CentOS:

```bash
sudo yum install lsyncd
```

---

## O comando para a sincronização:

```bash
lsyncd -rsync origem destino

18:50:39 Normal: --- Startup, daemonizing ---
```

### ✅ Estrutura recomendada:

Você cria um arquivo de configuração, normalmente chamado `lsyncd.conf.lua`, e o roda assim:

## 🛠️ Exemplo básico de configuração (`lsyncd.conf.lua`)

```lua
settings {
    logfile    = "/var/log/lsyncd.log",
    statusFile = "/var/log/lsyncd.status",
    statusInterval = 10,
}

sync {
    default.rsync,
    source = "/home/rfahham/projetos/linux/rsync/origem",
    target = "/home/rfahham/projetos/linux/rsync/destino",
    -- delay = 1,
    -- maxDelays = 5,
    rsync = {
        archive = true,
        compress = true,
        verbose = true,
    }
}
```

### 🧾 Explicação:
- `source` → diretório que será monitorado
- `target` → diretório de destino
- `rsync.archive = true` → equivale ao `-a`
- `rsync.compress = true` → equivale ao `-z`
- `logfile` e `statusFile` → ajudam a depurar e monitorar

---

## ▶️ Como rodar

Depois de criar o arquivo (ex: `lsyncd.conf.lua`):

## Execute com log visível (debug)

Roda agora só uma instância, com debug no terminal:

```bash
sudo lsyncd -nodaemon -log Exec lsyncd.conf.lua
```

## Você deve ver no terminal algo tipo:

```bash
19:18:03 Normal: --- Startup ---
19:18:03 Normal: recursive startup rsync: /home/rfahham/projetos/linux/rsync/origem/ -> /home/rfahham/projetos/linux/rsync/destino/
19:18:03 Exec: /usr/bin/rsync [--delete] [--ignore-errors] [-ztvgpsolD] [-r] [/home/rfahham/projetos/linux/rsync/origem/] [/home/rfahham/projetos/linux/rsync/destino/]
sending incremental file list

sent 89 bytes  received 12 bytes  202.00 bytes/sec
total size is 15  speedup is 0.15
19:18:03 Normal: Startup of /home/rfahham/projetos/linux/rsync/origem/ -> /home/rfahham/projetos/linux/rsync/destino/ finished.
19:18:36 Normal: Calling rsync with filter-list of new/modified files/dirs
/teste-final.txt
/
19:18:36 Exec: /usr/bin/rsync [<] [/teste-final.txt
/] [-ztvgpsolD] [-r] [--delete] [--ignore-errors] [--force] [--from0] [--include-from=-] [--exclude=*] [/home/rfahham/projetos/linux/rsync/origem/] [/home/rfahham/projetos/linux/rsync/destino/]
19:18:36 Exec: one-sweeped pipe
sending incremental file list
teste-final.txt

sent 163 bytes  received 35 bytes  396.00 bytes/sec
total size is 20  speedup is 0.10
19:18:36 Normal: Finished a list after exitcode: 0
```

Em outro terminal, faça uma modificação:

```bash
echo "agora vai" > origem/sincroniza.txt
```

Você deve ver no terminal algo tipo:

```bash
Normal: Calling rsync with filter-list...
Exec: rsync -avz origem/ destino/
````