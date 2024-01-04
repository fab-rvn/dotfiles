oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\jandedobbeleer.omp.json" | Invoke-Expression

# Alias
New-Alias -Name clr -Value clear
New-Alias -Name d -Value docker
New-Alias -Name dc -Value docker-compose
New-Alias -Name onc -Value GoToOnclusive
New-Alias -Name vc -Value GoToVueComponents

# Functions
function GoToOnclusive { Set-Location ".\Repos\Onclusive" }
function GoToVueComponents { Set-Location ".\Repos\vue-components" }

# Modules
Import-Module -Name Terminal-Icons

