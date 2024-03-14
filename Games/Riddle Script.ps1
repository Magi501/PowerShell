#Welcome to the riddle game
#This is a practice of the If Else logic.

#The $answer variable is the answer

$answer = "time"

#The Riddle is below ""
Write-Host "I am a river that forever flows, my outer banks endlessly erode, my depths measure to the beat of a metranome."
for ($i = 1; $i -le 1; $i++) {
#$guess is the prompt to request the answer from the one playing the game
    $guess = Read-Host "What am I?"
    If ($guess -eq $answer) {
        Read-Host "Congratulations, you have solved the riddle!"
    }
            elseif ($guess -ne $answer) {
                Read-Host "Your answer is incorrect"
    }
}