###################################################
#                   ZORK ENCOUNTER                #
###################################################
#This is a practice using a few references from "Zork"
#The Underground Empire to practice if else logic


<#Scenario: You received an abstract puzzle referencing the obscure TV
show which references the obscure 70's classif video game "Zork"
If you are a true nerd of nerds, what was in Chuck's Hero Satchel?
#>

#Situation prompt
Write-Host "The terrible troll raises his sword"
for ($i = 1; $i -le 1; $i++) {

#Trivia answer / response
$answer = "attack troll with nasty knife"
    $action = Read-Host -prompt "What do you do?"
    
    If ($action -eq $answer) {
        Read-Host "You have defeated the troll, uploading Intersect"
    }
            elseif ($guess -ne $answer) {
                Read-Host "You are crushed by the troll"
    }
}
Write-Host "--------------------------------------------"
Write-Host "                 GAME OVER                  "
Write-Host "--------------------------------------------"