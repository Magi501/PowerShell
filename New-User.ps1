Import-Module ActiveDirectory
$OU = "OU=Marketing,DC=Adatum,DC=com"
$Department = "Marketing"
$Title = "Customer Success"
$Firstname = "Marty"
$Lastname = "McFly"
$Username = "Marty.McFly"
$Password = ConvertTo-SecureString "Wahoo2u2!" -AsPlainText -Force


New-ADUser `
    -Name "$FirstName $LastName" `
        -GivenName $FirstName `
            -Surname $LastName `
                -SamAccountName $UserName `
                    -UserPrincipalName "$UserName@Adatum.com" `
                        -Path $OU `
                            -AccountPassword $Password `
                                -Enabled $true `
                                    -Department $Department `
                                        -Title $Title `
                                            -ChangePasswordAtLogon $true

Write-Host "--------------------------------------------"
Write-Host "      $UserName Account Created             "
Write-Host "--------------------------------------------"