$n=0;$value = 0;$valuesEntered =0; $index=0;$old=0;$buffer=@(0,0,0,0,0,0,0,0,0,0);$sum=0;$avg=0;$length=10;
$n = Read-Host -Prompt "Enter Number to be averaged"

try{
while(1){
$value = Read-Host -Prompt "Enter a Value"
$buffer[$index++]=$value
$valuesEntered++;
$index%=10;
Write-Host "Buffer Contents:"
    for($i=0;$i -lt $length;$i++){
    Write-Host $buffer[$i] " "-NoNewline
    }
$sum+=$value
    if($valuesEntered -le $n){
    $avg=$sum/$valuesEntered
    }else{
    $old%=$length
    $sum-=$buffer[$old++]
    $avg=$sum/$n
    }

Write-Host "`nNumber of values entered: "$valuesEntered " Average Over: "$n " Average: "$avg
}
}catch{
Write-Host "`n`nPlease enter numeric characters only"
}
