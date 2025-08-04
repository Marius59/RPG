#ønskeliste: Flere karakterer, turn basdert på "speed" stat
$Maincharacter = [PSCustomObject]@{
Hp       = 52
Strenght = 14
Armour   = 10
atkmod  = 1.3
Dfcmod = 1.0
}
$slemming =[PSCustomObject]@{
    Name = 'Slemkar'
    Hp = 56
    Strenght = 15
    Dfcmod = 1.0
    atkmod = 1.0
}
$Bruker = Read-Host "Hvem er du?"
Write-Host "Velkommen til dette spillet" $bruker
Function Get-Formula {
    param (
        [int]$damage
    )
   $slemming.hp = $slemming.hp - $damage
   $slemming.Hp
}
$m= $true 
While ($m -match $true ){
   Write-Host "Dette  er en RPG og du er helten/heltinnen i denne historien" "Å nei ser ut til at veien forover er blokkert, du kan angripe ved å skrive angrep(andre måter å slåss på blir lagt til senere)"
    $state = $true 
    #Dette er en "battle" mot en fiende. Her må  jeg legge til flere option for spilleren samt funksjon for at fienden angriper.
        if ($state -match $true ){
            $Action = Read-Host "gjør et angrep"
            Switch($action){
                Angrep{
                Get-Formula $slemming.Hp -damage $Maincharacter.Strenght
                }
                Quit{
                $m = $false  
                }
            }
        Elseif ($slemming.hp-le 0){
        
        $state = $false 
        }
    }
}   
