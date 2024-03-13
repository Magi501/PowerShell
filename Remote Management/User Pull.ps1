
$currentdate = Get-Date -format "MM-dd-yyyy"
$Users = 'marketing'
Get-ADUser -filter {Department -eq $users} -searchbase "DC=Adatum,DC=Com" -Properties name, SamAccountName, EmailAddress, Title, Department| 
Select-Object name, SamAccountName, EmailAddress, Title, Department |
Export-CSV "C:\$currentdate.$users.csv" 

Write-Host "CSV file exported to "C:\$currentdate.$users.csv""