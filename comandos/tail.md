# Comando Tail

O comando `tail` no Linux é usado para exibir as últimas linhas de um arquivo de texto. Por padrão, ele mostra as últimas 10 linhas, mas você pode personalizar o comportamento com diversas opções.

Aqui estão alguns exemplos de uso básico do `tail`:

### 1. Exibir as últimas 10 linhas de um arquivo
```bash
tail nome_do_arquivo
```

### 2. Exibir um número específico de linhas
Você pode usar a opção `-n` para exibir um número personalizado de linhas. Por exemplo, para ver as últimas 20 linhas:
```bash
tail -n 20 nome_do_arquivo
```

### 3. Exibir linhas enquanto o arquivo é atualizado (modo "follow")
A opção `-f` faz com que o `tail` continue exibindo novas linhas à medida que o arquivo é atualizado. Isso é útil para logs:
```bash
tail -f nome_do_arquivo
```

### 4. Combinação das opções `-n` e `-f`
Se você quiser, por exemplo, começar vendo as últimas 50 linhas e depois continuar assistindo o arquivo sendo atualizado:
```bash
tail -n 50 -f nome_do_arquivo
```

Esses são alguns exemplos básicos, mas o `tail` tem várias outras opções que podem ser úteis dependendo do que você deseja fazer. Se precisar de algo mais específico, só avisar!