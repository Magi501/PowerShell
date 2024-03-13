# Replace "LON-DC1" with computer name
$computerName = "LON-DC1"
$credential = Get-Credential

Restart-Computer -ComputerName $computerName -Credential $credential -Force


#Restart Computer, with embedded credntials
$computerName = "LON-DC1"
$credential = Import-Clixml -Path "C:\admincred.xml"

Restart-Computer -ComputerName $computerName -Credential $credential -Force
Write-Host "$computerName is restarting..."