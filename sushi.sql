-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 27 2019 г., 11:01
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
-- Структура таблицы `cities`
--

CREATE TABLE `cities` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `subdomain` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cities`
--

INSERT INTO `cities` (`id`, `name`, `subdomain`) VALUES
(1, 'Аксай', 'аксай'),
(2, 'Анапа', 'анапа'),
(3, 'Воронеж', 'воронеж'),
(4, 'Геленджик', 'геленджик'),
(5, 'Горячий Ключ', 'горячий-ключ'),
(6, 'Краснодар', 'краснодар'),
(7, 'Курск', 'курск'),
(8, 'Курчатов', 'курчатов'),
(9, 'Моздок', 'моздок'),
(10, 'Новороссийск', ''),
(11, 'Новочеркасск', 'новочеркасск'),
(12, 'Ростов-на-Дону', 'ростов'),
(13, 'Саратов', 'саратов'),
(14, 'Станица Динская', 'динская'),
(15, 'Тимашевск', 'тимашевск'),
(16, 'Усть-Лабинск', 'усть-лабинск'),
(17, 'Прохладный', 'прохладный');

-- --------------------------------------------------------

--
-- Структура таблицы `points`
--

CREATE TABLE `points` (
  `id` int(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `time` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `frontpad` int(10) DEFAULT NULL,
  `city` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `points`
--

INSERT INTO `points` (`id`, `address`, `phone`, `time`, `mail`, `frontpad`, `city`) VALUES
(1, '1', '1', '1', '1', 1, 1),
(2, '2', '2', '2', '2', 2, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `slides`
--

CREATE TABLE `slides` (
  `id` int(10) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `slides`
--

INSERT INTO `slides` (`id`, `image`, `code`) VALUES
(1, '/images/slide/1.jpg', NULL),
(2, '/images/slide/2.jpg', NULL),
(3, '/images/slide/3.jpg', NULL),
(4, '/images/slide/4.jpg', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `slide_only`
--

CREATE TABLE `slide_only` (
  `id` int(11) NOT NULL,
  `slide_id` int(10) NOT NULL,
  `city_id` int(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `slide_only`
--

INSERT INTO `slide_only` (`id`, `slide_id`, `city_id`) VALUES
(1, 1, 0),
(2, 2, 0),
(3, 3, 4),
(4, 4, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `auth_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `auth_key`) VALUES
(1, 'admin', '$2y$13$tvR.Hk.kHdV845bS4v.AKuiIb.c31yMiYcpbD7vUhSG7zGDmttgYa', 'K1ZdOpXEs-uxOxa0GTs_ILiOQvafDgzV');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `points`
--
ALTER TABLE `points`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city` (`city`);

--
-- Индексы таблицы `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `slide_only`
--
ALTER TABLE `slide_only`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slide_id` (`slide_id`),
  ADD KEY `city_id` (`city_id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `points`
--
ALTER TABLE `points`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `slide_only`
--
ALTER TABLE `slide_only`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `points`
--
ALTER TABLE `points`
  ADD CONSTRAINT `points_ibfk_1` FOREIGN KEY (`city`) REFERENCES `cities` (`id`);

--
-- Ограничения внешнего ключа таблицы `slide_only`
--
ALTER TABLE `slide_only`
  ADD CONSTRAINT `slide_only_ibfk_1` FOREIGN KEY (`slide_id`) REFERENCES `slides` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
