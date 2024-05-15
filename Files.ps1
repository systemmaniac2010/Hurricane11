# Define the source and destination paths
$sourcePath1 = "C:\Windows\Setup\Resources"
$sourcePath2 = "C:\Windows\Setup\Web"
$destinationPath = "C:\Windows"

# Copy files from sourcePath1 to destinationPath
Copy-Item -Path $sourcePath1\ -Destination $destinationPath -Recurse -Force

# Copy files from sourcePath2 to destinationPath
Copy-Item -Path $sourcePath2\ -Destination $destinationPath -Recurse -Force
