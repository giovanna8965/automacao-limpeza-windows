# automacao-limpeza-windows
Script em PowerShell para automação de manutenção preventiva no Windows. Realiza a limpeza de arquivos temporários do sistema e gera um relatório detalhado de hardware (CPU, IP e Hostname) salvo automaticamente na Área de Trabalho.

# 🚀 Automação de Limpeza e Diagnóstico Windows (PowerShell)

Este projeto consiste em um script de automação desenvolvido em **PowerShell** para otimizar o desempenho do sistema operacional Windows e fornecer um relatório rápido de hardware.

## 🛠️ O que o script faz?
1. **Limpeza de Temporários:** Remove arquivos das pastas `%TEMP%` e `C:\Windows\Temp` para liberar espaço em disco.
2. **Coleta de Informações:** Obtém automaticamente dados do sistema como:
   - Data e Hora da execução.
   - Nome do Computador.
   - Modelo do Processador (CPU).
   - Endereço IP da rede.
3. **Geração de Relatório:** Cria um arquivo `.txt` na Área de Trabalho com todos os dados coletados.

## 📂 Estrutura do Projeto
* `Limpeza.ps1`: O código-fonte principal do script.
* `Relatorio_Suporte.txt`: Exemplo do arquivo gerado após a execução.

## ⚠️ Requisitos
* Executar o PowerShell como Administrador para garantir a limpeza completa dos arquivos de sistema.
