# Trabalhando com Diretórios no Linux

Aqui está um manual passo a passo para trabalhar com **diretórios** no Linux, cobrindo operações como criação, renomeação, cópia e remoção de diretórios.

---

## 1. **Criando Diretórios**

Para criar diretórios no Linux, usamos o comando `mkdir` (make directory).

### **Criando um Diretório com o `mkdir`**
O comando `mkdir` cria um novo diretório no local especificado.

```bash
mkdir nome_do_diretorio
```

Exemplo:

```bash
mkdir meu_diretorio
```

Isso cria um diretório chamado `meu_diretorio` no diretório atual.

### **Criando Vários Diretórios ao Mesmo Tempo**
Você pode criar vários diretórios de uma vez, separando os nomes com espaços.

```bash
mkdir dir1 dir2 dir3
```

Isso cria os diretórios `dir1`, `dir2` e `dir3` no diretório atual.

### **Criando Diretórios de Forma Recursiva**
Se você deseja criar um diretório dentro de outro que ainda não existe, pode usar a opção `-p` para criar os diretórios de forma recursiva.

```bash
mkdir -p /caminho/para/meu_diretorio/novo_diretorio
```

Isso cria o diretório `novo_diretorio` dentro de `meu_diretorio`, e se `meu_diretorio` não existir, ele será criado também.

## 2. **Renomeando Diretórios**

Para renomear diretórios no Linux, você pode usar o comando `mv` (move), que também é utilizado para mover arquivos e diretórios.

### **Renomeando um Diretório com o `mv`**
O comando `mv` pode ser usado para renomear um diretório, assim como arquivos.

```bash
mv nome_antigo nome_novo
```

Exemplo:

```bash
mv diretorio_antigo diretorio_novo
```

Isso renomeia `diretorio_antigo` para `diretorio_novo`.

## 3. **Copiando Diretórios**

Para copiar diretórios no Linux, usamos o comando `cp` com a opção `-r` (recursiva), que copia todos os arquivos e subdiretórios dentro do diretório.

### **Copiando um Diretório com o `cp`**
Para copiar um diretório e seu conteúdo para outro local, use o comando:

```bash
cp -r nome_do_diretorio /caminho/para/destino/
```

Exemplo:

```bash
cp -r meu_diretorio /home/usuario/Documentos/
```

Isso copia o diretório `meu_diretorio` e todo o seu conteúdo para o diretório `/home/usuario/Documentos/`.

## 4. **Removendo Diretórios**

Para remover diretórios no Linux, usamos o comando `rmdir` ou `rm -r`. A escolha entre os dois depende de se o diretório está vazio ou não.

### **Removendo um Diretório Vazio com o `rmdir`**
O comando `rmdir` é usado para remover diretórios vazios. Ele não removerá diretórios que contêm arquivos ou outros diretórios.

```bash
rmdir nome_do_diretorio
```

Exemplo:

```bash
rmdir meu_diretorio_vazio
```

Isso remove o diretório `meu_diretorio_vazio` apenas se ele estiver vazio.

### **Removendo um Diretório com o `rm -r`**
Para remover um diretório e todo o seu conteúdo (mesmo que o diretório não esteja vazio), use o comando `rm` com a opção `-r` (recursiva).

```bash
rm -r nome_do_diretorio
```

Exemplo:

```bash
rm -r meu_diretorio
```

Isso remove o diretório `meu_diretorio` e todo o seu conteúdo, incluindo arquivos e subdiretórios.

### **Forçando a Remoção de um Diretório**
Se o diretório contiver arquivos protegidos contra remoção, você pode forçar a remoção com a opção `-f`.

```bash
rm -rf nome_do_diretorio
```

Exemplo:

```bash
rm -rf meu_diretorio
```

Isso remove `meu_diretorio` e todo o seu conteúdo de forma forçada, sem pedir confirmação.

### **Removendo Diretórios com Confirmação**
Para garantir que você tenha certeza de que deseja remover o diretório, adicione a opção `-i` (interativo) para solicitar confirmação antes de excluir o diretório.

```bash
rm -ri nome_do_diretorio
```

Isso pedirá confirmação para cada arquivo e subdiretório dentro de `nome_do_diretorio` antes de removê-lo.

### Resumo dos Comandos

| Comando | Descrição | Exemplo |
|---------|-----------|---------|
| `mkdir nome_do_diretorio` | Cria um diretório | `mkdir meus_docs` |
| `mkdir -p /caminho/para/diretorio` | Cria diretórios de forma recursiva | `mkdir -p /home/usuario/diretorios/novos` |
| `mv nome_antigo nome_novo` | Renomeia um diretório | `mv pasta1 pasta2` |
| `cp -r nome_do_diretorio /caminho/para/destino/` | Copia um diretório recursivamente | `cp -r pasta1 /home/usuario/Documentos/` |
| `rmdir nome_do_diretorio` | Remove um diretório vazio | `rmdir pasta_vazia` |
| `rm -r nome_do_diretorio` | Remove um diretório e seu conteúdo | `rm -r pasta1` |
| `rm -rf nome_do_diretorio` | Força a remoção de um diretório e seu conteúdo | `rm -rf pasta1` |
| `rm -ri nome_do_diretorio` | Remove um diretório com confirmação | `rm -ri pasta1` |

---

Com esses comandos, você pode gerenciar diretórios de maneira eficaz no Linux.