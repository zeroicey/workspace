# Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
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
$nvimTarget = "$scriptDir\nvim"
$nvimLink   = "$env:LOCALAPPDATA\nvim"
if (Test-Path $nvimLink) {
    Remove-Item $nvimLink -Recurse -Force
}
cmd /c mklink /D `"$nvimLink`" `"$nvimTarget`"
