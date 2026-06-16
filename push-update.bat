@echo off
REM ============================================================
REM  Push perubahan ke GitHub Pages
REM  Pakai ini setiap kali selesai menambah/ubah project.
REM ============================================================
setlocal
cd /d "%~dp0"

set "MSG=%*"
if "%MSG%"=="" set "MSG=update portofolio geospatial"

echo.
echo === Menambahkan semua perubahan ===
git add -A

echo.
echo === Commit: %MSG% ===
git commit -m "%MSG%" || echo (tidak ada perubahan untuk di-commit)

echo.
echo === Push ke GitHub (branch master) ===
git push origin master

echo.
echo Selesai. Cek hasilnya di: https://ihsanuradib.github.io
echo.
pause
endlocal
