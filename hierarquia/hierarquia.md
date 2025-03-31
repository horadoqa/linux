# Hierarquia

A hierarquia de arquivos do Linux segue uma estrutura de diretórios padronizada e organizada, que facilita a localização e o gerenciamento de arquivos e programas. Essa organização é conhecida como **Filesystem Hierarchy Standard (FHS)**, e nela os arquivos e diretórios são dispostos de forma hierárquica, começando pela raiz, representada pelo diretório `/`.

A seguir, está uma descrição detalhada dos principais diretórios encontrados no sistema Linux:

## **Estrutura de Diretórios do Linux**

### 1. **`/` (Raiz)**
- **Descrição**: É o diretório principal da hierarquia de arquivos, de onde todos os outros diretórios e arquivos se ramificam. Não deve ser confundido com o diretório **home** de um usuário.
- **Função**: Contém todos os diretórios essenciais para o funcionamento do sistema operacional.

### 2. **`/bin`**
- **Descrição**: Diretório que armazena os **binários** essenciais para o sistema, ou seja, programas e comandos de uso comum e necessário para o funcionamento do sistema, disponíveis para todos os usuários.
- **Exemplos de arquivos**: `ls`, `cp`, `mv`, `cat`, `chmod`.

### 3. **`/boot`**
- **Descrição**: Diretório responsável por armazenar os arquivos necessários para o processo de inicialização do sistema operacional.
- **Função**: Contém o carregador de inicialização (bootloader) e o kernel do sistema.
- **Exemplos de arquivos**: `vmlinuz` (kernel), `initrd.img` (imagem de inicialização), `grub` (carregador de inicialização).

### 4. **`/dev`**
- **Descrição**: Diretório que contém os **dispositivos** do sistema, representados por arquivos especiais. Em Linux, dispositivos como discos rígidos, terminais e periféricos são tratados como arquivos.
- **Função**: Permite que o sistema acesse dispositivos de hardware de maneira uniforme.
- **Exemplos de arquivos**: `/dev/sda` (disco rígido), `/dev/tty1` (terminal).

### 5. **`/etc`**
- **Descrição**: Contém os arquivos de **configuração** do sistema e de aplicativos instalados. Esses arquivos definem como o sistema e os serviços operam.
- **Função**: Armazena configurações globais que afetam o sistema inteiro.
- **Exemplos de arquivos**: `passwd` (informações sobre usuários), `hosts` (configurações de rede), `fstab` (configuração de sistemas de arquivos).

### 6. **`/home`**
- **Descrição**: Diretório que contém os diretórios pessoais dos usuários. Cada usuário do sistema possui seu próprio diretório em `/home`, onde pode armazenar arquivos pessoais, documentos, configurações, etc.
- **Função**: Armazenamento de dados dos usuários.
- **Exemplo de subdiretório**: `/home/usuario/` (diretório pessoal de um usuário).

### 7. **`/lib`**
- **Descrição**: Diretório que contém as **bibliotecas** essenciais compartilhadas pelas ferramentas e aplicativos do sistema. As bibliotecas são usadas por programas armazenados em `/bin` e `/sbin` para executar várias funções.
- **Função**: Armazena as bibliotecas dinâmicas necessárias para a execução de programas.
- **Exemplos de arquivos**: `libc.so` (biblioteca C), `ld-linux.so` (carregador de bibliotecas).

### 8. **`/media`**
- **Descrição**: Diretório utilizado para montar mídias removíveis, como CDs, DVDs, pendrives e outros dispositivos de armazenamento removível.
- **Função**: Facilita o acesso a dispositivos de mídia removível.
- **Exemplo de subdiretório**: `/media/usb/` (pendrive montado).

### 9. **`/mnt`**
- **Descrição**: Diretório temporário usado para montar sistemas de arquivos manualmente, como discos rígidos ou outros volumes.
- **Função**: Usado como ponto de montagem para dispositivos temporários.
- **Exemplo de uso**: Montar uma partição temporária em `/mnt/disco`.

### 10. **`/opt`**
- **Descrição**: Diretório onde programas de **software adicional** podem ser instalados. Esse diretório é usado para armazenar pacotes de software que não fazem parte da distribuição padrão do sistema operacional.
- **Função**: Armazenamento de pacotes de aplicativos de terceiros.
- **Exemplo de subdiretório**: `/opt/google/` (instalação do Google Chrome).

### 11. **`/proc`**
- **Descrição**: Diretório virtual que contém informações sobre o **status** do sistema e dos processos em execução. O conteúdo de `/proc` é gerado dinamicamente pelo kernel e não ocupa espaço em disco.
- **Função**: Fornece informações em tempo real sobre o sistema, como uso de CPU, memória, status de processos, etc.
- **Exemplos de arquivos**: `/proc/cpuinfo` (informações do processador), `/proc/meminfo` (informações sobre memória).

### 12. **`/root`**
- **Descrição**: Diretório pessoal do usuário **root**, o superusuário do sistema. Diferente do diretório `/home`, que é para usuários comuns, o diretório `/root` é destinado ao administrador do sistema.
- **Função**: Armazenamento de arquivos pessoais e configurações para o usuário root.
- **Exemplo de subdiretório**: `/root/` (diretório do superusuário).

### 13. **`/run`**
- **Descrição**: Diretório temporário que armazena **dados voláteis** sobre o sistema em funcionamento, como PID (identificadores de processos) e informações sobre o estado de inicialização.
- **Função**: Armazena arquivos temporários de execução do sistema.
- **Exemplo de arquivos**: `/run/lock/` (arquivos de bloqueio de recursos).

### 14. **`/sbin`**
- **Descrição**: Diretório que contém os **binários** essenciais para a administração do sistema. Esses comandos são necessários para tarefas administrativas, como inicialização, reparo e manutenção do sistema.
- **Função**: Armazenamento de comandos administrativos.
- **Exemplos de arquivos**: `fsck`, `reboot`, `ifconfig`.

### 15. **`/srv`**
- **Descrição**: Diretório utilizado para armazenar dados relacionados a **serviços fornecidos** pelo sistema. Este diretório é usado para armazenar dados de servidores web, FTP e outros serviços.
- **Função**: Armazenamento de dados específicos de serviços.
- **Exemplo de subdiretório**: `/srv/www/` (arquivos de um servidor web).

### 16. **`/sys`**
- **Descrição**: Diretório virtual que contém informações sobre o **kernel** e seus módulos. Assim como o `/proc`, ele fornece acesso a informações do sistema em tempo real.
- **Função**: Exibição de dados sobre o kernel e configuração de módulos.
- **Exemplos de arquivos**: `/sys/devices/` (informações sobre dispositivos), `/sys/kernel/` (informações sobre o kernel).

### 17. **`/tmp`**
- **Descrição**: Diretório usado para armazenar arquivos **temporários** criados por programas em execução. Esse diretório pode ser limpo automaticamente após o reinício do sistema.
- **Função**: Armazenamento de arquivos temporários usados por programas e pelo sistema.
- **Exemplo de arquivo**: Arquivos temporários criados por aplicativos.

### 18. **`/usr`**
- **Descrição**: Diretório que armazena os **arquivos de programa** e **bibliotecas** que são compartilhados entre os usuários do sistema. Contém programas, manuais e bibliotecas do sistema.
- **Função**: Armazenamento de programas e dados de uso geral.
- **Exemplos de subdiretórios**: `/usr/bin/` (programas executáveis), `/usr/lib/` (bibliotecas).

### 19. **`/var`**
- **Descrição**: Diretório onde são armazenados arquivos que **variam** durante a execução do sistema, como logs, caches, dados de serviços em execução e arquivos temporários.
- **Função**: Armazenamento de arquivos que mudam com o tempo.
- **Exemplos de subdiretórios**: `/var/log/` (logs do sistema), `/var/cache/` (dados em cache).

---

## **Conclusão**

A estrutura de diretórios do Linux segue uma organização lógica que visa separar arquivos do sistema, arquivos do usuário, dados temporários e arquivos específicos de serviços. Compreender essa hierarquia é essencial para navegar e administrar eficazmente um sistema Linux. Essa organização não só facilita a gestão de arquivos, mas também contribui para a segurança, desempenho e escalabilidade do sistema.