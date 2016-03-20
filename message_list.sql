-- phpMyAdmin SQL Dump
-- version 4.0.10.6
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 20 2016 г., 04:37
-- Версия сервера: 5.5.41-log
-- Версия PHP: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `logger`
--

-- --------------------------------------------------------

--
-- Структура таблицы `message_list`
--

CREATE TABLE IF NOT EXISTS `message_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `message` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Дамп данных таблицы `message_list`
--

INSERT INTO `message_list` (`id`, `date`, `message`) VALUES
(1, '2016-03-19 17:00:23', 'hello'),
(2, '2016-03-19 17:24:04', 'лол'),
(3, '2016-03-19 21:02:28', ''),
(4, '2016-03-19 21:02:51', 'ghbd'),
(5, '2016-03-19 21:06:43', 'kjkjkj'),
(6, '0000-00-00 00:00:00', 'okay'),
(7, '0000-00-00 00:00:00', 'ok'),
(8, '0000-00-00 00:00:00', 'okdate'),
(9, '2016-03-19 21:23:06', 'kjk'),
(10, '0000-00-00 00:00:00', 'okdate'),
(11, '2016-03-19 22:27:53', 'okdate'),
(12, '2016-03-19 22:30:18', 'okdate'),
(13, '2016-03-19 22:32:15', 'привет'),
(14, '2016-03-19 22:33:05', 'привет'),
(15, '2016-03-19 22:46:41', 'привет'),
(16, '2016-03-19 22:46:51', 'привет');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
