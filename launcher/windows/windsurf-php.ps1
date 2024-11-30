# Windsurf Launcher PowerShell Script
Write-Host "Windsurf PHP"

# Check if a directory parameter is provided
if (-not $args[0]) {
    Write-Host "No directory provided. Opening home directory."
    $DIRECTORY = "~"
} elseif ($args[0] -eq ".") {
    Write-Host "Opening current directory."
    $DIRECTORY = (Get-Location).Path
} else {
    $DIRECTORY = $args[0]
}

# Launch Windsurf with the specified directory
Start-Process -FilePath "Windsurf" -ArgumentList "--profile=`"PHP Lite`" --extensions-dir=`"D:\Program Files\.windsurf\extensions`"", "`"$DIRECTORY`"" -WindowStyle Hidden