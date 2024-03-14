#Welcome to the number game!
#How this works: The computer generates a random number from 1-100 (101 to allow for 100 to be an option)\
#Rules: 7 tries to guess the right number

#This specifies the range 1-101 to allow "100" to be a possibility
$number = Get-Random -Minimum 1 -Maximum 101
Write-Host "Pick a number between 1 and 100. You have 7 attempts to get it right."

# -le value is number of tries. I am using (7) in this setup
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