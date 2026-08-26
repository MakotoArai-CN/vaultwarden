#Requires -Version 5.1
$ErrorActionPreference = "Stop"
Set-Location -LiteralPath $PSScriptRoot
$exe = Join-Path $PSScriptRoot "vaultwarden.exe"
if (-not (Test-Path -LiteralPath $exe)) { throw "vaultwarden.exe not found in $PSScriptRoot" }
if (-not (Test-Path -LiteralPath (Join-Path $PSScriptRoot "web-vault\index.html"))) {
    throw "web-vault/index.html missing"
}
Write-Host "Starting Vaultwarden from $PSScriptRoot"
Write-Host "Open: http://127.0.0.1:8000"
& $exe @args
