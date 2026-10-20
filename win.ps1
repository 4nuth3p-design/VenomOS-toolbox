
$ErrorActionPreference = 'Stop'

$url = 'https://github.com/4nuth3p-design/VenomOS-toolbox/releases/latest/download/Queen.toolbox.exe'
$exe = Join-Path $env:TEMP ("Queen-" + [guid]::NewGuid().ToString() + ".exe")

try {
    Write-Host "Downloading Queen Toolbox..."
    Invoke-WebRequest -Uri $url -OutFile $exe

    Write-Host "Starting Queen Toolbox..."
    $process = Start-Process -FilePath $exe -PassThru
    $process.WaitForExit()
}
catch {
    Write-Host "Error: $_" -ForegroundColor Red
}
finally {
    Remove-Item $exe -Force -ErrorAction SilentlyContinue
}
