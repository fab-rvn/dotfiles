# Oh My Posh
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\custom.omp.json" | Invoke-Expression


# Alias
New-Alias -Name clr -Value clear
New-Alias -Name d -Value docker
New-Alias -Name dc -Value docker-compose
New-Alias -Name touch -Value New-Item
New-Alias -Name repos -Value GoToRepos
New-Alias -Name omp-update -Value UpgradeOhMyPosh


# Functions
function GoToRepos { Set-Location ".\RiderProjects\" }

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
Import-Module Terminal-Icons
