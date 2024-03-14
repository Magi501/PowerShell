#This is a tool for creating new users in Active Directory

Import-Module ActiveDirectory

#Run the script to input User information
$Department = Read-Host -Prompt "Enter Department"
$OU = "OU=$Department,DC=Adatum,DC=com"
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