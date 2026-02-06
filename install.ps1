# You need to run this script in pwsh7 as Administrator to create the links.
# After running this script, you need to run the following command to enable the execution policy:
# Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser


# 当前脚本所在目录
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Definition

# 链接1：.wezterm.lua
$weztermTarget = "$scriptDir\wezterm\.wezterm.lua"
$weztermLink   = "$env:USERPROFILE\.wezterm.lua"
if (Test-Path $weztermLink) {
    Remove-Item $weztermLink -Force
}
cmd /c mklink `"$weztermLink`" `"$weztermTarget`"

# 链接2：nvim目录
$nvimTarget = "$scriptDir\nvim\.config\nvim"
$nvimLink   = "$env:LOCALAPPDATA\nvim"
if (Test-Path $nvimLink) {
    Remove-Item $nvimLink -Recurse -Force
}
cmd /c mklink /D `"$nvimLink`" `"$nvimTarget`"

if (!(Test-Path (Split-Path $PROFILE -Parent))) { New-Item -ItemType Directory -Path (Split-Path $PROFILE -Parent) -Force | Out-Null }
Copy-Item "$scriptDir\powershell\Microsoft.PowerShell_profile.ps1" $PROFILE -Force