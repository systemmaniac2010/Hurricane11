# Get the directory of the current script
$ScriptDirectory = Split-Path -Parent $MyInvocation.MyCommand.Path

Start-Process powershell.exe -ArgumentList "-File '$ScriptDirectory\Files.ps1'" -Verb RunAs -Wait

Start-Process powershell.exe -ArgumentList "-File '$ScriptDirectory\OEMConfig.ps1'" -Verb RunAs -Wait

Start-Process powershell.exe -ArgumentList "-File '$ScriptDirectory\ThemeConfig.ps1'" -Verb RunAs -Wait

Start-Process powershell.exe -ArgumentList "-File '$ScriptDirectory\ThemeInstall.ps1'" -Verb RunAs -Wait

Start-Process powershell.exe -ArgumentList "-File '$ScriptDirectory\LoginWallpaper.ps1'" -Verb RunAs -Wait

Start-Process powershell.exe -ArgumentList "-File '$ScriptDirectory\DesktopWallpaper.ps1'" -Verb RunAs -Wait

Start-Process powershell.exe -ArgumentList "-File '$ScriptDirectory\Desktop.ps1'" -Verb RunAs -Wait

Start-Process powershell.exe -ArgumentList "-File '$ScriptDirectory\Translucenttb.ps1'" -Verb RunAs -Wait

