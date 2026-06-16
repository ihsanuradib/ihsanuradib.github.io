# Panduan Menghubungkan Folder ke GitHub Pages

Folder ini akan disambungkan ke repo **[ihsanuradib.github.io](https://github.com/ihsanuradib/ihsanuradib.github.io)**, yang tampil online di **https://ihsanuradib.github.io**.

> Catatan: proses `clone` dan `push` butuh login GitHub, jadi harus dijalankan di komputer Anda (tidak bisa saya jalankan dari sisi saya).

## Prasyarat (sekali saja)

1. **Install Git for Windows** jika belum: https://git-scm.com/download/win
   Saat instalasi, biarkan opsi default (termasuk *Git Credential Manager*) — ini yang akan memunculkan jendela login GitHub otomatis saat push pertama.

## Langkah 1 — Sambungkan folder ke repo

Klik dua kali **`connect-github.bat`**.

Skrip ini akan: inisialisasi git, menambahkan remote ke repo Anda, lalu menarik (fetch) semua isi repo (`index.html`, `assets/`, `fonts/`, `forms/`, `js/`, `README.md`) ke folder ini.

Setelah selesai, isi website resume Anda akan muncul di folder ini.

## Langkah 2 — Tambahkan project geospatial

Tambahkan project sebagai sub-folder, misalnya:

```
ihsanuradib.github.io/
├── index.html              <- halaman utama (sudah ada)
├── geospatial/             <- buat folder baru untuk portofolio geospatial
│   ├── dashboard-xxx/       (dashboard web / Leaflet / Kepler dsb)
│   ├── python-xxx/          (project Python: notebook, script, hasil peta)
│   └── gee-xxx/             (Google Earth Engine: script .js + screenshot)
```

Tiap dashboard berbasis HTML bisa langsung diakses di:
`https://ihsanuradib.github.io/geospatial/dashboard-xxx/`

## Langkah 3 — Push ke GitHub

Setelah menambah/mengubah file, klik dua kali **`push-update.bat`**
(atau dari terminal: `push-update.bat "pesan commit Anda"`).

Push pertama akan memunculkan jendela login GitHub — login sekali, lalu kredensial tersimpan.

## Perintah manual (alternatif via terminal)

```bash
# Langkah 1 (sekali)
cd "E:\Portofolio\Portofolio Geospatial"
git init
git remote add origin https://github.com/ihsanuradib/ihsanuradib.github.io.git
git fetch origin
git checkout -t origin/master

# Langkah 3 (setiap update)
git add -A
git commit -m "tambah project geospatial"
git push origin master
```

## Tips

- Repo ini memakai branch **`master`** (bukan `main`).
- GitHub Pages otomatis mem-publish dari branch `master`. Perubahan online muncul ~1 menit setelah push.
- Untuk peta interaktif besar, simpan data sebagai file ringan (GeoJSON/PNG); hindari file mentah berukuran besar agar repo tetap ringan.
