PowerShell: Manutenção Preventiva & Inventário

Este script automatiza tarefas críticas de suporte técnico, combinando limpeza de arquivos temporários, coleta de dados de hardware (CPU, RAM, Discos) e geração de relatórios detalhados. Ideal para rotinas de Help Desk e gestão de ativos.

 Funcionalidades
 
Verificação de Segurança: Identifica automaticamente se o script possui privilégios de Administrador antes de iniciar.

Limpeza Inteligente: Remove arquivos temporários do usuário ($env:TEMP), do sistema e a pasta Prefetch.

Inventário Multi-Disco: Mapeia todos os discos fixos (HD/SSD) da máquina, calculando espaço total e livre.

Relatório Automatizado: Gera um arquivo .txt formatado na Área de Trabalho com data, hora e especificações técnicas.

Interface Amigável: Exibe uma caixa de mensagem (Pop-up) ao concluir a operação.

Tecnologias Utilizadas

PowerShell: Lógica principal e manipulação de objetos.

WMI/CIM: Consulta profunda de hardware (Win32_Processor, Win32_LogicalDisk).

NTP/System.IO: Gestão de caminhos dinâmicos e nomenclatura de arquivos.

PresentationFramework: Interface gráfica para notificações do Windows.

Como Utilizar

Faça o download do arquivo Limpeza.ps1.

Clique com o botão direito e selecione "Executar com o PowerShell" (o script solicitará elevação se necessário).

Aguarde o pop-up de conclusão.

O relatório aparecerá na sua Área de Trabalho como Relatorio_Suporte.txt. 

## ⚠️ Requisitos
* Executar o PowerShell como Administrador para garantir a limpeza completa dos arquivos de sistema.
