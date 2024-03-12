$OU = "OU=Marketing,DC=Adatum,DC=com"
$Department = "Marketing"
$Title = "Customer Success"
$Firstname = "Karen"
$Lastname = "Dalton"
$Username = "Karen.Dalton"
$Password = ConvertTo-SecureString "Pa55w.rd" -AsPlainText -Force


New-ADUser `
    -Name "$FirstName $LastName" `
        -GivenName $FirstName `
            -Surname $LastName `
                -SamAccountName $UserName `
                    -UserPrincipalName "$UserName@Adatum.com" `
                        -Path $OU `
                            -AccountPassword $UserPassword `
                                -Enabled $true `
                                    -Department "Marketing" `
                                        -Title "Customer Success Manager" `
                                            -ChangePasswordAtLogon $true

Write-Host "(Get-ADUser -identity $username | fl)""OU=Marketing,DC=yourdomain,DC=com" # Replace with the actual OU path
