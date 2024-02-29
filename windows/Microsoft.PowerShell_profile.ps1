oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\jandedobbeleer.omp.json" | Invoke-Expression

# Alias
New-Alias -Name clr -Value clear
New-Alias -Name d -Value docker
New-Alias -Name dc -Value docker-compose
New-Alias -Name onc -Value GoToOnclusive
New-Alias -Name vc -Value GoToVueComponents
New-Alias -Name omp-update -Value UpgradeOhMyPosh

# Functions
function GoToOnclusive { Set-Location ".\Repos\Onclusive" }
function GoToVueComponents { Set-Location ".\Repos\vue-components" }
function UpgradeOhMyPosh {
    try {
        winget upgrade jandedobbeleer.OhMyPosh -s winget
        Write-Host "Oh My Posh upgraded successfully!"
    } catch {
        Write-Error "Error upgrading Oh My Posh: $($_.Exception.Message)"
        Exit-Function -Code 1
    }
}

# Modules
Import-Module -Name Terminal-Icons
