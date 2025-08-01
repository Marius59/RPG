   
    $Maincharacter = [PSCustomObject]@{
    Hp       = 52
    Strenght = 14
    Armour   = 10
    atkmod  = 1.3
}
$slemming =[PSCustomObject]@{
    Name = 'Slemkar'
    Hp = 56
    Dfcmod = 1.0
}
$Bruker = Read-Host "Hvem er du?"
    Write-Host "Velkommen til dette spillet" $bruker

$m= "True"
While ($m -match "True"){
   Write-Host "Dette  er en RPG og du er helten/heltinnen i denne historien" "Å nei ser ut til at veien forover er blokkert, du kan angripe ved å skrive angrep(andre måter å slåss på blir lagt til senere)"
    $state = "True"
    While ($state -match "True"){
        $Action = Read-Host "gjør et angrep"
        Switch($action){
            Angrep{
            $slemming.hp = $slemming.hp - ($Maincharacter.strenght * $Maincharacter.atkmod * $slemming.Dfcmod)
            Write-host $slemming.hp
            }
            Quit{
            $state = "false" 
            $m = "False"  
            }
            $slemming.hp -le 0{
            Write-Host Du har slått fienden
            $state = "False"
            }
        }
    }   
}