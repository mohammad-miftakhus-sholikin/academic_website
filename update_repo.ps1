# Set maximum allowed size in bytes (100 MB)
$MaxSize = 100MB

# Check if inside a Git repository
if (-not (Test-Path ".git")) {
    Write-Host "[X] Not inside a Git repository."
    exit 1
}

# Get list of modified, staged, or new files
$changedFiles = git status --porcelain | ForEach-Object {
    ($_ -split "\s+", 3)[1]
} | Where-Object { Test-Path $_ } | Sort-Object -Unique

# Calculate total file size
$totalSize = 0
foreach ($file in $changedFiles) {
    $fileInfo = Get-Item $file -ErrorAction SilentlyContinue
    if ($fileInfo -ne $null) {
        $totalSize += $fileInfo.Length
    }
}

# Display total in MB
$sizeMB = [math]::Round($totalSize / 1MB, 2)
Write-Host "[*] Total modified file size: $sizeMB MB"

# Check against limit
if ($totalSize -gt $MaxSize) {
    Write-Host "[!] Total modified files exceed 100 MB. Git push aborted." -ForegroundColor Yellow
    exit 1
}

# Stage all changes
git add .

# Request commit message (with validation)
do {
    $commitMessage = Read-Host "Enter commit message"
    if ([string]::IsNullOrWhiteSpace($commitMessage)) {
        Write-Host "[!] Commit message cannot be empty." -ForegroundColor Yellow
    }
} while ([string]::IsNullOrWhiteSpace($commitMessage))

# Commit changes
git commit -m "$commitMessage"

# Push to remote
git push

Write-Host "[OK] Git push completed." -ForegroundColor Green