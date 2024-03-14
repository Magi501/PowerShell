# I recomend adding comments above the items to keep track of what each part is doing and why.  
#I feel this helps if someone is looking at your scrip to understand the method to your madness

#Load Windows Forms and Drawing 
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

#Create GUI Form for use in to input variables for use in New-ADUser
$form = New-Object System.Windows.Forms.Form
$form.Text ='New User Input'
$form.Size = New-Object System.Drawing.Size(400,300)
    
    #Create textbox to read "First Name" 
    $FirstName = New-Object System.Windows.Forms.Label
    $FirstName.Location = New-Object System.Drawing.Point(10,20)
    $FirstName.Size = New-Object System.Drawning.Size(100,20)
    $FirstName.Text = "First Name:"
    $form.Controls.Add($FirstName)
        #Create Input field to assign a value for "$FirstNameTB" variable 
        $FirstNameTB = New-Object System.Windows.Forms.TextBox
        $FirstNameTB.Location = New-Object System.Drawing.Point(120,20)
        $FirstNameTB.Size = New-Object System.Drawning.Size(200,20)
        $Form.Controls.Add($FirstNameTB)
    $LastName = New-Object System.Windows.Forms.Label
    $LastName.Location = New-Object System.Drawing.Point(10,50)
    $LastName.Size = New-Object System.Drawing.Point(100,20)
    $LastName.Text = "Last Name:"
    $form.Controls.Add($LastName)
        $LastNameTB = New-Object System.Windows.Forms.TextBox
        $LastNameTB.Location = New-Object System.Drawing.Point(120,50)
        $LastNameTB.Size = New-Object System.Drawning.Size(200,20)
        $Form.Controls.Add($LastNameTB)
    $Email = New-Object System.Windows.Forms.Label
    $Email.Location = New-Object System.Drawing.Location(10,80)
    $Email.Size = New-Object System.Drawing.Size(80,20)
    $Email.Text = "Email:"
    $form.Controls.Add($Email)
        $EmmailTB = New-Object System.Windows.Forms.TextBox
        $EmailTB.Location = New-Object System.Drawing.Point(120,80)
        $EmailTB.Size = New-Object System.Drawing.Size(200,20)
        $Form.Controls.Add($EmailTB)
            $ok = New-Object System.Windows.Forms.Button
            $ok.Location = New-Object System.Drawing.Point(120,150)
            $ok.Size = New-Object System.Drawing.Size(75,23)
            $ok.Text = "OK"
            $ok.DialogResult = [System.Windows.Forms.DialogResult]::OK
            $form.AcceptButton = $ok
            $Form.Controls.Add($ok)
                $cancel = New-Object System.Windows.Forms.Button
                $cancel.Location = New-Object System.Drawing.Point(200,150)
                $cancel.Size = New-Object System.Drawing.Size(75,23)
                $cancel.Text = "Cancel"
                $cancel.DialogResult = [System.Windows.Forms.DialogResult]::Cancel
                $form.AcceptButton = $cancel
                $Form.Controls.Add($cancel)
$Result = $form.ShowDialog()
if ($Result -eq [System.Windows.Forms.DialogResult]::OK)
{
        $FirstName = $FirstNameTB.Text
            $LastName = $LastNameTB.Text
                $Email = $EmailTB.Text

                        $UserPrincipalName = $FirstName + "." + $LastName + "@contoso.com"
                            $DisplayName = $FirstName + " " + $LastName  
New-ADUser -Name $DisplayName -GivenName $FirstName -Surname $LastName -UserPrincipalName $UserPrincipalName -DisplayName $DisplayName -Title $Title -Department $Department -AccountPassword (ConvertTo-SecureString -AsPlainText "P@ssw0rd" -Force) -Enabled $true
}
