# Testing Hello World in PowerShell
Write-Host "Hello World!" 
$Name = Read-Host -Prompt "What is your name"
Write-Host "Hello $Name!"

# check user number
$Number = Read-Host -Prompt "Enter a number"
if ($Number -cge 50 -and $Number -cle 100) {
    Write-Host "You entered a number between 25 and 50"
}
elseif ($Number -cge 50) {
    Write-Host "You entered a number greater than 50"
}
elseif ($Number -cle 25) {
    Write-Host "You entered a number less than 25"
}
else {
    Write-Host "You did not enter a number in the range of 25 to 50"
}

# create an array
$ArrayOfColors = @("Red", "Blue", "Green", "Yellow", "Orange", "Purple", "Black", "White");
Write-Host "Select a color from the list"
for ($i = 0; $i -lt $ArrayOfColors.Length; $i++) {
    Write-Host "$i. $($ArrayOfColors[$i])"
}
$color = Read-Host -Prompt "Select a number"
Write-Host "You selected $($ArrayOfColors[$color])"

