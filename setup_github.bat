@echo off
echo ==========================================
echo      Setting up GitHub Repository
echo ==========================================

REM Check if git is installed
where git >nul 2>nul
if %errorlevel% neq 0 (
    echo Error: Git is not installed or not in your PATH.
    echo Please install Git for Windows from https://git-scm.com/download/win
    echo After installing, run this script again.
    pause
    exit /b
)

echo Initializing Git...
git init

echo Configuring User...
git config user.name "sajith m t"
git config user.email "sajithmt999@gmail.com"

echo Adding files...
git add .

echo Committing files...
git commit -m "Initial commit - Portfolio Website"

echo Renaming branch to main...
git branch -M main

echo Adding remote origin...
git remote remove origin 2>nul
git remote add origin https://github.com/sajithmt999-png/Sajith-M-T-personal-portfolio.git

echo Pushing to GitHub...
echo (You may be asked to sign in via the browser)
git push -u origin main

echo ==========================================
echo      Upload Complete!
echo ==========================================
pause
