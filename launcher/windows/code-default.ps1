# VSCode Launcher PowerShell Script
Write-Host "VSCode"

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

# Launch VSCode with the specified directory
Start-Process -FilePath "code" -ArgumentList "--profile=`"Default`" --extensions-dir=`"D:\Program Files\.vscode\extensions`" --user-data-dir=`"D:\Program Files\.vscode\settings`"", "`"$DIRECTORY`"" -WindowStyle Hidden