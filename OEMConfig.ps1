# Create the OEMInformation key if it doesn't exist
New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation" -Force

# Set OEM information
Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation" -Name "Manufacturer" -Value "HurricaneOS"
Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation" -Name "Model" -Value "Hurricane11"
Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation" -Name "SupportURL" -Value "https://www.reddit.com/r/Hurricane11/"
Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation" -Name "Logo" -Value "C:\Windows\Resources\OEM\Hurricane11WallpaperOEMLogo.bmp"


