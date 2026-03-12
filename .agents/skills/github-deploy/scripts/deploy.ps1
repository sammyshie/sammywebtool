param (
    [string]$RepoUrl = "https://github.com/sammyshie/sammywebtool.git",
    [string]$CommitMessage = "Auto-updated sammywebtool"
)

# 檢查 Git 是否安裝
if (!(Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Error "Git is not installed on this system."
    exit 1
}

# 確保在正確的目錄運作
$targetPath = "D:\21.Anti\sammywebtool"
if (!(Test-Path $targetPath)) {
    New-Item -ItemType Directory -Force -Path $targetPath
}
Set-Location -Path $targetPath

# 檢查並初始化或更新遠端
if (!(Test-Path .git)) {
    Write-Host "Initializing new Git repository in $targetPath..."
    git init
    git remote add origin $RepoUrl
    git branch -M main
} else {
    Write-Host "Updating remote URL to $RepoUrl..."
    git remote set-url origin $RepoUrl
}

# 執行部署
Write-Host "Adding files and committing..."
git add .
git commit -m $CommitMessage

Write-Host "Pushing to GitHub..."
git push -u origin main --force

Write-Host "Deployment to sammywebtool completed successfully!"
