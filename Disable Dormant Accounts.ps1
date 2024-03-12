
$disabledUsers = "OU=DisabledUser,DC=Adatum,DC=Com"
$timespan = New-TimeSpan -Days 30
(Get-Date).Subtract($timespan)
$inactiveUsers = Search-ADAccount -UsersOnly -AccountInactive -TimeSpan $timespan
foreach ($user in $inactiveUsers)
{Disable-ADAccount -Identity $user.DistinguishedName | Move-ADObject -TargetPath $disabledUsers
}



