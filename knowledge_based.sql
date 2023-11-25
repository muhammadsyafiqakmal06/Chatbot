-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 03, 2023 at 08:50 AM
-- Server version: 5.7.33
-- PHP Version: 8.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `knowledge_based`
--

-- --------------------------------------------------------

--
-- Table structure for table `aiml`
--

CREATE TABLE `aiml` (
  `id` int(11) NOT NULL,
  `question` text,
  `response` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aiml`
--

INSERT INTO `aiml` (`id`, `question`, `response`) VALUES
(1, 'bayar spp', 'Anda dapat melakukan pembayaran di: <br> 1. Bank-bank di Kampus 1, 2, 3, 4 dan 5 <br>\n            2. Virtual Account yang di dapatkan pada portal.uad.ac.id <br> 3. Bank BRI di seluruh\n            Indonesia via teller <br> 4. Bank Bukopin Syari’ah di seluruh Indonesia via teller <br>\n            5. Bank BPD DIY Syari’ah via teller dan ATM <br> 6. Bank Syariah Indonesia di seluruh\n            Indonesia via teller <br>\n'),
(7, 'kontak elearning', 'Untuk layanan elearning silahkan melakukan kontak pada laman berikut:\n            <a href=\"https://elearning.uad.ac.id/panduan/pendaftaran.html\">Klik Disini!</a>'),
(13, 'revisi krs', 'Tidak ada. Namun, selama masa KRS berlangsung, Anda tetap dapat melakukan perubahan pada KRS Anda.'),
(14, 'krs hilang', 'Silahkan menulis tiket di Helpdesk UAD melalui Email helpdesk@uad.ac.id atau bisa\nmelalui Telegram Bot @helpdeskuadbot, dengan menuliskan data lengkap seperti,\nNama lengkap : <br>\nNIM : <br>\nProdi : <br>\nEmail UAD : <br>\nKeluhan/ Yang akan di tanyakan : <br>'),
(18, 'kelas', 'Silahkan hubungi TU fakultas masing-masing.'),
(19, 'lambat krs', 'Dipastikan lagi, jika sudah melakukan pembayaran pada masa pembayaran maka KRS dapat dilakukan oleh Prodi'),
(20, 'cuti kuliah', 'Silahkan hubungi BAA dan untuk informasi lengkapnya di link berikut\n<a href=\"https://baa.uad.ac.id/cuti-akademik\">Klik Disini!</a>'),
(24, 'belum email uad', 'Untuk Email mahasiswa sudah dibuatkan saat registrasi masuk di UAD, bisa dicek kertas\npendaftaran saat masuk pertama kali dari PMB (biasa kertas kuning)'),
(26, 'email aktif', 'Maka untuk info email ada pada bukti kertas registrasi/pembayaran Mahasiswa baru. Silahkan cek kertas pendaftaran anda dan untuk memastikan atau silahkan dicoba langkah-langkah berikut: <br>\n1. Akses gmail.com lewat browser (untuk awalan kami sarankan gunakan mode desktop atau gunakan PC/Laptop)<br>\n2. Menginputkan username email dan password secara lengkap. contoh:namadepanNIM@webmail.uad.ac.id (untuk mahasiswa lama), NIM@webmail.uad.ac.id (Untuk\nmahasiswa mulai angkatan 2022)<br>\n3. Setelah login ikuti petunjuk persetujuan.<br>\n4. Email dapat digunakan<br>\n5. Jika email sudah berhasil dibuka lewat PC/ Laptop selanjutnya bisa di add account di smartphone anda.'),
(27, 'undur diri', 'Mahasiswa yang akan mengundurkan diri harus mengajukan formulir yang telah disediakan oleh Fakultas atau kantor BAA, untuk lebih detailnya bisa dicek di link berikut <a href=\"https://baa.uad.ac.id/undurdiri/\">klik disini</a>'),
(30, 'untung email', 'Email UAD untuk tampilan sama dengan email Google karena Email UAD menggunakan Google\n            Workspace for Education Plus.'),
(31, 'guna email', 'Untuk publikasi jurnal, Google Scholar, Verifikasi Portal UAD, Pendafataran E-Learning, Digilib dll.'),
(32, 'fungsi email', 'Untuk publikasi jurnal, Google Scholar, Verifikasi Portal UAD, Pendafataran E-Learning, Digilib dll.'),
(33, 'salah portal', 'Menghubungi BAA untuk merubah data sesuai dengan ijazah dan akte kelahiran, untuk lebih detail dapat di lihat di link <a href=\"https://baa.uad.ac.id/perbaikan-data-mahasiswa\" style=\"text-decoration: none; color: black;\">Klik Disini!</a>'),
(34, 'status nonaktif', 'Bisa menghubungi BAA dengan menunjukkan bukti pembayaran.'),
(35, 'batas maksimal sks', '1. Dengan IPK mininum sebesar 3.00 dan IPK maksimal 4.00 anda dapat mengambil SKS sebanyak 24 <br>\n            2. Dengan IPK mininum sebesar 2.50 dan IPK maksimal 2.99 anda dapat mengambil SKS sebanyak 22 <br>\n            3. Dengan IPK mininum sebesar 2.00 dan IPK maksimal 2.49 anda dapat mengambil SKS sebanyak 20 <br>\n            4. Dengan IPK mininum sebesar 1.50 dan IPK maksimal 1.99 anda dapat mengambil SKS sebanyak 18 <br>\n            5. Dengan IPK mininum sebesar 0.00 dan IPK maksimal 1.49 anda dapat mengambil SKS sebanyak 15 <br>'),
(36, 'assalamualaikum', 'Wa\'alaikumussalam Warahmatullahi Wabarakatuh, Ada yang bisa saya bantu?'),
(37, 'Terima kasih', 'Sama-sama kak, senang bisa membantu!'),
(38, 'halo', 'Hai kak, ada yang bisa saya bantu?'),
(39, 'hai', 'halo kak, ada yang bisa saya bantu?'),
(40, 'akun portal', 'Akun portal akademik dapat di cek pada bukti Penerimaan Mahasisawa Baru'),
(41, 'pandu krs', 'Ada, Anda dapat melihat versi video panduan KRS dengan mengakses youtube di\nchannel Portal UAD atau di akun Instagram @portal.uad'),
(42, 'undur diri', 'Mahasiswa yang akan mengundurkan diri harus mengajukan formulir yang telah\r\ndisediakan oleh Fakultas atau kantor BAA, untuk lebih detailnya bisa dicek di link\r\nberikut <a href=\"https://baa.uad.ac.id/undurdiri/\">klik disini</a>'),
(43, 'pagi', 'Halo kak, Selamat Pagi ada yang bisa saya bantu?'),
(44, 'siang', 'Halo kak, Selamat Siang ada yang bisa saya bantu?'),
(45, 'sore', 'Halo kak, Selamat Sore ada yang bisa saya bantu?'),
(46, 'malam', 'Halo kak, Selamat Malam ada yang bisa saya bantu?'),
(47, 'Assalamualaikum Warahmatullahi Wabarakatuh', 'Wa\'alaikumussalam Warahmatullahi Wabarakatuh, Ada yang bisa saya bantu?'),
(49, 'password learning', 'Silahkan bisa di reset mandiri pada link berikut E-learning.uad.ac.id dengan memasukkan alamat webmail anda.'),
(50, 'akun elearning', 'Registrasi mandiri menggunakan email @webmail.uad.ac.id, Jika sudah melakukan registrasi silahkan cek email webmail ada notifikasi untuk verifikasi elearning di kotak masuk maupun di spam.'),
(51, 'akun learning', 'Registrasi mandiri menggunakan email @webmail.uad.ac.id, Jika sudah melakukan registrasi silahkan cek email webmail ada notifikasi untuk verifikasi elearning di kotak masuk maupun di spam.'),
(56, 'nomor telepon elearning', 'Untuk layanan elearning silahkan melakukan kontak pada laman berikut: <a\r\n                href=\"https://elearning.uad.ac.id/panduan/pendaftaran.html\">Klik Disini!</a>'),
(57, 'nomor telepon learning', 'Untuk layanan elearning silahkan melakukan kontak pada laman berikut: <a\r\n                href=\"https://elearning.uad.ac.id/panduan/pendaftaran.html\">Klik Disini!</a>'),
(58, 'nomor elearning', 'Untuk layanan elearning silahkan melakukan kontak pada laman berikut: <a\r\n                href=\"https://elearning.uad.ac.id/panduan/pendaftaran.html\">Klik Disini!</a>'),
(59, 'nomor learning', 'Untuk layanan elearning silahkan melakukan kontak pada laman berikut: <a\r\n                href=\"https://elearning.uad.ac.id/panduan/pendaftaran.html\">Klik Disini!</a>'),
(60, 'telepon elearning', 'Untuk layanan elearning silahkan melakukan kontak pada laman berikut: <a\r\n                href=\"https://elearning.uad.ac.id/panduan/pendaftaran.html\">Klik Disini!</a>'),
(61, 'telepon learning', 'Untuk layanan elearning silahkan melakukan kontak pada laman berikut: <a\r\n                href=\"https://elearning.uad.ac.id/panduan/pendaftaran.html\">Klik Disini!</a>'),
(62, 'kontak learning', 'Untuk layanan elearning silahkan melakukan kontak pada laman berikut:<a href=\"https://elearning.uad.ac.id/panduan/pendaftaran.html\">Klik Disini!</a>'),
(63, 'bayar kuliah', 'Anda dapat melakukan pembayaran di: <br> 1. Bank-bank di Kampus 1, 2, 3, 4 dan 5 <br>\r\n            2. Virtual Account yang di dapatkan pada portal.uad.ac.id <br> 3. Bank BRI di seluruh\r\n            Indonesia via teller <br> 4. Bank Bukopin Syari’ah di seluruh Indonesia via teller <br>\r\n            5. Bank BPD DIY Syari’ah via teller dan ATM <br> 6. Bank Syariah Indonesia di seluruh\r\n            Indonesia via teller <br>\r\n'),
(64, 'learning password', 'For elearning services please make contact on the following page: <a href=\"https://elearning.uad.ac.id/panduan/pendaftaran.html\">Click Here!</a>\r\n            Please reset yourself at the following link E-learning.uad.ac.id by entering your webmail address.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aiml`
--
ALTER TABLE `aiml`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aiml`
--
ALTER TABLE `aiml`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
