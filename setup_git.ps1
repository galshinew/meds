# Set up Git configuration
git config --global user.name "galshinew"
git config --global user.email "galshinew@gmail.com"

# Create directory if it doesn't exist
$statusPath = "C:\Users\galsh\AppData\Roaming\pills\status.html"
New-Item -ItemType Directory -Force -Path $statusPath

# Create empty status.html file
$htmlPath = Join-Path $statusPath "status.html"
"" | Set-Content $htmlPath

# Initialize Git repository if not already initialized
if (-not (Test-Path ".git")) {
    git init
}

# Add remote origin
git remote remove origin
git remote add origin https://github.com/galshinew/meds.git

# Add and commit changes
git add .
git commit -m "Initial setup with status.html"

# Push to GitHub
git push -u origin master 