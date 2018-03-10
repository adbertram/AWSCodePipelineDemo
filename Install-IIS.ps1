$ErrorActionPreference = 'Stop'

if ($PSHOME -like "SysWOW64") {
 Write-Warning "Restarting this script under 64-bit Windows PowerShell."

	& (Join-Path ($PSHOME -replace "SysWOW64", "SysNative") powershell.exe) -File ` (Join-Path $PSScriptRoot $MyInvocation.MyCommand) @args

	Exit $LastExitCode 
}

Add-WindowsFeature Web-Server