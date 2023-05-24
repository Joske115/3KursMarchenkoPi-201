-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 10.0.0.129
-- Время создания: Май 23 2023 г., 15:46
-- Версия сервера: 5.7.37-40
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `a0814333_andrey`
--

-- --------------------------------------------------------

--
-- Структура таблицы `tovar`
--

CREATE TABLE `tovar` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `img` varchar(1000) NOT NULL,
  `id_brand` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `cost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tovar`
--

INSERT INTO `tovar` (`id`, `name`, `img`, `id_brand`, `description`, `cost`) VALUES
(1, 'jacket Ellasa', 'https://sport-marafon.ru/upload/resize_cache/files/iblock/elements/c220c589-00b2-11e3-9e97-e83935202582/dcc7caf4-d498-11ed-85da-b42e99c9b482/210_210_1/dcc7caf4d49811ed85dab42e99c9b482_4d5f5dbee3ad11ed85dab42e99c9b482.png', 1, NULL, 400),
(2, 'trousers Duo', 'https://sport-marafon.ru/upload/resize_cache/files/iblock/elements/c220c588-00b2-11e3-9e97-e83935202582/aa71aa0f-90f8-11ed-85da-b42e99c9b482/210_210_1/aa71aa0f90f811ed85dab42e99c9b482_2ba412d8c12c11ed85dab42e99c9b482.jpg', 1, NULL, 2000),
(3, 'parka shuuus', 'https://sport-marafon.ru/upload/resize_cache/files/iblock/elements/c220c588-00b2-11e3-9e97-e83935202582/fc229d01-cd68-11ed-85da-b42e99c9b482/210_210_1/fc229d01cd6811ed85dab42e99c9b482_f2a484fad7cb11ed85dab42e99c9b482.png', 1, NULL, 1100),
(4, 'Altrone', 'https://sport-marafon.ru/upload/resize_cache/files/iblock/elements/87399619-00b3-11e3-9e97-e83935202582/b25f0815-3ba1-11ea-80ca-901b0e95a2a8/210_210_1/b25f08153ba111ea80ca901b0e95a2a8_a1f5837c727111ea80ca901b0e95a2a8.jpg', 4, NULL, 2000),
(5, 'Aoldo', 'https://sport-marafon.ru/upload/resize_cache/files/iblock/elements/c220c589-00b2-11e3-9e97-e83935202582/42b1dc11-8b2a-11ec-85d9-b42e99c9b482/210_210_1/42b1dc118b2a11ec85d9b42e99c9b482_9847893792e211ec85d9b42e99c9b482.png', 2, NULL, 700),
(6, 'ToGtxxx', 'https://sport-marafon.ru/upload/resize_cache/files/iblock/elements/b8ba8736-7e86-11e3-804d-e83935202582/05bf5905-e34f-11ed-85da-b42e99c9b482/210_210_1/05bf5905e34f11ed85dab42e99c9b482_510f732def1911ed85dab42e99c9b482.jpg', 4, NULL, 1500),
(7, 'tent teakks', 'https://sport-marafon.ru/upload/resize_cache/files/iblock/elements/8e18f7d9-f0f6-11e1-8b5b-e83935202582/cf2c942c-fe78-11ea-80cc-901b0e95a2a8/210_210_1/cf2c942cfe7811ea80cc901b0e95a2a8_4fa1214b14cf11eb80cc901b0e95a2a8.jpg', 3, NULL, 1700),
(8, 'tent Alkoss', 'https://sport-marafon.ru/upload/resize_cache/files/iblock/elements/c220c58f-00b2-11e3-9e97-e83935202582/dcc7cafa-d498-11ed-85da-b42e99c9b482/210_210_1/dcc7cafad49811ed85dab42e99c9b482_e9778857f19911ed85dab42e99c9b482.jpg', 3, NULL, 4000),
(9, 'Oacker', 'https://sport-marafon.ru/upload/resize_cache/files/iblock/elements/c220c58b-00b2-11e3-9e97-e83935202582/01bb2395-de92-11ed-85da-b42e99c9b482/210_210_1/01bb2395de9211ed85dab42e99c9b482_507dda5ee2ba11ed85dab42e99c9b482.png', 4, NULL, 2700),
(10, 'Snowboard Nidift', 'https://sport-marafon.ru/upload/resize_cache/files/iblock/elements/c220c58b-00b2-11e3-9e97-e83935202582/01bb2396-de92-11ed-85da-b42e99c9b482/210_210_1/01bb2396de9211ed85dab42e99c9b482_228bbc83e2bc11ed85dab42e99c9b482.jpg', 5, NULL, 2500),
(11, 'jacket ElSalasa', 'https://sport-marafon.ru/upload/resize_cache/files/iblock/elements/a289cbcf-2b3a-11e3-9fdc-e83935202582/be3c77e4-decd-11ed-85da-b42e99c9b482/210_210_1/be3c77e4decd11ed85dab42e99c9b482_9da29747f3be11ed85dab42e99c9b482.png', 1, NULL, 1000),
(12, 'trousers Dubao', 'https://sport-marafon.ru/upload/resize_cache/files/iblock/elements/c220c58b-00b2-11e3-9e97-e83935202582/5e7fb0b6-a0c2-11ed-85da-b42e99c9b482/210_210_1/5e7fb0b6a0c211ed85dab42e99c9b482_8db99059a33a11ed85dab42e99c9b482.jpg', 1, NULL, 500),
(13, 'parka shock', 'https://sport-marafon.ru/upload/resize_cache/files/iblock/elements/e9b75af6-94e7-11e1-b026-e83935202583/11384d5d-43ea-11ed-85da-b42e99c9b482/210_210_1/11384d5d43ea11ed85dab42e99c9b482_7aef2513489511ed85dab42e99c9b482.jpg', 1, NULL, 800),
(14, 'AltraLone', 'https://sport-marafon.ru/upload/resize_cache/files/iblock/elements/8e18f7d9-f0f6-11e1-8b5b-e83935202582/c1f04ee8-6a4d-11ed-85da-b42e99c9b482/210_210_1/c1f04ee86a4d11ed85dab42e99c9b482_67eb8d0f743911ed85dab42e99c9b482.jpg', 4, NULL, 200),
(15, 'Asolo Eldo', 'https://sport-marafon.ru/upload/resize_cache/files/iblock/elements/3de69d4f-0de8-11e2-a0d8-e83935202582/0c3b8f83-6665-11ed-85da-b42e99c9b482/210_210_1/0c3b8f83666511ed85dab42e99c9b482_73be59426ba411ed85dab42e99c9b482.jpg', 2, NULL, 2000),
(16, 'Trek Gtx', 'https://sport-marafon.ru/upload/resize_cache/files/iblock/elements/8e18f7d8-f0f6-11e1-8b5b-e83935202582/dd0f98e2-74a1-11ed-85da-b42e99c9b482/210_210_1/dd0f98e274a111ed85dab42e99c9b482_9a4365a9772011ed85dab42e99c9b482.jpg', 4, NULL, 580),
(17, 'tent Victoria', 'https://sport-marafon.ru/upload/resize_cache/files/iblock/elements/9f4e3350-3cba-11e3-9fdc-e83935202582/617f6f7c-9682-11ed-85da-b42e99c9b482/210_210_1/617f6f7c968211ed85dab42e99c9b482_5cadfd20a84b11ed85dab42e99c9b482.jpg', 3, NULL, 4200),
(18, 'tent Alexika', 'https://sport-marafon.ru/upload/resize_cache/files/iblock/elements/e9b75aed-94e7-11e1-b026-e83935202583/74e3b8cf-d49b-11ed-85da-b42e99c9b482/210_210_1/74e3b8cfd49b11ed85dab42e99c9b482_4748ce11f17911ed85dab42e99c9b482.jpg', 3, NULL, 3500),
(19, 'Oackley Jawbreaker', 'https://sport-marafon.ru/upload/resize_cache/files/iblock/elements/c220c588-00b2-11e3-9e97-e83935202582/b4490f7e-c627-11ec-85da-b42e99c9b482/210_210_1/b4490f7ec62711ec85dab42e99c9b482_32240349d3c111ec85dab42e99c9b482.jpg', 4, NULL, 1200),
(20, 'Snowboard Nidecker Rift', 'https://sport-marafon.ru/upload/resize_cache/files/iblock/elements/3de69d51-0de8-11e2-a0d8-e83935202582/42621845-5a8d-11ed-85da-b42e99c9b482/210_210_1/426218455a8d11ed85dab42e99c9b482_a6c2174b668211ed85dab42e99c9b482.jpg', 5, NULL, 7000);

-- --------------------------------------------------------

--
-- Структура таблицы `type_tovar`
--

CREATE TABLE `type_tovar` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `type_tovar`
--

INSERT INTO `type_tovar` (`id`, `name`) VALUES
(1, 'cloth'),
(2, 'shoes'),
(3, 'tourism'),
(4, 'run'),
(5, 'snowboard');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(319) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sex` int(11) NOT NULL,
  `inter` text COLLATE utf8_unicode_ci NOT NULL,
  `blood_type` int(11) NOT NULL,
  `factor` int(11) NOT NULL,
  `vk` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `email`, `name`, `sex`, `inter`, `blood_type`, `factor`, `vk`) VALUES
(3, 'pubbersk', '$2y$10$5RrPNa.spVZ7eW0Fyr7YgOPQK0aG16tVELSGrKCkBAjrQYK6XVJTW', 'pubbersk@gmail.com', 'Клочков Сергей Иванович', 1, 'Программирование\r\nСпорт', 2, 1, 'http://t.me/sadlks'),
(10, '1234', '$2y$10$yXpr9A2eLpNV68n5q5tTouuMn6pprUNDYRfzTZIgJhYM9o8MydaIO', '1234@mail.ru', 'sadsad', 1, '            Unf          ', 1, 1, 'http://vk.com/'),
(11, 'test', '$2y$10$ozntrV4wczhWsiWqfsVkduBNFVPJwnizsxsCZ7QCFdFcbn8q00chO', 'test@mail.ru', 'test 123', 2, 'ashdiosahdiosa', 1, 1, 'http://t.me/sadlks'),
(12, 'dsa', '$2y$10$9or0A4cDXtBniPjH29MFUOO09CO7LxOP6bCc2jSEBfurvrrjP6bpC', 'dsa@mail.ru', 'выф выф выф', 1, '            уы          ', 1, 1, 'http://vk.com/abc');

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
-- Индексы таблицы `users`
--
ALTER TABLE `users`
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
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
