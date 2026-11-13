# Instala la skill "conciencia-editorial" en OpenClaw
# Uso: clic derecho > Ejecutar con PowerShell
#      o: powershell -ExecutionPolicy Bypass -File install.ps1

$ErrorActionPreference = 'Stop'

$origen  = Split-Path -Parent $MyInvocation.MyCommand.Path
$destino = Join-Path $env:USERPROFILE '.openclaw\workspace\skills\conciencia-editorial'

Write-Host ""
Write-Host "  Conciencia Editorial - Instalador" -ForegroundColor Cyan
Write-Host "  --------------------------------" -ForegroundColor DarkGray
Write-Host ""

if (-not (Test-Path (Join-Path $env:USERPROFILE '.openclaw'))) {
    Write-Host "  No se encontro la carpeta .openclaw en el perfil del usuario." -ForegroundColor Red
    Write-Host "  Ajusta la ruta manualmente si tu instalacion esta en otro lugar." -ForegroundColor Yellow
    exit 1
}

if (Test-Path $destino) {
    Write-Host "  Ya existe una instalacion previa:" -ForegroundColor Yellow
    Write-Host "  $destino" -ForegroundColor DarkGray
    $resp = Read-Host "  Sobrescribir? (s/N)"
    if ($resp -notmatch '^[sS]') {
        Write-Host "  Instalacion cancelada." -ForegroundColor Yellow
        exit 0
    }
    Remove-Item $destino -Recurse -Force
}

New-Item -ItemType Directory -Path $destino -Force | Out-Null
Copy-Item (Join-Path $origen 'SKILL.md') $destino -Force
Copy-Item (Join-Path $origen 'references') $destino -Recurse -Force
Copy-Item (Join-Path $origen 'workflows') $destino -Recurse -Force
Copy-Item (Join-Path $origen 'README.md') $destino -Force

$archivos = (Get-ChildItem $destino -Recurse -File).Count
Write-Host ""
Write-Host "  Instalado en: $destino" -ForegroundColor Green
Write-Host "  Archivos: $archivos" -ForegroundColor Green
Write-Host ""
Write-Host "  Prueba con: 'Aplica la fase 1 a este texto: ...'" -ForegroundColor Cyan
Write-Host ""
