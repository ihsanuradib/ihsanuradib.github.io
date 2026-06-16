@echo off
REM ============================================================
REM  Menyambungkan folder ini ke repo GitHub Pages Anda
REM  Repo: https://github.com/ihsanuradib/ihsanuradib.github.io
REM  Jalankan SEKALI saja (klik dua kali atau jalankan di terminal)
REM ============================================================
setlocal
cd /d "%~dp0"

echo.
echo === Cek git ===
git --version || (echo [ERROR] Git belum terpasang. Install dari https://git-scm.com/download/win & pause & exit /b 1)

echo.
echo === Inisialisasi & sambungkan remote ===
if not exist ".git" (
    git init
)
git remote remove origin 2>nul
git remote add origin https://github.com/ihsanuradib/ihsanuradib.github.io.git

echo.
echo === Ambil isi repo dari GitHub ===
git fetch origin
git checkout -f master 2>nul || git checkout -t origin/master
git branch --set-upstream-to=origin/master master 2>nul

echo.
echo === Selesai. Isi repo sekarang ada di folder ini ===
git status
echo.
pause
endlocal
