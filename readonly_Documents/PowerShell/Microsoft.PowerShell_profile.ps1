# region Conda
# # ! Comes from https://github.com/conda/conda/issues/11648#issuecomment-1541546403
# $Env:CONDA_EXE = "C:\ProgramData\miniconda3\Scripts\conda.exe"
# $Env:_CE_M = ""
# $Env:_CE_CONDA = ""
# $Env:_CONDA_ROOT = "C:\ProgramData\miniconda3"
# $Env:_CONDA_EXE = "C:\ProgramData\miniconda3\Scripts\conda.exe"
# $CondaModuleArgs = @{ChangePs1 = $True }
# Import-Module "$Env:_CONDA_ROOT\shell\condabin\Conda.psm1" -ArgumentList $CondaModuleArgs
# Remove-Variable CondaModuleArgs
# endregion

# region PDM
# Get-ChildItem "$PROFILE\..\Completions\" | ForEach-Object {
#     . $_.FullName
# }
# endregion

# region oh-my-posh
# oh-my-posh init pwsh --config 'C:\Users\FYWinds\AppData\Local\Programs\oh-my-posh\themes\powerlevel10k_lean.omp.json' | Invoke-Expression(& uv generate-shell-completion powershell) | Out-String | Invoke-Expression
# endregion

# region uv
# (& uv generate-shell-completion powershell) | Out-String | Invoke-Expression
# endregion

# region zoxide
# Invoke-Expression (& { (zoxide init powershell | Out-String) })
# endregion

# region Aliases
Set-Alias -Name cat -Value bat
Set-Alias -Name czm -Value chezmoi
function czmcd {
    Set-Location $(chezmoi source-path)
}
# endregion

# region sfsu | A rust implementation of scoop
Invoke-Expression (&sfsu hook)
# endregion

# region Starship
Invoke-Expression (&starship init powershell)
# endregion