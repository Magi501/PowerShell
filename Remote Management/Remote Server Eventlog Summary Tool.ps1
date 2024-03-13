#Remotely access event log of managed servers
$Logname = 'system' 
$newest = 5
Invoke-Command -ComputerName LON-CL1,LON-DC1,LON-SVR1 -ScriptBlock{Param($A,$B)Get-EventLog -Logname $A -Newest $B} -ArgumentList $logname,$newest |
Select-Object -Property Time,EntryType,InstanceID,Message,PSComputerName | fl
#if you get an error for the client computer, type "winrm quickconfig"
