param([string]$modelnum = "5060") #5060 by default if not parameter is specified
Write-Host $modelnum
Get-ChildItem -Path C:\temp\$modelnum\ -Filter *.exe -Recurse -File -Name | Foreach {Start-Process -FilePath C:\temp\$modelnum\$_ -Argumentlist "/s"; Start-Sleep -Seconds 60}

<#
USAGE:
powershell.exe -ExecutionPolicy Bypass .\Dell.ps1 -modelnum "5070"
powershell.exe -ExecutionPolicy Bypass .\Dell.ps1 "5070"
OR
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope LocalMachine
.\Dell.ps1 -modelnum "5070"
Set-ExecutionPolicy -ExecutionPolicy Restricted -Scope LocalMachine
Get-ExecutionPolicy //Restricted
#>
