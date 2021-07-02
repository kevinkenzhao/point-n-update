Get-ChildItem -Path C:\temp\5060\ -Filter *.exe -Recurse -File -Name | Foreach {Start-Process -FilePath C:\temp\5060\$_ -Argumentlist "/s"; Start-Sleep -Seconds 60}
