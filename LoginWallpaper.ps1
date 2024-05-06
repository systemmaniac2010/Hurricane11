# Set the desktop wallpaper
Set-ItemProperty -Path 'HKCU:\Control Panel\Desktop\' -Name Wallpaper -Value "C:\Windows\Web\Wallpaper\Main\Hurricane11Wallpaper.jpg"

$Key = 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\PersonalizationCSP'
if (!(Test-Path -Path $Key)) {
   New-Item -Path $Key -Force | Out-Null
}
Set-ItemProperty -Path $Key -Name LockScreenImagePath -value "C:\Windows\Web\Wallpaper\Main\Hurricane11Wallpaper.jpg"


# Refresh the desktop to apply changes
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters