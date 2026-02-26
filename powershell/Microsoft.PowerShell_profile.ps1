Invoke-Expression (&starship init powershell)

function y {
    $tmp = [System.IO.Path]::GetTempFileName()
    yazi $args --cwd-file="$tmp"
    $cwd = Get-Content -Path $tmp -Encoding UTF8
    if (-not [String]::IsNullOrEmpty($cwd) -and $cwd -ne $PWD.Path) {
        Set-Location -LiteralPath ([System.IO.Path]::GetFullPath($cwd))
    }
    Remove-Item -Path $tmp
}

Set-Alias -Name v -Value nvim
Set-Alias -Name vim -Value nvim
Set-Alias -Name z -Value zoxide
Set-Alias -Name make -Value mingw32-make

Invoke-Expression (& { (zoxide init powershell --cmd cd | Out-String) })
