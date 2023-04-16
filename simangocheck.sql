-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Apr 2023 pada 12.31
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simangocheck`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `aturans`
--

CREATE TABLE `aturans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_penyakit` bigint(20) UNSIGNED NOT NULL,
  `kode_hama` bigint(20) UNSIGNED NOT NULL,
  `kode_gejala` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejalas`
--

CREATE TABLE `gejalas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_gejala` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `hamas`
--

CREATE TABLE `hamas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_hama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_hama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi_hama` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `solusi_hama` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_obat` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasils`
--

CREATE TABLE `hasils` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_user` bigint(20) UNSIGNED NOT NULL,
  `kode_penyakit` bigint(20) UNSIGNED NOT NULL,
  `kode_hama` bigint(20) UNSIGNED NOT NULL,
  `kode_gejala` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_04_03_064917_create_roles_table', 1),
(2, '2014_04_03_165506_create_obats_table', 1),
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2023_04_03_061847_create_pakars_table', 1),
(8, '2023_04_03_062846_create_penyakits_table', 1),
(9, '2023_04_03_062911_create_gejalas_table', 1),
(10, '2023_04_03_062924_create_hamas_table', 1),
(11, '2023_04_03_062959_create_hasils_table', 1),
(12, '2023_04_03_080127_create_aturans_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `obats`
--

CREATE TABLE `obats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_obat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi_obat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga_obat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyakits`
--

CREATE TABLE `penyakits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_penyakit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_penyakit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi_penyakit` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `solusi_penyakit` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_obat` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` enum('Admin','Pakar','pengguna') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pekerjaan_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `aturans`
--
ALTER TABLE `aturans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aturans_kode_penyakit_foreign` (`kode_penyakit`),
  ADD KEY `aturans_kode_hama_foreign` (`kode_hama`),
  ADD KEY `aturans_kode_gejala_foreign` (`kode_gejala`);

--
-- Indeks untuk tabel `gejalas`
--
ALTER TABLE `gejalas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `hamas`
--
ALTER TABLE `hamas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hamas_kode_obat_foreign` (`kode_obat`);

--
-- Indeks untuk tabel `hasils`
--
ALTER TABLE `hasils`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hasils_kode_user_foreign` (`kode_user`),
  ADD KEY `hasils_kode_penyakit_foreign` (`kode_penyakit`),
  ADD KEY `hasils_kode_hama_foreign` (`kode_hama`),
  ADD KEY `hasils_kode_gejala_foreign` (`kode_gejala`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `obats`
--
ALTER TABLE `obats`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penyakits`
--
ALTER TABLE `penyakits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `penyakits_kode_obat_foreign` (`kode_obat`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_user_unique` (`email_user`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `aturans`
--
ALTER TABLE `aturans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `gejalas`
--
ALTER TABLE `gejalas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `hamas`
--
ALTER TABLE `hamas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `hasils`
--
ALTER TABLE `hasils`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `obats`
--
ALTER TABLE `obats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `penyakits`
--
ALTER TABLE `penyakits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `aturans`
--
ALTER TABLE `aturans`
  ADD CONSTRAINT `aturans_kode_gejala_foreign` FOREIGN KEY (`kode_gejala`) REFERENCES `gejalas` (`id`),
  ADD CONSTRAINT `aturans_kode_hama_foreign` FOREIGN KEY (`kode_hama`) REFERENCES `hamas` (`id`),
  ADD CONSTRAINT `aturans_kode_penyakit_foreign` FOREIGN KEY (`kode_penyakit`) REFERENCES `penyakits` (`id`);

--
-- Ketidakleluasaan untuk tabel `hamas`
--
ALTER TABLE `hamas`
  ADD CONSTRAINT `hamas_kode_obat_foreign` FOREIGN KEY (`kode_obat`) REFERENCES `obats` (`id`);

--
-- Ketidakleluasaan untuk tabel `hasils`
--
ALTER TABLE `hasils`
  ADD CONSTRAINT `hasils_kode_gejala_foreign` FOREIGN KEY (`kode_gejala`) REFERENCES `gejalas` (`id`),
  ADD CONSTRAINT `hasils_kode_hama_foreign` FOREIGN KEY (`kode_hama`) REFERENCES `hamas` (`id`),
  ADD CONSTRAINT `hasils_kode_penyakit_foreign` FOREIGN KEY (`kode_penyakit`) REFERENCES `penyakits` (`id`),
  ADD CONSTRAINT `hasils_kode_user_foreign` FOREIGN KEY (`kode_user`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `penyakits`
--
ALTER TABLE `penyakits`
  ADD CONSTRAINT `penyakits_kode_obat_foreign` FOREIGN KEY (`kode_obat`) REFERENCES `obats` (`id`);

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
