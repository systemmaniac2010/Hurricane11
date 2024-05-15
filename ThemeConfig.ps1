 # Check if the script is running with administrative privileges
if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    Write-Host "Please run this script as an administrator."
    exit
}

# Set default app mode to dark
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "AppsUseLightTheme" -Value 0

# Change window appearance to dark mode
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "SystemUsesLightTheme" -Value 0

# Change taskbar appearance to dark mode
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "ColorPrevalence" -Value 1
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "EnableTransparency" -Value 0

# Change title bars appearance to dark mode
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\DWM" -Name "ColorizationColor" -Value 0x000000
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\DWM" -Name "ColorizationAfterglow" -Value 0x000000
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\DWM" -Name "ColorizationOpaqueBlend" -Value 0

Write-Host "Dark mode set as default for the entire system successfully!"

# Define the registry key paths
$registryPath1 = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes"
$registryPath2 = "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Themes"

# Set registry values
Set-ItemProperty -Path $registryPath1 -Name "InstallTheme" -Value ""
Set-ItemProperty -Path $registryPath1 -Name "InstallThemeLight" -Value ""
Set-ItemProperty -Path $registryPath1 -Name "InstallThemeDark" -Value ""
Set-ItemProperty -Path $registryPath2 -Name "InstallTheme" -Value ""
Set-ItemProperty -Path $registryPath2 -Name "InstallThemeLight" -Value ""
Set-ItemProperty -Path $registryPath2 -Name "InstallThemeDark" -Value ""