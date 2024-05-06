# Function to install TranslucentTB from the Microsoft Store
function Install-TranslucentTB {
  winget install translucenttb --accept-package-agreements --accept-source-agreements
}

# Function to set TranslucentTB to run automatically at boot
function Set-TranslucentTBRunAtBoot {
  # Set TranslucentTB to run at startup
  $regPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Run"
  $regName = "TranslucentTB"
  $regValue = "C:\Users\$env:USERNAME\AppData\Local\Microsoft\WindowsApps\ttb.exe"
  New-ItemProperty -Path $regPath -Name $regName -Value $regValue -PropertyType String -Force | Out-Null
}

# Function to create a shortcut to TranslucentTB
function Create-TranslucentTBShortcut {
  $shortcutPath = "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\TranslucentTB.lnk"
  $targetPath = "$env:LOCALAPPDATA\Microsoft\WindowsApps\TranslucentTB.exe"
  $WScriptShell = New-Object -ComObject WScript.Shell
  $shortcut = $WScriptShell.CreateShortcut($shortcutPath)
  $shortcut.TargetPath = $targetPath
  $shortcut.Save()
}

# Start TranslucentTB process
Start-Process -FilePath "C:\Users\$env:USERNAME\AppData\Local\Microsoft\WindowsApps\ttb.exe" -WindowStyle Hidden

# Wait for the window to appear (adjust sleep time as needed)
Start-Sleep -Seconds 2

# Find the window by its title
$window = Get-Process | Where-Object {$_.MainWindowTitle -match "TranslucentTB"}

# Bring the window into focus
if ($window) {
    $windowHandle = $window.MainWindowHandle
    Add-Type @"
        using System;
        using System.Runtime.InteropServices;
        public class User32 {
            [DllImport("user32.dll")]
            [return: MarshalAs(UnmanagedType.Bool)]
            public static extern bool SetForegroundWindow(IntPtr hWnd);
        }
"@
    [User32]::SetForegroundWindow($windowHandle)
}

for ($i = 0; $i -lt 4; $i++) {
    [System.Windows.Forms.SendKeys]::SendWait("{TAB}")
}

[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
