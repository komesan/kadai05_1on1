-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2023 年 1 月 20 日 03:19
-- サーバのバージョン： 10.4.21-MariaDB
-- PHP のバージョン: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `interview`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `ci_table`
--

CREATE TABLE `ci_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `job` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `sumally` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `request` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `naiyou` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `indate` datetime NOT NULL,
  `age` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `ci_table`
--

INSERT INTO `ci_table` (`id`, `name`, `job`, `sumally`, `request`, `naiyou`, `indate`, `age`) VALUES
(1, '山崎大助', 'test0@test.jp', '', '', '教室ちょっと暑いです。', '2020-09-22 07:28:23', 40),
(2, '織田信長', 'test1@test.jp', '', '', 'メモ', '2020-09-22 16:02:47', 20),
(3, '徳川家康', 'test2@test.jp', '', '', 'メモ', '2020-09-22 16:06:42', 30),
(4, '伊達政宗', 'test4@test.jp', '', '', 'メモ', '2020-09-22 16:07:48', 30),
(5, 'デンゼル・ワシントン', 'test5@test.jp', '', '', 'メモ', '2020-09-22 16:07:48', 40),
(6, 'ディカプリオ', 'test6@test.jp', '', '', 'メモ', '2020-09-22 16:07:48', 40),
(7, '山田太郎', 'test7@test.jp', '', '', 'テスト', '2020-09-22 17:14:36', 20),
(8, '服部半蔵', 'test8@test.jp', '', '', '服部くん', '2020-09-22 17:59:31', 10),
(9, 'テスト９', 'test9@test.jp', '', '', '自分', '2020-09-22 18:13:28', 20),
(10, 'TEST10', 'test10@test.jp', '', '', 'ウイスキー', '2020-09-29 05:19:42', 20),
(11, 'TEST11', 'test11@test.jp', '', '', 'テスト', '2020-09-29 05:20:05', 20),
(12, 'はぐ', 'あああ', 'いいいい', '01', 'どうしようかなーーー', '2023-01-14 16:10:24', 10),
(13, 'コロコロ', 'JDV', '学生', '02', 'ンンンンンンn', '2023-01-14 19:42:00', 22),
(14, '', '', '', '01', '', '2023-01-14 19:42:08', 0),
(15, 'いろは', 'いえ', 'なし', '03', 'おおおおおお', '2023-01-14 19:43:51', 5),
(16, 'iroha', 'iii', 'kkkk', '03', 'pppppp', '2023-01-14 20:01:55', 99),
(17, '', '', '', '01', '', '2023-01-14 20:04:55', 0),
(18, '', '', '', '01', '', '2023-01-14 20:11:56', 0),
(19, '', '', '', '01', '', '2023-01-14 20:13:36', 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `ci_user_table`
--

CREATE TABLE `ci_user_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `lid` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `lpw` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `kanri_flg` int(1) NOT NULL,
  `life_flg` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `ci_user_table`
--

INSERT INTO `ci_user_table` (`id`, `name`, `lid`, `lpw`, `kanri_flg`, `life_flg`) VALUES
(1, 'テスト１管理者', 'test1', 'test1', 1, 0),
(2, 'テスト2一般', 'test2', 'test2', 0, 0),
(3, 'テスト３', 'test3', 'test3', 0, 0);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `ci_table`
--
ALTER TABLE `ci_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `ci_user_table`
--
ALTER TABLE `ci_user_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `ci_table`
--
ALTER TABLE `ci_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- テーブルの AUTO_INCREMENT `ci_user_table`
--
ALTER TABLE `ci_user_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
