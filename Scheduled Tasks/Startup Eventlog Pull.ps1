#Script for automatic eventlog pull on start-up
$computers = "LON-DC1","LON-CL1","LON-SVR1"
$action = New-ScheduledTaskAction (Invoke-Command -ScriptBlock {Get-Eventlog -Logname System -Newest 10} -ComputerName $computers)
$trigger = New-ScheduledTaskTrigger -AtStartup
$Principal = New-ScheduledTaskPrincipal -UserId "NT Authority\System" -RunLevel Highest
$credential = (Import-Clixml -Path "C:\admincred.xml")

Register-ScheduledTask -Action $action -Trigger $trigger -Principal $Principal -TaskName "Startup Event Pull" -Description "pulls eventlog at startup" $credential 
Write-Host "Scheduled task for automatic eventlog pulling at startup"