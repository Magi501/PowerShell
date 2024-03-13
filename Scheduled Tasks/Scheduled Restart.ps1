#Script for automatic server restart at 2AM
$computers = "LON-DC1","LON-CL1","LON-SVR1"
$action = New-ScheduledTaskAction (Invoke-Command -ScriptBlock {Restart-Computer -ComputerName $computers -Credential $credential -Force} )
$trigger = New-ScheduledTaskTrigger -Daily -At 2:00AM
$Principal = New-ScheduledTaskPrincipal -UserId "NT Authority\System" -RunLevel Highest
$credential = (Import-Clixml -Path "C:\admincred.xml")

Register-ScheduledTask -TaskName "2AM (PST) Server Restart" -trigger $trigger -Action $action -Principal $Principal -Credential $credential
Write-Host "Daily automatic server restart at 2AM"