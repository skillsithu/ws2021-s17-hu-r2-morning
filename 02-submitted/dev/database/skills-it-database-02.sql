-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2020. Már 07. 12:06
-- Kiszolgáló verziója: 10.1.38-MariaDB
-- PHP verzió: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- A tábla adatainak kiíratása `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"skills_it_02\",\"table\":\"flats\"},{\"db\":\"skills_it_02\",\"table\":\"mytable\"},{\"db\":\"skills_it_02\",\"table\":\"buildings\"}]');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- A tábla adatainak kiíratása `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('', '2020-03-07 09:53:26', '{\"lang\":\"hu\"}'),
('root', '2020-03-07 09:53:13', '{\"lang\":\"hu\",\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- A tábla indexei `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- A tábla indexei `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- A tábla indexei `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- A tábla indexei `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- A tábla indexei `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- A tábla indexei `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- A tábla indexei `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- A tábla indexei `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- A tábla indexei `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- A tábla indexei `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- A tábla indexei `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- A tábla indexei `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- A tábla indexei `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- A tábla indexei `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- A tábla indexei `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- A tábla indexei `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- A tábla indexei `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Adatbázis: `skills_it_02`
--
CREATE DATABASE IF NOT EXISTS `skills_it_02` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `skills_it_02`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `buildings`
--

CREATE TABLE `buildings` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `number_of_floors` int(11) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `buildings`
--

INSERT INTO `buildings` (`id`, `name`, `number_of_floors`, `address`) VALUES
(1, 'Flower Garden', 2, '1234 Budapest, Flower street 567'),
(2, 'Shanghai Park', 7, '1098 Budapest, Central square 123'),
(3, 'Green Trees', 1, '9000 Győr, Millenium Park 1');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `flats`
--

CREATE TABLE `flats` (
  `id` int(11) NOT NULL,
  `building_id` int(11) NOT NULL,
  `ref` int(11) NOT NULL,
  `floor` int(11) NOT NULL,
  `rooms` decimal(3,1) NOT NULL,
  `orientation` varchar(2) NOT NULL,
  `net_area` decimal(5,1) NOT NULL,
  `balcony_area` decimal(4,1) NOT NULL,
  `price` decimal(5,2) NOT NULL,
  `sold` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `flats`
--

INSERT INTO `flats` (`id`, `building_id`, `ref`, `floor`, `rooms`, `orientation`, `net_area`, `balcony_area`, `price`, `sold`) VALUES
(1, 1, 1000, 1, '4.0', 'E', '62.6', '0.0', '76.37', 0),
(2, 1, 1001, 1, '2.5', 'SE', '58.6', '9.0', '42.83', 0),
(3, 1, 1002, 1, '1.5', 'SW', '51.3', '30.5', '29.55', 0),
(4, 1, 1003, 1, '1.5', 'NW', '80.1', '0.0', '80.93', 0),
(5, 1, 1004, 1, '2.5', 'NE', '70.2', '29.3', '75.67', 0),
(6, 1, 1005, 1, '1.5', 'NE', '47.8', '28.9', '69.84', 0),
(7, 1, 1006, 1, '4.0', 'SE', '109.8', '24.5', '82.70', 0),
(8, 1, 1007, 1, '2.0', 'W', '89.1', '39.0', '29.17', 0),
(9, 1, 1008, 1, '4.0', 'N', '100.6', '26.0', '79.22', 0),
(10, 1, 1009, 1, '2.5', 'NW', '102.2', '16.9', '25.18', 0),
(11, 1, 1010, 1, '2.0', 'W', '112.2', '26.1', '26.57', 0),
(12, 1, 1011, 1, '4.0', 'NE', '108.3', '10.9', '24.10', 0),
(13, 1, 1012, 1, '1.5', 'E', '118.2', '36.2', '67.85', 0),
(14, 1, 1013, 1, '2.5', 'SW', '96.6', '45.1', '42.29', 0),
(15, 1, 1014, 1, '3.0', 'NW', '77.2', '28.1', '91.68', 0),
(16, 1, 1015, 1, '1.5', 'SW', '47.3', '11.3', '37.31', 0),
(17, 1, 1016, 1, '2.0', 'W', '52.2', '37.7', '92.03', 0),
(18, 1, 1017, 1, '1.5', 'N', '74.9', '0.0', '88.87', 0),
(19, 1, 1018, 1, '3.0', 'SW', '63.5', '31.3', '47.46', 0),
(20, 1, 1019, 1, '2.5', 'SW', '118.2', '13.5', '62.66', 0),
(21, 1, 1020, 1, '2.5', 'W', '68.4', '46.2', '86.64', 0),
(22, 1, 1021, 1, '4.0', 'E', '57.7', '48.9', '41.97', 0),
(23, 1, 1022, 1, '1.5', 'NE', '113.7', '9.3', '80.62', 0),
(24, 1, 1023, 1, '1.0', 'SW', '104.0', '45.4', '43.84', 0),
(25, 1, 1024, 1, '3.0', 'SE', '77.5', '0.0', '51.75', 0),
(26, 1, 1025, 1, '4.0', 'NE', '116.2', '29.4', '81.15', 0),
(27, 1, 1026, 1, '2.0', 'S', '90.6', '28.8', '27.57', 0),
(28, 1, 1027, 1, '2.5', 'NE', '109.9', '45.6', '62.84', 0),
(29, 1, 1028, 1, '4.0', 'SE', '66.7', '46.2', '28.94', 0),
(30, 1, 1029, 1, '3.0', 'W', '57.0', '38.3', '53.35', 0),
(31, 1, 2000, 2, '1.5', 'N', '102.1', '0.0', '47.30', 0),
(32, 1, 2001, 2, '4.0', 'NE', '90.2', '0.0', '42.73', 0),
(33, 1, 2002, 2, '4.0', 'N', '103.4', '14.0', '66.54', 0),
(34, 1, 2003, 2, '2.0', 'E', '53.7', '0.0', '69.81', 0),
(35, 1, 2004, 2, '4.0', 'SW', '92.7', '30.0', '90.78', 0),
(36, 1, 2005, 2, '4.0', 'SE', '66.5', '0.0', '69.56', 0),
(37, 1, 2006, 2, '1.0', 'W', '55.6', '41.8', '43.52', 0),
(38, 1, 2007, 2, '1.0', 'SW', '70.4', '0.0', '59.95', 0),
(39, 1, 2008, 2, '1.0', 'SW', '69.3', '0.0', '60.18', 0),
(40, 1, 2009, 2, '4.0', 'N', '111.6', '29.9', '76.00', 0),
(41, 1, 2010, 2, '2.5', 'S', '46.5', '10.9', '52.50', 0),
(42, 1, 2011, 2, '3.0', 'SE', '88.0', '40.9', '76.37', 0),
(43, 1, 2012, 2, '1.0', 'SE', '102.3', '20.9', '43.91', 0),
(44, 1, 2013, 2, '1.5', 'W', '41.1', '8.1', '53.85', 0),
(45, 1, 2014, 2, '2.5', 'SW', '119.6', '20.7', '69.87', 0),
(46, 1, 2015, 2, '1.5', 'SE', '96.1', '13.9', '31.22', 0),
(47, 1, 2016, 2, '1.0', 'SW', '115.3', '0.0', '37.57', 0),
(48, 1, 2017, 2, '2.0', 'NE', '58.2', '25.3', '79.44', 0),
(49, 1, 2018, 2, '2.0', 'SE', '90.0', '39.5', '51.29', 0),
(50, 1, 2019, 2, '4.0', 'NE', '99.9', '0.0', '48.51', 0),
(51, 1, 2020, 2, '3.0', 'NW', '89.5', '19.9', '60.38', 0),
(52, 1, 2021, 2, '1.0', 'NE', '54.7', '0.0', '59.77', 0),
(53, 1, 2022, 2, '4.0', 'E', '72.5', '47.7', '24.07', 0),
(54, 1, 2023, 2, '4.0', 'SW', '105.8', '47.3', '61.41', 0),
(55, 1, 2024, 2, '3.0', 'NE', '84.9', '0.0', '55.80', 0),
(56, 1, 2025, 2, '1.0', 'NE', '46.9', '21.9', '74.10', 0),
(57, 1, 2026, 2, '2.5', 'NE', '66.7', '0.0', '78.00', 0),
(58, 1, 2027, 2, '3.0', 'S', '79.4', '16.8', '80.41', 0),
(59, 1, 2028, 2, '3.0', 'S', '79.5', '46.8', '81.24', 0),
(60, 1, 2029, 2, '1.5', 'W', '74.3', '7.4', '92.30', 0),
(61, 2, 1000, 1, '2.0', 'NE', '61.9', '0.0', '99.99', 0),
(62, 2, 1001, 1, '3.0', 'NE', '92.1', '0.0', '87.84', 0),
(63, 2, 1002, 1, '4.0', 'NW', '97.8', '0.0', '30.78', 0),
(64, 2, 1003, 1, '4.0', 'SE', '117.8', '0.0', '64.67', 0),
(65, 2, 1004, 1, '2.5', 'NE', '108.7', '22.8', '77.94', 0),
(66, 2, 1005, 1, '3.0', 'N', '84.8', '21.5', '20.25', 0),
(67, 2, 2000, 2, '2.5', 'SW', '79.2', '0.0', '82.90', 0),
(68, 2, 2001, 2, '2.5', 'SE', '82.4', '0.0', '44.20', 0),
(69, 2, 2002, 2, '3.0', 'E', '95.6', '12.2', '55.86', 0),
(70, 2, 2003, 2, '4.0', 'E', '105.3', '0.0', '61.51', 0),
(71, 2, 2004, 2, '2.5', 'N', '76.2', '27.2', '84.98', 0),
(72, 2, 2005, 2, '1.5', 'NE', '51.9', '12.8', '49.92', 0),
(73, 2, 3000, 3, '4.0', 'SW', '56.8', '0.0', '51.50', 0),
(74, 2, 3001, 3, '4.0', 'N', '69.0', '20.0', '88.80', 0),
(75, 2, 3002, 3, '4.0', 'N', '66.3', '0.0', '45.84', 0),
(76, 2, 3003, 3, '1.5', 'W', '102.4', '10.4', '51.02', 0),
(77, 2, 3004, 3, '2.5', 'S', '101.8', '10.5', '56.49', 0),
(78, 2, 3005, 3, '1.5', 'SE', '40.9', '15.2', '98.59', 0),
(79, 2, 4000, 4, '1.0', 'NE', '69.2', '19.0', '74.75', 0),
(80, 2, 4001, 4, '1.5', 'N', '66.2', '0.0', '88.15', 0),
(81, 2, 4002, 4, '4.0', 'NE', '71.7', '0.0', '79.47', 0),
(82, 2, 4003, 4, '1.0', 'SE', '50.4', '42.0', '96.07', 0),
(83, 2, 4004, 4, '2.5', 'NW', '94.9', '44.0', '95.82', 0),
(84, 2, 4005, 4, '1.0', 'W', '83.2', '34.5', '59.03', 0),
(85, 2, 5000, 5, '1.5', 'SE', '91.4', '18.0', '87.32', 0),
(86, 2, 5001, 5, '2.0', 'NW', '90.1', '17.7', '23.19', 0),
(87, 2, 5002, 5, '1.5', 'N', '49.4', '27.9', '33.23', 0),
(88, 2, 5003, 5, '4.0', 'N', '119.0', '36.8', '83.89', 0),
(89, 2, 5004, 5, '2.5', 'SE', '75.8', '22.3', '61.23', 0),
(90, 2, 5005, 5, '3.0', 'S', '40.7', '11.3', '96.60', 0),
(91, 2, 6000, 6, '1.5', 'SW', '57.6', '8.2', '34.90', 0),
(92, 2, 6001, 6, '1.0', 'S', '53.8', '13.3', '63.92', 0),
(93, 2, 6002, 6, '4.0', 'E', '99.8', '23.9', '77.49', 0),
(94, 2, 6003, 6, '1.5', 'N', '59.5', '0.0', '77.43', 0),
(95, 2, 6004, 6, '4.0', 'SW', '40.0', '22.4', '77.21', 0),
(96, 2, 6005, 6, '2.5', 'SW', '78.2', '0.0', '21.07', 0),
(97, 2, 7000, 7, '3.0', 'SE', '98.4', '32.8', '36.18', 0),
(98, 2, 7001, 7, '4.0', 'N', '113.4', '6.7', '40.02', 0),
(99, 2, 7002, 7, '2.5', 'E', '116.2', '20.1', '49.58', 0),
(100, 2, 7003, 7, '2.5', 'SE', '69.8', '40.1', '52.48', 0),
(101, 2, 7004, 7, '1.5', 'SW', '80.2', '17.1', '57.08', 0),
(102, 2, 7005, 7, '2.0', 'SW', '69.6', '24.3', '33.75', 0),
(103, 3, 1000, 1, '2.0', 'N', '113.6', '41.1', '94.56', 0),
(104, 3, 1001, 1, '4.0', 'NE', '102.6', '0.0', '36.67', 0),
(105, 3, 1002, 1, '2.0', 'W', '75.7', '41.9', '27.36', 0),
(106, 3, 1003, 1, '1.0', 'W', '112.3', '0.0', '87.71', 0),
(107, 3, 1004, 1, '3.0', 'E', '110.4', '0.0', '90.12', 0),
(108, 3, 1005, 1, '2.5', 'E', '111.7', '46.0', '25.10', 0),
(109, 3, 1006, 1, '2.5', 'E', '62.9', '0.0', '47.81', 0),
(110, 3, 1007, 1, '2.5', 'NE', '102.2', '42.4', '80.06', 0),
(111, 3, 1008, 1, '2.0', 'SE', '107.5', '16.6', '28.19', 0),
(112, 3, 1009, 1, '1.0', 'NE', '101.7', '37.5', '67.99', 0),
(113, 3, 1010, 1, '3.0', 'SW', '83.2', '32.0', '63.29', 0),
(114, 3, 1011, 1, '1.0', 'S', '52.0', '22.0', '24.02', 0),
(115, 3, 1012, 1, '1.0', 'SW', '106.3', '0.0', '50.50', 0),
(116, 3, 1013, 1, '1.0', 'SW', '53.1', '37.6', '96.84', 0),
(117, 3, 1014, 1, '1.0', 'E', '106.1', '0.0', '52.16', 0),
(118, 3, 1015, 1, '2.5', 'SW', '107.0', '41.7', '38.69', 0),
(119, 3, 1016, 1, '3.0', 'SW', '89.8', '0.0', '76.43', 0),
(120, 3, 1017, 1, '3.0', 'NE', '64.9', '28.8', '36.01', 0),
(121, 3, 1018, 1, '2.5', 'N', '105.0', '49.8', '72.64', 0),
(122, 3, 1019, 1, '1.0', 'W', '59.5', '41.6', '26.14', 0),
(123, 3, 1020, 1, '1.0', 'N', '79.1', '38.1', '41.59', 0),
(124, 3, 1021, 1, '1.0', 'W', '74.3', '20.5', '25.18', 0),
(125, 3, 1022, 1, '2.0', 'E', '46.0', '47.3', '84.64', 0),
(126, 3, 1023, 1, '3.0', 'SE', '66.3', '0.0', '88.03', 0),
(127, 3, 1024, 1, '1.5', 'W', '77.6', '28.7', '29.82', 0),
(128, 3, 1025, 1, '1.0', 'W', '102.4', '0.0', '64.69', 0),
(129, 3, 1026, 1, '1.0', 'W', '69.8', '34.9', '50.29', 0),
(130, 3, 1027, 1, '2.5', 'SW', '92.5', '0.0', '76.90', 0),
(131, 3, 1028, 1, '2.5', 'SW', '73.7', '12.4', '63.03', 0),
(132, 3, 1029, 1, '3.0', 'SW', '64.2', '40.7', '44.67', 0),
(133, 3, 1030, 1, '2.5', 'S', '62.0', '21.2', '81.06', 0),
(134, 3, 1031, 1, '1.5', 'W', '68.8', '0.0', '51.54', 0),
(135, 3, 1032, 1, '2.0', 'N', '70.7', '11.7', '82.59', 0),
(136, 3, 1033, 1, '2.0', 'W', '102.6', '7.6', '91.22', 0),
(137, 3, 1034, 1, '1.5', 'NE', '116.1', '9.3', '49.36', 0),
(138, 3, 1035, 1, '3.0', 'S', '89.4', '19.0', '73.89', 0),
(139, 3, 1036, 1, '2.5', 'SE', '76.5', '46.8', '76.40', 0),
(140, 3, 1037, 1, '3.0', 'NE', '43.7', '14.6', '26.12', 0),
(141, 3, 1038, 1, '2.0', 'S', '59.2', '46.1', '46.98', 0),
(142, 3, 1039, 1, '4.0', 'NE', '113.7', '26.5', '98.28', 0),
(143, 3, 1040, 1, '2.5', 'S', '84.9', '17.3', '77.60', 0),
(144, 3, 1041, 1, '3.0', 'SW', '107.6', '28.6', '70.92', 0),
(145, 3, 1042, 1, '1.5', 'NW', '104.6', '38.2', '21.78', 0),
(146, 3, 1043, 1, '1.0', 'NW', '104.0', '18.6', '77.76', 0),
(147, 3, 1044, 1, '2.5', 'SE', '66.3', '49.5', '95.45', 0),
(148, 3, 1045, 1, '2.5', 'SW', '73.2', '33.5', '32.89', 0),
(149, 3, 1046, 1, '1.5', 'S', '40.4', '11.5', '42.64', 0),
(150, 3, 1047, 1, '3.0', 'SW', '65.6', '11.1', '32.80', 0),
(151, 3, 1048, 1, '2.0', 'W', '64.2', '21.6', '21.35', 0),
(152, 3, 1049, 1, '2.0', 'N', '51.0', '0.0', '64.44', 0),
(153, 3, 1050, 1, '1.0', 'NW', '44.8', '17.7', '33.55', 0),
(154, 3, 1051, 1, '1.0', 'E', '119.1', '8.2', '92.92', 0),
(155, 3, 1052, 1, '2.5', 'W', '102.2', '0.0', '27.62', 0),
(156, 3, 1053, 1, '3.0', 'NE', '41.3', '39.7', '70.00', 0),
(157, 3, 1054, 1, '2.5', 'W', '53.1', '42.0', '85.47', 0),
(158, 3, 1055, 1, '3.0', 'NW', '50.8', '12.9', '23.67', 0),
(159, 3, 1056, 1, '2.0', 'NE', '105.6', '6.2', '58.63', 0),
(160, 3, 1057, 1, '1.0', 'W', '50.0', '0.0', '32.71', 0),
(161, 3, 1058, 1, '1.5', 'SE', '118.3', '41.4', '78.24', 0),
(162, 3, 1059, 1, '1.0', 'NE', '94.0', '0.0', '36.45', 0),
(163, 3, 1060, 1, '1.5', 'W', '114.7', '34.4', '96.73', 0),
(164, 3, 1061, 1, '1.5', 'E', '88.7', '0.0', '79.27', 0),
(165, 3, 1062, 1, '4.0', 'W', '62.0', '20.6', '72.70', 0),
(166, 3, 1063, 1, '4.0', 'E', '83.7', '35.9', '35.45', 0),
(167, 3, 1064, 1, '2.5', 'W', '113.2', '11.1', '70.33', 0),
(168, 3, 1065, 1, '1.0', 'NW', '56.6', '16.3', '47.74', 0),
(169, 3, 1066, 1, '1.0', 'E', '98.3', '0.0', '67.92', 0),
(170, 3, 1067, 1, '1.5', 'NE', '83.2', '13.1', '21.71', 0),
(171, 3, 1068, 1, '4.0', 'W', '58.2', '0.0', '62.53', 0),
(172, 3, 1069, 1, '3.0', 'NW', '72.5', '21.3', '94.43', 0),
(173, 3, 1070, 1, '3.0', 'SW', '57.3', '0.0', '35.08', 0),
(174, 3, 1071, 1, '2.0', 'NE', '74.2', '39.0', '82.96', 0),
(175, 3, 1072, 1, '1.5', 'N', '52.6', '45.6', '92.70', 0),
(176, 3, 1073, 1, '2.0', 'W', '93.1', '27.8', '20.35', 0),
(177, 3, 1074, 1, '2.5', 'NW', '43.1', '43.7', '45.33', 0),
(178, 3, 1075, 1, '2.0', 'SE', '101.6', '26.7', '88.00', 0),
(179, 3, 1076, 1, '1.5', 'SE', '76.9', '40.3', '38.40', 0),
(180, 3, 1077, 1, '3.0', 'E', '60.3', '11.0', '78.79', 0),
(181, 3, 1078, 1, '1.5', 'W', '66.8', '42.2', '44.86', 0),
(182, 3, 1079, 1, '2.5', 'W', '112.0', '29.2', '24.71', 0),
(183, 3, 1080, 1, '3.0', 'N', '52.0', '39.9', '28.51', 0),
(184, 3, 1081, 1, '1.5', 'W', '49.5', '24.4', '45.25', 0),
(185, 3, 1082, 1, '1.0', 'SE', '83.2', '0.0', '94.52', 0),
(186, 3, 1083, 1, '2.0', 'E', '47.7', '27.1', '84.40', 0),
(187, 3, 1084, 1, '1.5', 'SE', '45.9', '33.6', '94.32', 0),
(188, 3, 1085, 1, '4.0', 'W', '42.4', '17.8', '61.71', 0),
(189, 3, 1086, 1, '2.0', 'W', '92.0', '0.0', '65.74', 0),
(190, 3, 1087, 1, '2.0', 'NE', '68.6', '37.0', '68.67', 0),
(191, 3, 1088, 1, '2.0', 'E', '64.4', '0.0', '68.95', 0),
(192, 3, 1089, 1, '4.0', 'NW', '99.6', '35.4', '62.26', 0),
(193, 3, 1090, 1, '1.5', 'SW', '83.9', '0.0', '92.52', 0),
(194, 3, 1091, 1, '3.0', 'NE', '61.8', '27.9', '66.78', 0),
(195, 3, 1092, 1, '4.0', 'SE', '115.7', '41.1', '84.89', 0),
(196, 3, 1093, 1, '3.0', 'E', '79.2', '40.9', '73.84', 0),
(197, 3, 1094, 1, '1.5', 'N', '59.4', '22.7', '84.91', 0),
(198, 3, 1095, 1, '2.5', 'N', '92.0', '49.3', '40.02', 0),
(199, 3, 1096, 1, '2.5', 'N', '97.0', '25.5', '69.33', 0),
(200, 3, 1097, 1, '2.5', 'NE', '62.9', '13.0', '62.80', 0),
(201, 3, 1098, 1, '2.0', 'W', '44.2', '31.6', '61.19', 0),
(202, 3, 1099, 1, '2.0', 'S', '106.6', '48.8', '40.21', 0);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `buildings`
--
ALTER TABLE `buildings`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `flats`
--
ALTER TABLE `flats`
  ADD PRIMARY KEY (`id`);
--
-- Adatbázis: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
