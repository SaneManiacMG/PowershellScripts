# Testing Hello World in PowerShell
Write-Host "Hello World!" 
$Name = Read-Host -Prompt "What is your name"
Write-Host "Hello $Name!"

# Get user input
Write-Host "What's your favorite color?"
Write-Host "1. Red"
Write-Host "2. Blue"
Write-Host "3. Green"
$color = Read-Host -Prompt "Select a number"
switch ($color) {
    1 { Write-Host "You selected Red" }
    2 { Write-Host "You selected Blue" }
    3 { Write-Host "You selected Green" }
    default { Write-Host "You did not select a valid color" }
}
Write-Host ""

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
finally {
    Write-Host "You entered $Number\n"
}