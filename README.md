# Proyek Manufaktur - Backend API (Laravel)

API backend ini dibangun menggunakan Laravel untuk mengelola alur kerja manufaktur sederhana, mencakup perencanaan produksi oleh PPIC hingga eksekusi oleh tim Produksi.

## 📝 Deskripsi Proses Bisnis

Aplikasi ini mensimulasikan alur kerja manufaktur modern yang terstruktur dan dapat dilacak, dibagi menjadi dua modul utama:

1.  **Modul PPIC (Perencanaan)**
    Proses dimulai dari departemen PPIC yang membuat **Rencana Produksi** berdasarkan kebutuhan. Rencana ini bersifat proposal dan harus mendapatkan persetujuan dari Manajer sebelum dapat dieksekusi.

2.  **Modul Produksi (Eksekusi)**
    Setelah Manajer menyetujui sebuah Rencana, sistem secara otomatis membuat **Order Produksi** resmi. Tim Produksi kemudian dapat melihat order ini, mengubah statusnya saat pengerjaan dimulai, dan melaporkan hasil akhir (jumlah aktual & reject) setelah selesai.

Seluruh proses ini didukung oleh sistem otorisasi berbasis peran (Manajer, Staff PPIC, Staff Produksi) dan sistem notifikasi real-time.

---
## ⚙️ Alur Kerja Backend

Backend ini menyediakan serangkaian endpoint API untuk mengelola sumber daya aplikasi.

### Modul PPIC (`ProductionPlanController`)
- **Pembuatan Rencana (`POST /api/plans`)**: Staff PPIC mengirimkan data produk, jumlah, dan tanggal target. Sistem membuat rencana baru dengan status `menunggu_persetujuan` dan mengirimkan notifikasi ke Manajer.
- **Persetujuan (`POST /api/plans/{id}/approve`)**: Manajer menyetujui rencana. Status rencana diubah menjadi `disetujui`, **Order Produksi** baru dibuat secara otomatis, dan notifikasi dikirim ke Staff PPIC (pembuat) dan semua Staff Produksi.
- **Penolakan (`POST /api/plans/{id}/reject`)**: Manajer menolak rencana. Status diubah menjadi `ditolak` dan notifikasi dikirim ke Staff PPIC.
- **CRUD Tambahan**: Staff PPIC dapat melihat daftar rencana (`GET`), detail (`GET /{id}`), mengedit (`PUT /{id}`), dan menghapus (`DELETE /{id}`) rencana **selama statusnya masih `menunggu_persetujuan`**.

### Modul Produksi (`ProductionOrderController`)
- **Melihat Daftar Order (`GET /api/orders`)**: Staff Produksi dapat melihat semua order yang siap atau sedang dikerjakan.
- **Mengubah Status (`PATCH /api/orders/{id}/status`)**: Staff Produksi mengubah status order (misalnya dari `menunggu` ke `sedang_dikerjakan`). Setiap perubahan status akan dicatat di `production_logs` dan mengirim notifikasi progres ke Manajer. Saat order diselesaikan, jumlah aktual dan reject wajib diisi.
- **Melihat Detail & Riwayat (`GET /api/orders/{id}`)**: Melihat detail lengkap sebuah order, termasuk riwayat perubahan statusnya dari awal hingga akhir.

### Fitur Pendukung
- **Otentikasi (`AuthController`)**: Mengelola register, login, dan logout menggunakan Laravel Sanctum.
- **Notifikasi (`NotificationController`)**: Menyediakan endpoint untuk mengambil notifikasi yang belum/sudah dibaca oleh pengguna yang sedang login.
- **Data Master (`ProductController`)**: Menyediakan endpoint untuk mengambil daftar produk.

---
## 🚀 Instalasi & Setup

1.  **Clone repository ini.**
2.  Salin file `.env.example` menjadi `.env`.
3.  Konfigurasikan koneksi database Anda di file `.env`.
4.  Jalankan `composer install` untuk menginstal dependensi.
5.  Jalankan `php artisan key:generate`.
6.  Jalankan `php artisan migrate --seed` untuk membuat tabel dan mengisi data awal (user & produk).
7.  Jalankan `php artisan serve` untuk memulai server pengembangan.

API akan tersedia di `http://127.0.0.1:8000/api`.
Login :
1. Manager : manager@elitech.id | password
2. Staff PPIC : ppic@elitech.id | password
3. Staff Produksi : produksi@elitech.id | password
