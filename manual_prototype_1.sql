-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2021-12-15 14:15:10
-- サーバのバージョン： 10.4.18-MariaDB
-- PHP のバージョン: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `manual_prototype_1`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `manual`
--

CREATE TABLE `manual` (
  `id` int(11) NOT NULL,
  `title` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `manual` text COLLATE utf8mb4_bin NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- テーブルのデータのダンプ `manual`
--

INSERT INTO `manual` (`id`, `title`, `manual`, `created_at`, `updated_at`) VALUES
(1, '', 'test', '2021-12-14 22:48:01', '2021-12-14 22:48:01'),
(2, '', 'test', '2021-12-15 21:01:53', '2021-12-15 21:01:53'),
(3, 'title', 'manual', '2021-12-15 21:46:38', '2021-12-15 21:46:38');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `manual`
--
ALTER TABLE `manual`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `manual`
--
ALTER TABLE `manual`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
