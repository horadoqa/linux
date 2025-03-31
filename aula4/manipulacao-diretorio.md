# Manipulação de Diretórios no Linux

Aqui está a documentação detalhada com exemplos para os comandos de **manipulação de diretórios** no Linux:

---

## 1. **mkdir - Cria diretórios**

O comando `mkdir` (make directory) é utilizado para criar novos diretórios.

### Exemplo de Uso:
```bash
mkdir nome_do_diretorio
```

Isso cria um diretório chamado `nome_do_diretorio` no local atual.

#### Exemplo para criar múltiplos diretórios:
```bash
mkdir dir1 dir2 dir3
```

Isso cria os diretórios `dir1`, `dir2` e `dir3` no diretório atual.

#### Exemplo com a opção `-p` (criar diretórios recursivamente):
```bash
mkdir -p /caminho/para/diretorio/novo_diretorio
```

Isso cria o diretório `novo_diretorio` dentro de `/caminho/para/diretorio/`, criando também os diretórios intermediários, caso não existam.

## 2. **rmdir - Remove diretórios vazios**

O comando `rmdir` é utilizado para remover diretórios vazios. Ele não remove diretórios que contenham arquivos ou outros diretórios.

### Exemplo de Uso:
```bash
rmdir nome_do_diretorio
```

Isso remove o diretório `nome_do_diretorio` se ele estiver vazio.

## 3. **rm - Remove diretórios e conteúdo**

O comando `rm` (remove) é utilizado para remover diretórios e seus conteúdos. Quando utilizado com a opção `-r` (recursiva), ele remove o diretório e todos os seus arquivos e subdiretórios.

### Exemplo de Uso:
```bash
rm -r nome_do_diretorio
```

Isso remove o diretório `nome_do_diretorio` e todo o seu conteúdo (arquivos e subdiretórios).

#### Exemplo com a opção `-f` (forçar remoção):
```bash
rm -rf nome_do_diretorio
```

Isso remove o diretório `nome_do_diretorio` e seu conteúdo de forma forçada, sem solicitar confirmação, mesmo que o diretório contenha arquivos protegidos contra remoção.

#### Exemplo com a opção `-i` (interativo):
```bash
rm -ri nome_do_diretorio
```

Isso solicita confirmação para cada arquivo ou subdiretório antes de removê-lo.

## 4. **cd - Muda para outro diretório**

O comando `cd` (change directory) é utilizado para mudar o diretório atual no terminal.

### Exemplo de Uso:
```bash
cd /caminho/para/diretorio
```

Isso muda o diretório atual para `/caminho/para/diretorio`.

#### Exemplo de Uso para voltar ao diretório anterior:
```bash
cd -
```

Isso volta para o diretório anterior em que você estava.

#### Exemplo de Uso para ir ao diretório home do usuário:
```bash
cd ~
```

Isso leva você ao diretório home do usuário atual.

#### Exemplo de Uso para ir ao diretório raiz:
```bash
cd /
```

Isso leva você ao diretório raiz do sistema de arquivos.

## 5. **ls - Lista o conteúdo de um diretório**

O comando `ls` lista o conteúdo de um diretório. Por padrão, ele lista os arquivos e diretórios no diretório atual.

### Exemplo de Uso:
```bash
ls nome_do_diretorio
```

Isso lista os arquivos e subdiretórios dentro de `nome_do_diretorio`.

#### Exemplo com a opção `-l` (formato longo):
```bash
ls -l nome_do_diretorio
```

Isso lista os arquivos e subdiretórios com mais detalhes, como permissões, dono, grupo, tamanho e data de modificação.

#### Exemplo com a opção `-a` (incluir arquivos ocultos):
```bash
ls -a nome_do_diretorio
```

Isso lista todos os arquivos, incluindo arquivos ocultos (aqueles que começam com um ponto `.`).

#### Exemplo com a opção `-R` (listar recursivamente):
```bash
ls -R nome_do_diretorio
```

Isso lista todos os arquivos e subdiretórios, de forma recursiva, dentro de `nome_do_diretorio`.

## 6. **pwd - Exibe o diretório atual**

O comando `pwd` (print working directory) exibe o caminho absoluto do diretório atual.

### Exemplo de Uso:
```bash
pwd
```

Isso exibe o caminho completo do diretório atual, como `/home/usuario/diretorio`.

## 7. **find - Pesquisa arquivos e diretórios**

O comando `find` é utilizado para procurar arquivos e diretórios dentro de um diretório e seus subdiretórios, com base em critérios específicos.

### Exemplo de Uso:
```bash
find /caminho/do/diretorio -name "nome_do_arquivo"
```

Isso pesquisa por arquivos ou diretórios com o nome `nome_do_arquivo` dentro de `/caminho/do/diretorio` e seus subdiretórios.

#### Exemplo para encontrar diretórios apenas:
```bash
find /caminho/do/diretorio -type d -name "diretorio_busca"
```

Isso pesquisa apenas por diretórios com o nome `diretorio_busca`.

#### Exemplo para encontrar arquivos apenas:
```bash
find /caminho/do/diretorio -type f -name "arquivo_busca.txt"
```

Isso pesquisa apenas por arquivos chamados `arquivo_busca.txt`.

## 8. **chmod - Modifica permissões de diretórios**

O comando `chmod` (change mode) é utilizado para alterar as permissões de acesso de arquivos e diretórios.

### Exemplo de Uso:
```bash
chmod 755 nome_do_diretorio
```

Isso altera as permissões do diretório `nome_do_diretorio` para `rwxr-xr-x`, permitindo leitura, escrita e execução para o proprietário, e leitura e execução para outros usuários.

#### Exemplo para adicionar permissões de escrita para o grupo:
```bash
chmod g+w nome_do_diretorio
```

Isso adiciona permissão de escrita para o grupo do diretório `nome_do_diretorio`.

## 9. **chown - Altera o proprietário de um diretório**

O comando `chown` é utilizado para alterar o proprietário e o grupo de um diretório.

### Exemplo de Uso:
```bash
chown usuario:grupo nome_do_diretorio
```

Isso altera o proprietário e o grupo do diretório `nome_do_diretorio` para `usuario` e `grupo`.

#### Exemplo para alterar apenas o proprietário:
```bash
chown usuario nome_do_diretorio
```

Isso altera o proprietário do diretório `nome_do_diretorio` para `usuario`, sem modificar o grupo.

---

### Resumo dos Comandos:

| Comando  | Descrição | Exemplo |
|----------|-----------|---------|
| `mkdir`  | Cria diretórios | `mkdir nome_do_diretorio` |
| `rmdir`  | Remove diretórios vazios | `rmdir nome_do_diretorio` |
| `rm -r`  | Remove diretórios e seu conteúdo | `rm -r nome_do_diretorio` |
| `cd`     | Muda para outro diretório | `cd /caminho/para/diretorio` |
| `ls`     | Lista o conteúdo de um diretório | `ls nome_do_diretorio` |
| `pwd`    | Exibe o diretório atual | `pwd` |
| `find`   | Pesquisa arquivos e diretórios | `find /caminho/para/diretorio -name "arquivo"` |
| `chmod`  | Modifica permissões de diretórios | `chmod 755 nome_do_diretorio` |
| `chown`  | Altera o proprietário de um diretório | `chown usuario:grupo nome_do_diretorio` |

---

Com esses comandos, você pode gerenciar e manipular diretórios de maneira eficiente no Linux.