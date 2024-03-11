# Replace "LON-DC1" with computer name
$computerName = "LON-DC1"
$credential = Get-Credential

Restart-Computer -ComputerName $computerName -Credential $credential -Force


#Send change