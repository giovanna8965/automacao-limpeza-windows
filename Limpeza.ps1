<#
.SYNOPSIS
    Script de Manutenção Preventiva e Inventário de Hardware.
.DESCRIPTION
    1. Limpeza de arquivos temporários do sistema e usuário.
    2. Coleta de dados técnicos (CPU, RAM, Disco, Rede).
    3. Geração de log automático na Área de Trabalho.
.AUTHOR
    Seu Nome
#>

# --- Configurações Iniciais ---
$Caminho = [System.IO.Path]::Combine([Environment]::GetFolderPath("Desktop"), "Relatorio_Suporte.txt")
$Data = Get-Date -Format "dd/MM/yyyy HH:mm:ss"

Write-Host "--- Iniciando Manutenção Preventiva ---" -ForegroundColor Cyan

# 1. Limpeza de Temporários (Melhorada)
$TempFolders = @("$env:TEMP", "C:\Windows\Temp", "$env:SystemRoot\Prefetch")
Write-Host "[*] Limpando arquivos temporários..." -ForegroundColor Yellow

foreach ($Folder in $TempFolders) {
    if (Test-Path $Folder) {
        Get-ChildItem -Path $Folder -Recurse -ErrorAction SilentlyContinue | Remove-Item -Force -Recurse -ErrorAction SilentlyContinue
    }
}

# 2. Coleta de Inventário Avançado
Write-Host "[*] Coletando informações do sistema..." -ForegroundColor Green

$CPU = (Get-CimInstance Win32_Processor).Name
$RAM = [Math]::Round((Get-CimInstance Win32_PhysicalMemory | Measure-Object -Property Capacity -Sum).Sum / 1GB, 2)
$DiscoLivre = [Math]::Round((Get-PSDrive C).Free / 1GB, 2)
$IP = (Get-NetIPAddress -AddressFamily IPv4 | Where-Object { $_.InterfaceAlias -notlike "*Loopback*" }).IPAddress -join " | "

# 3. Formatando o Relatório para o Portfólio
$Relatorio = @"
==========================================
RELATÓRIO DE SUPORTE - $Data
==========================================
USUÁRIO: $env:USERNAME
MÁQUINA: $env:COMPUTERNAME
------------------------------------------
HARDWARE E REDE:
- Processador: $CPU
- Memória RAM: $RAM GB
- Espaço em C: $DiscoLivre GB livres
- Endereço IP: $IP
==========================================
"@

# 4. Salvando o Arquivo
$Relatorio | Out-File -FilePath $Caminho -Append -Encoding UTF8

Write-Host "--- CONCLUÍDO COM SUCESSO! ---" -ForegroundColor White -BackgroundColor DarkGreen
Write-Host "Relatório salvo em: $Caminho"
Pause