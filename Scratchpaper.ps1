Add-Type -AssemblyName PresentationFramework
$form = New-Object System.Windows.Forms.Form
$form.Text ='New User Input'
$form.Size = New-Object System.Drawing.Size(300,200)
$Form.StartPosition = "CenterScreen"

    $FirstName = New-Object System.Windows.Forms.Label
    $FirstName.Location = New-Object System.Drawing.Point(10,20)
    $FirstName.Size = New-Object System.Drawning.Size(80,20)
    $FirstName.Text = "First Name:"
    $form.Controls.Add($FirstName)
        $FirstNameTB = New-Object System.Windows.Forms.TextBox
        $FirstNameTB.Location = New-Object System.Drawing.Point(100,20)
        $FirstNameTB.Size = New-Object System.Drawning.Size(150,20)
        $Form.Controls.Add($FirstNameTB)
    $LastName = New-Object System.Windows.Forms.Label
    $LastName.Location = New-Object System.Drawing.Point(0,10)
    $LastName.Size = New-Object System.Drawing.Point(10,50)
    $LastName.Text = "Last Name:"
    $form.Controls.Add($LastName)
        $LastNameTB = New-Object System.Windows.Forms.TextBox
        $LastNameTB.Location = New-Object System.Drawing.Point(100,0)
        $LastNameTB.Size = New-Object System.Drawning.Size(150,20)
        $Form.Controls.Add($LastNameTB)
    $Email = New-Object System.Windows.Forms.Label
    $Email.Location = New-Object System.Drawing.Location(10,80)
    $Email.Size = New-Object System.Drawing.Size(80,20)
    $Email.Text = "Email:"
    $form.Controls.Add($Email)
        $EmmailTB = New-Object System.Windows.Forms.TextBox
        $EmailTB.Location = New-Object System.Drawing.Point(100,80)
        $EmailTB.Size = New-Object System.Drawing.Size(150,20)
        $Form.Controls.Add($EmailTB)
            $ok = New-Object System.Windows.Forms.Button
            $ok.Location = New-Object System.Drawing.Point(100,140)
            $ok.Size = New-Object System.Drawing.Size(75,23)
            $ok.Text = "OK"
            $ok.DialogResult = [System.Windows.Forms.DialogResult]::OK
            $form.AcceptButton = $ok
            $Form.Controls.Add($ok)
                $cancel = New-Object System.Windows.Forms.Button
                $cancel.Location = New-Object System.Drawing.Point(175,140)
                $cancel.Size = New-Object System.Drawing.Size(75,23)
                $cancel.Text = "Cancel"
                $cancel.DialogResult = [System.Windows.Forms.DialogResult]::Cancel
                $form.AcceptButton = $cancel
                $Form.Controls.Add($cancel)
$Result = $form.ShowDialog()             

