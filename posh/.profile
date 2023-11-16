oh-my-posh init pwsh | Invoke-Expression

Import-Module PSReadLine
Import-Module Terminal-Icons

# Shows navigable menu of all options when hitting Tab
Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete

# Autocompleteion for Arrow keys
Set-PSReadLineOption -HistorySearchCursorMovesToEnd
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

Set-PSReadLineOption -ShowToolTips
Set-PSReadLineOption -PredictionSource History

# Alias functions
Function OpenVSCode {code .}
Function OpenFinder {start .}
Function ip {curl ifcfg.me}
Function control {phpswitch 7.3; nvm use 8.11.2; composer self-update --1;}
Function kickstart {phpswitch 8.1; nvm use 18.17.0; composer self-update --2;}

# Aliases
Set-Alias v nvim
Set-Alias ll ls
Set-Alias grep findstr
Set-Alias c OpenVSCode
Set-Alias o OpenFinder

oh-my-posh --init --shell pwsh --config C:\Users\$MACHINE_USER\AppData\Local\Programs\oh-my-posh\themes\dracula.omp.json | Invoke-Expression

# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
