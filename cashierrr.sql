-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Nov 2024 pada 04.37
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cashierrr`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` enum('makanan','minuman') NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` enum('tersedia','habis') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `menus`
--

INSERT INTO `menus` (`id`, `name`, `category`, `price`, `stock`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'HappyTos', 'makanan', 10990.00, 50, '1732935749-happytos.png', 'tersedia', '2024-11-29 20:02:29', '2024-11-29 20:02:29'),
(2, 'Good Time', 'makanan', 8990.00, 50, '1732935784-good time.jpg', 'tersedia', '2024-11-29 20:03:04', '2024-11-29 20:03:04'),
(3, 'Boncabe Hot', 'makanan', 8999.00, 50, '1732935815-boncabe.jpg', 'tersedia', '2024-11-29 20:03:35', '2024-11-29 20:03:35'),
(4, 'Monde', 'makanan', 5990.00, 50, '1732935851-monde.jpg', 'tersedia', '2024-11-29 20:04:11', '2024-11-29 20:04:11'),
(5, 'Chiki Balls', 'makanan', 5990.00, 50, '1732936871-chiki balls.jpg', 'tersedia', '2024-11-29 20:04:46', '2024-11-29 20:21:11'),
(6, 'Chiki Twist', 'makanan', 5990.00, 50, '1732936890-chiki twist.jpeg', 'tersedia', '2024-11-29 20:05:10', '2024-11-29 20:21:30'),
(7, 'Lays Rumput Laut', 'makanan', 9990.00, 50, '1732935950-lays rmpt laut.jpg', 'tersedia', '2024-11-29 20:05:50', '2024-11-29 20:05:50'),
(8, 'Guribee Rumput Laut', 'makanan', 8999.00, 50, '1732935979-guribee rmpt laut.jpg', 'tersedia', '2024-11-29 20:06:19', '2024-11-29 20:06:19'),
(9, 'Japota Rumput Laut', 'makanan', 9990.00, 50, '1732936005-japota rmpt lut.jpg', 'tersedia', '2024-11-29 20:06:45', '2024-11-29 20:06:45'),
(10, 'Pocky Pink', 'makanan', 8890.00, 50, '1732936049-pocky pink.jpg', 'tersedia', '2024-11-29 20:07:29', '2024-11-29 20:07:29'),
(11, 'Sponge Pink', 'makanan', 15990.00, 50, '1732936130-sponge pnk.png', 'tersedia', '2024-11-29 20:08:50', '2024-11-29 20:08:50'),
(12, 'Hello Panda Pink', 'makanan', 8980.00, 50, '1732936158-kello pink.jpg', 'tersedia', '2024-11-29 20:09:18', '2024-11-29 20:09:18'),
(13, 'Kusuka Ungu', 'makanan', 10890.00, 50, '1732936232-kusuka ungu.png', 'tersedia', '2024-11-29 20:10:32', '2024-11-29 20:10:32'),
(14, 'Pillow Ungu', 'makanan', 5890.00, 50, '1732936281-pillow.jpg', 'tersedia', '2024-11-29 20:10:58', '2024-11-29 20:11:21'),
(15, 'Qtela Ungu', 'makanan', 8990.00, 50, '1732936304-qtela ungu.jpg', 'tersedia', '2024-11-29 20:11:44', '2024-11-29 20:11:44'),
(16, 'Indomie Goreng', 'makanan', 3590.00, 50, '1732936334-indo greng.jpg', 'tersedia', '2024-11-29 20:12:14', '2024-11-29 20:12:14'),
(17, 'Indomie Soto Mie', 'makanan', 5490.00, 50, '1732936357-indo sotomie.png', 'tersedia', '2024-11-29 20:12:37', '2024-11-29 20:12:37'),
(18, 'Indomie Ayam Spesial', 'makanan', 5390.00, 50, '1732936380-indo ayam spesial.jpg', 'tersedia', '2024-11-29 20:13:00', '2024-11-29 20:13:00'),
(19, 'Aqua 600ml', 'minuman', 3990.00, 50, '1732936400-aqua.jpg', 'tersedia', '2024-11-29 20:13:20', '2024-11-29 20:13:20'),
(20, 'Nestle Pure Life 600ml', 'minuman', 4990.00, 50, '1732936428-nestle.jpg', 'tersedia', '2024-11-29 20:13:48', '2024-11-29 20:13:48'),
(21, 'Le Minerale 600ml', 'minuman', 4950.00, 50, '1732936454-le mineral.jpg', 'tersedia', '2024-11-29 20:14:14', '2024-11-29 20:14:14'),
(22, 'Crystalline 600ml', 'minuman', 4540.00, 50, '1732936484-crystalline.png', 'tersedia', '2024-11-29 20:14:44', '2024-11-29 20:14:44'),
(23, 'Nescafe Latte', 'minuman', 8890.00, 50, '1732936523-nescfe lette.png', 'tersedia', '2024-11-29 20:15:23', '2024-11-29 20:15:23'),
(24, 'Nescafe Capucino', 'minuman', 8990.00, 50, '1732936550-nes cpucnojpg.jpg', 'tersedia', '2024-11-29 20:15:50', '2024-11-29 20:15:50'),
(25, 'Nescafe Ice Black', 'minuman', 8590.00, 50, '1732936574-nescfe iceblack.jpg', 'tersedia', '2024-11-29 20:16:14', '2024-11-29 20:16:14'),
(26, 'Ultra Milk Full Cream', 'minuman', 7890.00, 50, '1732936624-ultra cream.jpg', 'tersedia', '2024-11-29 20:17:04', '2024-11-29 20:17:04'),
(27, 'Ultra Milk Choco', 'minuman', 8890.00, 50, '1732936652-ultra cho.jpg', 'tersedia', '2024-11-29 20:17:32', '2024-11-29 20:17:32'),
(28, 'Ultra Milk Strawberry', 'minuman', 8590.00, 50, '1732936702-ultra straw.jpg', 'tersedia', '2024-11-29 20:18:22', '2024-11-29 20:18:22'),
(29, 'Ultra Milk Taro', 'minuman', 8490.00, 50, '1732936726-ultra taro.jpg', 'tersedia', '2024-11-29 20:18:46', '2024-11-29 20:18:46'),
(30, 'Teh Pucuk 600ml', 'minuman', 4990.00, 50, '1732937379-teh pcuk6.png', 'tersedia', '2024-11-29 20:29:39', '2024-11-29 20:29:39'),
(31, 'Teh Botol Sosro', 'minuman', 3990.00, 50, '1732937401-teh ssro.jpg', 'tersedia', '2024-11-29 20:30:01', '2024-11-29 20:30:01'),
(32, 'FresTea', 'minuman', 4990.00, 50, '1732937456-frestea.png', 'tersedia', '2024-11-29 20:30:56', '2024-11-29 20:30:56'),
(33, 'Minute Maid', 'minuman', 5890.00, 50, '1732937481-minute maid.jpg', 'tersedia', '2024-11-29 20:31:21', '2024-11-29 20:31:21'),
(34, 'Floridina', 'minuman', 3990.00, 50, '1732937500-flori.jpg', 'tersedia', '2024-11-29 20:31:40', '2024-11-29 20:31:40'),
(35, 'Lemon Water', 'minuman', 8990.00, 50, '1732937522-lmn wtr.png', 'tersedia', '2024-11-29 20:32:02', '2024-11-29 20:32:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_11_05_130259_create_menus_table', 1),
(5, '2024_11_08_003728_create_transactions_table', 1),
(6, '2024_11_08_020111_create_transaction_details_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('3WlVvMBuaU9XLd8anH9N62WN46yY1IB5mBAWxKZX', 4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOGlQcDdWS2ZlTnBLbzhtMFNvNHIzdGNiaWE5QmdWMHNOazBJb29SeiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9vcmRlciI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjQ7fQ==', 1732937602);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `total_amount` decimal(15,2) NOT NULL,
  `cash_amount` decimal(15,2) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `date`, `total_amount`, `cash_amount`, `payment_method`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, '2024-11-30', 21980.00, 30000.00, 'Cash', 'masuk', '2024-11-29 20:33:16', '2024-11-29 20:33:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `subtotal` decimal(15,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transaction_id`, `menu_id`, `quantity`, `price`, `subtotal`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, 10990.00, 21980.00, '2024-11-29 20:33:17', '2024-11-29 20:33:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','employee','customer') NOT NULL DEFAULT 'customer',
  `address` varchar(255) DEFAULT NULL,
  `notelp` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `address`, `notelp`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Siti', 'siti@gmail.com', '$2y$12$JTKbtJkM8IPzfmvOtZsRFOMopDQMi1T9dkBazfmJubAwh.Hvcno6W', 'admin', 'Jember', '082141793277', 'Admin1.png', '2024-11-29 19:32:11', '2024-11-29 19:32:11', NULL),
(2, 'Nur', 'nur@gmail.com', '$2y$12$KWcBJsx1u5JgUelY8UsKi.2WfFuXHhU9GW/3EvvpkJze7ZD4LBHoK', 'admin', 'Jember', '085823623958', 'Admin1.png', '2024-11-29 19:32:11', '2024-11-29 19:32:11', NULL),
(3, 'zizi', 'zizi@gmail.com', '$2y$12$yY2ZaBt81QPCG9Pdpj6/2.x4RIfsC1caVDkdX6b4TTVp7UiuGg6Oi', 'employee', 'Jember', '089505365581', 'user2.jpg', '2024-11-29 19:32:11', '2024-11-29 19:32:11', NULL),
(4, 'zaza', 'zaza@gmail.com', '$2y$12$0ke4yHWvpvF2MEayoSwQBeJ2iOypbJupid6LCoYdb480vUDrmhtvO', 'employee', 'Jember', '0895366219365', 'user2.jpg', '2024-11-29 19:32:11', '2024-11-29 19:32:11', NULL),
(5, 'zizah', 'zizah@gmail.com', '$2y$12$RxwBLoW46/2fMbXAqqIpLO/EaI7Du5v1pad.WEW/SRmQ/1llv2RwS', 'employee', 'Jember', '081239115765', 'user2.jpg', '2024-11-29 19:32:11', '2024-11-29 19:32:11', NULL),
(6, 'azizah', 'azizah@gmail.com', '$2y$12$mccm4KsQv8gIj54aLzNes.m.fyZ2fw8MT/Wf04XkLsNLOrG2jb8aG', 'employee', 'Jember', '085333830729', 'user2.jpg', '2024-11-29 19:32:12', '2024-11-29 19:32:12', NULL),
(7, 'sinur', 'sinur@gmail.com', '$2y$12$6yzMv0S2Krr5y4Bx6hcEpOFpdQhB9.r939p2ejtizOm/3daBikPSW', 'employee', 'Jember', '085954995590', 'user2.jpg', '2024-11-29 19:32:12', '2024-11-29 19:32:12', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_details_transaction_id_foreign` (`transaction_id`),
  ADD KEY `transaction_details_menu_id_foreign` (`menu_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD CONSTRAINT `transaction_details_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transaction_details_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
