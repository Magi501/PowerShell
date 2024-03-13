#Script for automatic server restart at 2AM
$computers = "LON-DC1","LON-CL1","LON-SVR1"
$action = New-ScheduledTaskAction (Invoke-Command -ScriptBlock {Restart-Computer -ComputerName $computers -Credential $credential -Force} )
$trigger = New-ScheduledTaskTrigger -Daily -At 2:00AM
$Principal = New-ScheduledTaskPrincipal -UserId "NT Authority\System" -RunLevel Highest
$credential = (Import-Clixml -Path "C:\admincred.xml")

Register-ScheduledTask -TaskName "2AM (PST) Server Restart" -trigger $trigger -Action $action -Principal $Principal -Credential $credential
Write-Host "Daily automatic server restart at 2AM"



#Script for automatic eventlog pull on start-up
$computers = "LON-DC1","LON-CL1","LON-SVR1"
$action = New-ScheduledTaskAction (Invoke-Command -ScriptBlock {Get-Eventlog -Logname System -Newest 10} -ComputerName $computers -AsJob -JobName RemoteLogs)
$trigger = New-ScheduledTaskTrigger -AtStartup
$Principal = New-ScheduledTaskPrincipal -UserId "NT Authority\System" -RunLevel Highest
$credential = (Import-Clixml -Path "C:\admincred.xml")

Register-ScheduledTask -Action $action -Trigger $trigger -Principal $Principal -TaskName "Startup Event Pull" -Description "pulls eventlog at startup" $credential 
Write-Host "Scheduled task for automatic eventlog pulling at startup"
