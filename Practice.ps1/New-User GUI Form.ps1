#Load Active Directory Module
Import-Module ActiveDirectory
$OU = "OU=Marketing,DC=Adatum,DC=com"

# Load the Windows Forms assembly
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing


# Create Form
$form = New-Object Windows.Forms.Form
$form.Text = "New ADUser Form"
$Form.Size = New-Object System.Drawing.Size(350, 450)
$Form.StartPosition = "CenterScreen"

#Always on top
$form.Topmost = $true

#Powershell Icon in title bar
$Form.Icon = [Drawing.Icon]::ExtractAssociatedIcon((Get-Command powershell).Path)

# Create Buttons
$OKButton = New-Object System.Windows.Forms.Button
$OKButton.Location = New-Object System.Drawing.Point(75, 350)
$OKButton.Size = New-Object System.Drawing.Size(75, 23)
$OKButton.Text = "OK"
$OKButton.DialogResult = [System.Windows.Forms.DialogResult]::OK
$Form.AcceptButton = $OKButton
$Form.Controls.Add($OKButton)
 
$CancelButton = New-Object System.Windows.Forms.Button
$CancelButton.Location = New-Object System.Drawing.Point(175, 350)
$CancelButton.Size = New-Object System.Drawing.Size(75, 23)
$CancelButton.Text = "Cancel"
$CancelButton.DialogResult = [System.Windows.Forms.DialogResult]::Cancel
$Form.CancelButton = $CancelButton
$Form.Controls.Add($CancelButton)

#Create Label for FirstName
$FirstNameLabel = New-Object System.Windows.Forms.Label
$FirstNameLabel.Location = New-Object System.Drawing.Point(10, 20)
$FirstNameLabel.Size = New-Object System.Drawing.Size(70, 20)
$FirstNameLabel.Text = "First Name:"
$Form.Controls.Add($FirstNameLabel)
        
#Create Input box for Firstname
$FirstNameText = New-Object Windows.Forms.TextBox
$FirstNameText.Location = New-Object Drawing.Point(120, 20)
$FirstNameText.Size = New-Object System.Drawing.Size(200, 20)
$form.Controls.Add($FirstNameText)

#Create Label for Lastname
$LastNameLabel = New-Object System.Windows.Forms.Label
$LastNameLabel.Location = New-Object System.Drawing.Point(10, 60)
$LastNameLabel.Size = New-Object System.Drawing.Size(70, 20)
$LastNameLabel.Text = "Last Name:"
$Form.Controls.Add($LastNameLabel)
        
#Create Input box for Last name
$LastNameText = New-Object Windows.Forms.TextBox
$LastNameText.Location = New-Object Drawing.Point(120, 60)
$LastNameText.Size = New-Object System.Drawing.Size(200, 20)
$form.Controls.Add($LastNameText)


#Create Label for Department
$DepartmentLabel = New-Object System.Windows.Forms.Label
$DepartmentLabel.Location = New-Object System.Drawing.Point(10, 100)
$DepartmentLabel.Size = New-Object System.Drawing.Size(90, 20)
$DepartmentLabel.Text = "Department:"
$Form.Controls.Add($DepartmentLabel)
        
#Create Input box for Department
$DepartmentText = New-Object Windows.Forms.TextBox
$DepartmentText.Location = New-Object Drawing.Point(120, 100)
$DepartmentText.Size = New-Object System.Drawing.Size(200, 20)
$form.Controls.Add($DepartmentText)

#Create Label for Job Title
$JobTitleLabel = New-Object System.Windows.Forms.Label
$JobTitleLabel.Location = New-Object System.Drawing.Point(10, 140)
$JobTitleLabel.Size = New-Object System.Drawing.Size(90, 20)
$JobTitleLabel.Text = "JobTitle:"
$Form.Controls.Add($JobTitleLabel)

#Create Input box for Job Title
$JobTitleText = New-Object Windows.Forms.TextBox
$JobTitleText.Location = New-Object Drawing.Point(120, 140)
$JobTitleText.Size = New-Object System.Drawing.Size(200, 20)
$form.Controls.Add($JobTitleText)

#Create Label for Password
$PasswordLabel = New-Object System.Windows.Forms.Label
$PasswordLabel.Location = New-Object System.Drawing.Point(10, 180)
$PasswordLabel.Size = New-Object System.Drawing.Size(90, 20)
$PasswordLabel.Text = "Password"
$Form.Controls.Add($PasswordLabel)

#Create Input box for Password
$PasswordText = New-Object Windows.Forms.MaskedTextBox
$PasswordText.PasswordChar = '*'
$PasswordText.Location = New-Object Drawing.Point(120, 180)
$PasswordText.Size = New-Object System.Drawing.Size(200, 20)
$form.Controls.Add($PasswordText)


#Activate form ans set focus on it
$Form.Add_Shown({ $FirstNameText.Select() })
#Display the form in Windows
$result = $Form.ShowDialog()

if ($result -eq [System.Windows.Forms.DialogResult]::OK) {
    $secstr = $PasswordText.Text | ConvertTo-SecureString -AsPlainText -force 

    if ($result -eq [System.Windows.Forms.DialogResult]::OK) {
        $secstr = $PasswordText.Text | ConvertTo-SecureString -AsPlainText -force 
    
        $FirstNameText.Text
       
        $LastNameText.Text
       
        $DepartmentText.Text 
    }
}
        

