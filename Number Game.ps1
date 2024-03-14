$number = Get-Random -Minimum 1 -Maximum 101
Write-Host "Pick a number between 1 and 100. You have 7 attempts to get it right."

for ($i = 1; $i -le 7; $i++) {
        $guess = Read-Host "Guess #$i"

    if ($guess -eq $number) {
            Write-Host "Congratulations! You got it in $i guesses."
                    break
 }
     elseif ($guess -gt $number) {
                Write-Host "Too high! You have $($i - 7) guesses left."
     }
         else {
                    Write-Host "Too low! You have $($i - 7) guesses left."
         }
        }