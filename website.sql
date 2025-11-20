-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: sql206.byetcluster.com
-- Üretim Zamanı: 30 May 2025, 14:51:39
-- Sunucu sürümü: 10.6.19-MariaDB
-- PHP Sürümü: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `if0_39114493_mydb`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `birthplace` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `profession` varchar(100) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `reset_token` varchar(64) DEFAULT NULL,
  `reset_token_expiry` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `name`, `surname`, `gender`, `birthplace`, `dob`, `profession`, `image`, `created_at`, `is_admin`, `reset_token`, `reset_token_expiry`, `last_login`, `remember_token`) VALUES
(1, 'admin', 'admin@example.com', '$2y$10$naFr5dxny78GQwqRVvLtaeH6xS6VmVLMysJ6bvJWaHebGdFQwgraa', 'Admin', 'User', 'Belirtilme', 'Belirtilmemi?', '2000-01-01', 'Di?er', NULL, '2025-05-30 10:25:37', 1, NULL, NULL, NULL, NULL),
(2, 'mutbelag', 'mahflix42@gmail.com', '$2y$10$N0bzpSQffMCvsUJIpHfU7.xSK6ZPWvOH6NdpCrKOVj.lpw4l2nlqy', 'Mahmut', 'ER', 'Erkek', 'Kütahya', '2006-11-26', 'Di?er', NULL, '2025-05-30 10:29:45', 0, NULL, NULL, '2025-05-30 10:30:02', NULL),
(3, 'ozdemmert', 'mert.efo44536@gmail.com', '$2y$10$P85JaTXJg8/k2laqXP9SXuYF3u.wWdlCLDTBD5GeOkSYxFsLqOiRK', 'mert', 'özdemir', 'Erkek', 'karabük', '2003-10-01', 'Mühendis', NULL, '2025-05-30 10:31:18', 0, NULL, NULL, '2025-05-30 11:39:47', NULL),
(4, 'muteroglan', 'mahmuterck42@gmail.com', '$2y$10$u1YLHUvtW46ZV0OkLhzL4eDub3T6FOeZ2jRHYN4hoQLl6eA1.Ixlq', 'Mahmute', 'ER', 'Erkek', 'Kütahya', '2006-11-26', 'Çiftçi', NULL, '2025-05-30 10:36:56', 0, NULL, NULL, '2025-05-30 11:37:36', NULL);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
