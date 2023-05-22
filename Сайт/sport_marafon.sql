-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Апр 13 2023 г., 11:06
-- Версия сервера: 10.4.27-MariaDB
-- Версия PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `sport_marafon`
--

-- --------------------------------------------------------

--
-- Структура таблицы `tovar`
--

CREATE TABLE `tovar` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `id_brand` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `cost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `tovar`
--

INSERT INTO `tovar` (`id`, `name`, `id_brand`, `description`, `cost`) VALUES
(1, 'jacket Ellasa', 1, NULL, 400),
(2, 'trousers Duo', 1, NULL, 2000),
(3, 'parka shuuus', 1, NULL, 1100),
(4, 'Altrone', 4, NULL, 2000),
(5, 'Aoldo', 2, NULL, 700),
(6, 'ToGtxxx', 4, NULL, 1500),
(7, 'tent teakks', 3, NULL, 1700),
(8, 'tent Alkoss', 3, NULL, 4000),
(9, 'Oacker', 4, NULL, 2700),
(10, 'Snowboard Nidift', 5, NULL, 2500),
(11, 'jacket ElSalasa', 1, NULL, 1000),
(12, 'trousers Dubao', 1, NULL, 500),
(13, 'parka shock', 1, NULL, 800),
(14, 'AltraLone', 4, NULL, 200),
(15, 'Asolo Eldo', 2, NULL, 2000),
(16, 'Trek Gtx', 4, NULL, 580),
(17, 'tent Victoria', 3, NULL, 4200),
(18, 'tent Alexika', 3, NULL, 3500),
(19, 'Oackley Jawbreaker', 4, NULL, 1200),
(20, 'Snowboard Nidecker Rift', 5, NULL, 7000);

-- --------------------------------------------------------

--
-- Структура таблицы `type_tovar`
--

CREATE TABLE `type_tovar` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `type_tovar`
--

INSERT INTO `type_tovar` (`id`, `name`) VALUES
(1, 'cloth'),
(2, 'shoes'),
(3, 'tourism'),
(4, 'run'),
(5, 'snowboard');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `tovar`
--
ALTER TABLE `tovar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_1` (`id_brand`);

--
-- Индексы таблицы `type_tovar`
--
ALTER TABLE `type_tovar`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `tovar`
--
ALTER TABLE `tovar`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `type_tovar`
--
ALTER TABLE `type_tovar`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `tovar`
--
ALTER TABLE `tovar`
  ADD CONSTRAINT `tovar_ibfk_1` FOREIGN KEY (`id_brand`) REFERENCES `type_tovar` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
