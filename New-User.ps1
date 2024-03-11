$givenName = "Henry"
$surname = "Coombs"
$samAccountName = "hcoombs"
$userPrincipalName = "$samAccountName@contoso.com"
$password = ConvertTo-SecureString "P@55w.rd" -AsPlainText -Force
$ou = "OU=Users,DC=contoso,DC=com"

New-ADUser -Name "$givenName $surname" -GivenName $givenName -Surname $surname -SamAccountName $samAccountName -UserPrincipalName $userPrincipalName -AccountPassword $password -Enabled $true -Path $ou
