param ($modelnum)
Get-ChildItem -Path C:\temp\$modelnum\ -Filter *.exe -Recurse -File -Name | Foreach {Start-Process -FilePath C:\temp\$modelnum\$_ -Argumentlist "/s"; Start-Sleep -Seconds 60}

<#
USAGE:
.\Dell.ps1 -modelnum 5060
#>
