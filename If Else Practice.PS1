
if ($freespace -le 5GB) {
    Write-Host "Free disk space is less than 5GB"
    <# Action to perform if the condition is true #>
}elseif ($freespace -le 10GB) {
    Write-Host  "Free disk space is less than 10GB "
    <# Action when this condition is true #>
}else {
    Write-Host "Free disk space is more than 10GB"
}