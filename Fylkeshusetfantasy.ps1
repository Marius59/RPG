$Maincharacter = [PSCustomObject]@{
    Hp       = 52
    Strenght = 14
    Armour   = 10
}
$slemming =[PSCustomObject]@{
    Name = 'Slemkar'
    Hp = 56
}
$Bruker = Read-Host "Hvem er du?"
    Write-Host "Velkommen til dette spillet" $bruker
Function Get-Formula {
    $currenthp - $damage #* $dmgmodifier * $defencemodifier
}


$state = "True"
    While ($state -match "True"){
        $Action = Read-Host "gjør et angrep"
        Switch($action){
            Angrep{
            $result = Get-Formula -currenthp $slemming.Hp -damage $Maincharacter.Strenght
            Write-Host $result
            }
            Quit{
            $state = "false"   
            }
            Test{
            $slemming.Hp - $Maincharacter.Strenght
            }
        }
    }   