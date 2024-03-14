#This is a tool for automatically disabling users who have not logged in, in the last 30 days.
#WARNING: In the lab environment, NO ACCOUNTS have logged in, in 30 days and will all get disabled.
$disabledUsers = "OU=DisabledUser,DC=Adatum,DC=Com"
$timespan = New-TimeSpan -Days 30
(Get-Date).Subtract($timespan)
$inactiveUsers = Search-ADAccount -UsersOnly -AccountInactive -TimeSpan $timespan
foreach ($user in $inactiveUsers)
{Disable-ADAccount -Identity $user.DistinguishedName | Move-ADObject -TargetPath $disabledUsers
}

#How to undo disabling Everyones accounts
Get-ADUser -Filter * | Enable-ADAccount     

