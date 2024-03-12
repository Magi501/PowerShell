# Run PowerShell as Administrator

# Import the Active Directory module
Import-Module ActiveDirectory

# User details
$UserFirstName = "Karen"
$UserLastName = "Dalton"
$OUPath =ssword for the user" # Prompt for password
$UserName = $UserFirstName[0].ToLower() + $UserLastName.ToLower() # Construct username from first letter of first name and full last name

# Create the new AD user
New-ADUser `
    -Name "$UserFirstName $UserLastName" `
        -GivenName $UserFirstName `
            -Surname $UserLastName `
                -SamAccountName $UserName `
                    -UserPrincipalName "$UserName@yourdomain.com" `
                        -Path $OUPath `
                            -AccountPassword $UserPassword `
                                -Enabled $true `
                                    -Department "Marketing" `
                                        -Title "Marketing Specialist" `
                                            -ChangePasswordAtLogon $true

                                            # Output the details of the created user
                                            Get-ADUser -Identity $UserName | Format-List
                                            