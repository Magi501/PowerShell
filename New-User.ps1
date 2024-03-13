Import-Module ActiveDirectory
$OU = "OU=Marketing,DC=Adatum,DC=com"
$Department = Read-Host -Prompt "Enter Department"
$Title = Read-Host "Enter Job Title"
$Firstname = Read-Host "Enter First Name"
$Lastname = Read-Host "Enter Last Name"
$Username = $Firstname+"."+$Lastname
$Password = Read-Host -AsSecureString -Prompt "Set Password"

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