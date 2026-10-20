$ErrorActionPreference = 'Stop'

$url = 'https://raw.githubusercontent.com/4nuth3p-design/VenomOS-toolbox/refs/heads/main/win.ps1'

Invoke-RestMethod -Uri $url | Invoke-Expression
