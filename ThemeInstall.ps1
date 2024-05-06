# Define the path to the theme file
$themeFilePath = "C:\Windows\Resources\Themes\Paranoid Android - Nebula - light.theme"

# Set the theme using Start-Process
try {
    Start-Process -FilePath "explorer.exe" -ArgumentList "$themeFilePath"
    Write-Host "Theme set to '$themeFilePath' successfully!"
} catch {
    Write-Host "Failed to set the theme. Error: $_"
}

