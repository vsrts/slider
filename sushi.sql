-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 19 2019 г., 10:15
-- Версия сервера: 5.6.38
-- Версия PHP: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `sushi`
--

-- --------------------------------------------------------

--
-- Структура таблицы `slides`
--

CREATE TABLE `slides` (
  `id` int(10) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `filter` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `slides`
--

INSERT INTO `slides` (`id`, `image`, `code`, `filter`) VALUES
(1, '/images/slide/1.jpg', NULL, 0),
(2, '/images/slide/2.jpg', NULL, 0),
(3, '/images/slide/3.jpg', NULL, 1),
(4, '/images/slide/4.jpg', NULL, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `slide_except`
--

CREATE TABLE `slide_except` (
  `slide_id` int(10) NOT NULL,
  `city_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `slide_except`
--

INSERT INTO `slide_except` (`slide_id`, `city_id`) VALUES
(4, 13);

-- --------------------------------------------------------

--
-- Структура таблицы `slide_only`
--

CREATE TABLE `slide_only` (
  `slide_id` int(10) NOT NULL,
  `city_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `slide_only`
--

INSERT INTO `slide_only` (`slide_id`, `city_id`) VALUES
(3, 13);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `slide_except`
--
ALTER TABLE `slide_except`
  ADD PRIMARY KEY (`slide_id`),
  ADD KEY `slide_id` (`slide_id`),
  ADD KEY `city_id` (`city_id`);

--
-- Индексы таблицы `slide_only`
--
ALTER TABLE `slide_only`
  ADD PRIMARY KEY (`slide_id`),
  ADD KEY `slide_id` (`slide_id`),
  ADD KEY `city_id` (`city_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `slide_except`
--
ALTER TABLE `slide_except`
  ADD CONSTRAINT `slide_except_ibfk_1` FOREIGN KEY (`slide_id`) REFERENCES `slides` (`id`),
  ADD CONSTRAINT `slide_except_ibfk_2` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`);

--
-- Ограничения внешнего ключа таблицы `slide_only`
--
ALTER TABLE `slide_only`
  ADD CONSTRAINT `slide_only_ibfk_1` FOREIGN KEY (`slide_id`) REFERENCES `slides` (`id`),
  ADD CONSTRAINT `slide_only_ibfk_2` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
