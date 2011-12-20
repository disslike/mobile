-- phpMyAdmin SQL Dump
-- version 3.4.8
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Дек 20 2011 г., 12:55
-- Версия сервера: 5.1.40
-- Версия PHP: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `mobile`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Browsers`
--

CREATE TABLE IF NOT EXISTS `Browsers` (
  `br_id` int(11) NOT NULL AUTO_INCREMENT,
  `br_name` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`br_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `Browsers`
--

INSERT INTO `Browsers` (`br_id`, `br_name`) VALUES
(1, 'Internet Explorer Mobile'),
(2, 'Web Browser for S60'),
(3, 'Safari'),
(4, 'Skyfire'),
(5, 'Opera Mobile');

-- --------------------------------------------------------

--
-- Структура таблицы `Result`
--

CREATE TABLE IF NOT EXISTS `Result` (
  `rs_id` int(11) NOT NULL AUTO_INCREMENT,
  `vr_id` int(11) NOT NULL,
  `ts_id` int(11) NOT NULL,
  `br_id` int(11) NOT NULL,
  `result` int(11) NOT NULL,
  PRIMARY KEY (`rs_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=61 ;

--
-- Дамп данных таблицы `Result`
--

INSERT INTO `Result` (`rs_id`, `vr_id`, `ts_id`, `br_id`, `result`) VALUES
(1, 1, 1, 1, 1),
(2, 1, 1, 2, 1),
(3, 1, 1, 3, 0),
(4, 1, 1, 4, 0),
(5, 1, 1, 5, 1),
(6, 1, 2, 1, 1),
(7, 1, 2, 2, 1),
(8, 1, 2, 3, 0),
(9, 1, 2, 4, 1),
(10, 1, 2, 5, 0),
(11, 1, 3, 1, 1),
(12, 1, 3, 2, 0),
(13, 1, 3, 3, 0),
(14, 1, 3, 4, 0),
(15, 1, 3, 5, 1),
(16, 2, 1, 1, 1),
(17, 2, 1, 2, 0),
(18, 2, 1, 3, 1),
(19, 2, 1, 4, 0),
(20, 2, 1, 5, 1),
(21, 2, 2, 1, 0),
(22, 2, 2, 2, 1),
(23, 2, 2, 3, 0),
(24, 2, 2, 4, 1),
(25, 2, 2, 5, 0),
(26, 2, 3, 1, 1),
(27, 2, 3, 2, 0),
(28, 2, 3, 3, 1),
(29, 2, 3, 4, 0),
(30, 2, 3, 5, 1),
(31, 3, 1, 1, 0),
(32, 3, 1, 2, 1),
(33, 3, 1, 3, 0),
(34, 3, 1, 4, 1),
(35, 3, 2, 5, 1),
(36, 3, 2, 1, 1),
(37, 3, 2, 2, 1),
(38, 3, 2, 3, 0),
(39, 3, 2, 4, 0),
(40, 3, 3, 5, 0),
(41, 3, 3, 1, 1),
(42, 3, 3, 2, 0),
(43, 3, 3, 3, 1),
(44, 3, 3, 4, 0),
(45, 3, 3, 5, 1),
(46, 4, 1, 1, 1),
(47, 4, 1, 2, 0),
(48, 4, 1, 3, 1),
(49, 4, 1, 4, 0),
(50, 4, 2, 5, 1),
(51, 4, 2, 1, 0),
(52, 4, 2, 2, 1),
(53, 4, 2, 3, 0),
(54, 4, 2, 4, 1),
(55, 4, 3, 5, 0),
(56, 4, 3, 1, 1),
(57, 4, 3, 2, 0),
(58, 4, 3, 3, 1),
(59, 4, 3, 4, 0),
(60, 4, 3, 5, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `Tests`
--

CREATE TABLE IF NOT EXISTS `Tests` (
  `ts_id` int(11) NOT NULL AUTO_INCREMENT,
  `ts_name` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ts_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `Tests`
--

INSERT INTO `Tests` (`ts_id`, `ts_name`) VALUES
(1, 'Работа CSS 2.0'),
(2, 'Работа CSS 3.0'),
(3, 'Работа JavaScript');

-- --------------------------------------------------------

--
-- Структура таблицы `Versions`
--

CREATE TABLE IF NOT EXISTS `Versions` (
  `vr_id` int(11) NOT NULL AUTO_INCREMENT,
  `vr_number` text COLLATE utf8_unicode_ci NOT NULL,
  `changes` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`vr_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `Versions`
--

INSERT INTO `Versions` (`vr_id`, `vr_number`, `changes`) VALUES
(1, '1.0.0', 'Приложение создано'),
(2, '1.0.1', 'Добавлена кнопочка поиск'),
(3, '1.0.3', 'Добавлена функция добавления в избранное'),
(4, '2.0.1', 'Полностю переделанный дизайн'),
(5, '2.0.6', 'Что то добавлено');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
