@echo off
REM ============================================================
REM  Bersihkan lock + commit ulang yang RAPI + push ke GitHub
REM  Jalankan ini SEKALI (klik dua kali) untuk mempublish
REM  penambahan project "Indonesia Flood Risk EWS".
REM ============================================================
setlocal
cd /d "%~dp0"

echo === Hapus file lock yang tersangkut (jika ada) ===
if exist ".git\index.lock" del /f /q ".git\index.lock"
if exist ".git\HEAD.lock"  del /f /q ".git\HEAD.lock"

echo.
echo === Batalkan commit sementara, kembali sejajar dengan GitHub ===
git reset --mixed origin/master

echo.
echo === Commit ulang dengan line-ending yang benar (Windows) ===
git add -A
git commit -m "Tambah Indonesia Flood Risk EWS ke portfolio"

echo.
echo === Push ke GitHub Pages (branch master) ===
git push origin master

echo.
echo Selesai. Cek dalam ~1 menit di: https://ihsanuradib.github.io
echo (item baru: Indonesia Flood Risk EWS di bagian Portfolio)
echo.
pause
endlocal
