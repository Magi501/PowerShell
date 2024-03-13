
$OU = "OU=Marketing,DC=Adatum,DC=com"
$Department = Read-Host -Prompt "Enter Department"
$Title = Read-Host "Enter Job Title"
$Firstname = Read-Host "Enter First Name"
$Lastname = Read-Host "Enter Last Name"
$Username = $Firstname+"."+$Lastname
$Password = Read-Host -AsSecureString -Prompt "Set Password"

