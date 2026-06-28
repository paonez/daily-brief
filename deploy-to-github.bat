@echo off
REM ─────────────────────────────────────────────────────
REM  Daily Brief — GitHub Pages Deployment Script
REM  Run this once from inside the daily-brief folder
REM ─────────────────────────────────────────────────────

set /p GITHUB_USER=Enter your GitHub username:
set REPO_NAME=daily-brief

echo.
echo [1/4] Initialising git repo...
git init
git add .
git commit -m "Initial deploy: Pavan's Daily Brief"

echo.
echo [2/4] Creating GitHub repo and pushing...
echo  -> Go to https://github.com/new
echo  -> Name it: %REPO_NAME%
echo  -> Make it PUBLIC
echo  -> Do NOT add README or .gitignore
echo  -> Click "Create repository"
echo.
pause

git remote add origin https://github.com/%GITHUB_USER%/%REPO_NAME%.git
git branch -M main
git push -u origin main

echo.
echo [3/4] Enabling GitHub Pages...
echo  -> Go to: https://github.com/%GITHUB_USER%/%REPO_NAME%/settings/pages
echo  -> Under "Source" select: Deploy from a branch
echo  -> Branch: main  /  Folder: / (root)
echo  -> Click Save
echo.
pause

echo.
echo [4/4] DONE!
echo.
echo Your app will be live in ~60 seconds at:
echo   https://%GITHUB_USER%.github.io/%REPO_NAME%/
echo.
echo Bookmark that URL on your phone and add it to your home screen!
echo.
pause
