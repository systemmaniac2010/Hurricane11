# Hide desktop icons
$regPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
$regName = "HideIcons"
$regValue = 1

# Set registry value to hide icons
New-ItemProperty -Path $regPath -Name $regName -Value $regValue -PropertyType DWORD -Force

# Restart Windows Explorer to apply changes
Stop-Process -Name explorer -Force
Start-Process explorer
