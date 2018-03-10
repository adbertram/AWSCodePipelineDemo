$ErrorActionPreference = 'Stop'
Write-Output (gmo -list)

Add-WindowsFeature Web-Server