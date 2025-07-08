$Maincharacter = [PSCustomObject]@{
    Name     =


    HP       = '52'
    Strenght = '14'
    Armour   = '10'
}
$Bruker = Read-Host "Hva er namnet ditt?"
    Write-Host "Velkommen til dette spillet" $bruker
Function Get-Formula {
    $hp - $damage * $dmgmodifier 
}


$state = "True"
    While ($state -match "True"){
        $brukerinput = Read-Host"gjør et angrep"
        Switch($brukerinput)
        Angrep{
            
        }
    }   