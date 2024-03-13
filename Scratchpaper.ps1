$answer = "time"
Write-Host "I am a river that forever flows, my outer banks endlessly erode, my depths measure to the beat of a metranome."
for ($i = 1; $i -le 1; $i++) {
    $guess = Read-Host "What am I?"
    If ($guess -eq $answer) {
        Read-Host "Congratulations, you have solved the riddle!"
    }
            elseif ($guess -ne $answer) {
                Read-Host "Your answer is incorrect."
    }
}

