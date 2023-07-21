function GetUserName() {
    Write-Host "Hello World!" 
    $Name = Read-Host -Prompt "What is your name"
    Write-Host "Hello $Name!"
}

function SelectColor() {
    # create an array
    $ArrayOfColors = @("Red", "Blue", "Green", "Yellow", "Orange", "Purple", "Black", "White");
    Write-Host "Select a color from the list"
    for ($i = 0; $i -lt $ArrayOfColors.Length; $i++) {
        Write-Host "$i. $($ArrayOfColors[$i])"
    }
    $color = Read-Host -Prompt "Select a number"
    Write-Host "You selected $($ArrayOfColors[$color])"
}

function SelectNumber() {
    # check user number
    $Number = Read-Host -Prompt "Enter a number"
    if ($Number -ge 25 -and $Number -le 50) {
        Write-Host "You entered a number between 25 and 50"
    }
    elseif ($Number -gt 50) {
        Write-Host "You entered a number greater than 50"
    }
    elseif ($Number -lt 25) {
        Write-Host "You entered a number less than 25"
    }
    else {
        Write-Host "You did not enter a number in the range of 25 to 50"
    }
}

# select function to run
function SelectFunction() {
    param($ShouldRun)
    while ($ShouldRun) {
        Write-Host "Select a function to run"
        Write-Host "1. GetUserName"
        Write-Host "2. SelectColor"
        Write-Host "3. SelectNumber"
        $function = Read-Host -Prompt "Select a number"
        switch ($function) {
            1 { GetUserName }
            2 { SelectColor }
            3 { SelectNumber }
            default { Write-Host "You did not select a valid function" }
        }
        $ShouldRun = Read-Host -Prompt "Do you want to run another function? (y/n)"
        if ($ShouldRun -eq "n") {
            $ShouldRun = $False
        }
    }
}

$KeepRunning = $True

SelectFunction -ShouldRun $KeepRunning

