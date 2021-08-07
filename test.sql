-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 07 2021 г., 18:17
-- Версия сервера: 5.7.29
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `athor` varchar(80) NOT NULL,
  `article` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `athor`, `article`) VALUES
(1, 'Петров', 'В своей статье рассказывает о машинах.'),
(2, 'Иванов', 'Написал статью об инфляции.'),
(3, 'Сидоров', 'Придумал новый химический элемент.'),
(4, 'Осокина', 'Также писала о машинах.'),
(5, 'Ветров', 'Написал статью о том, как разрабатывать элементы дизайна.');

-- --------------------------------------------------------

--
-- Структура таблицы `table_old`
--

CREATE TABLE `table_old` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `age` int(2) NOT NULL,
  `salary` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `table_old`
--

INSERT INTO `table_old` (`id`, `name`, `age`, `salary`) VALUES
(6, 'Кирилл', 28, 1000),
(9, 'ivan', 23, 23),
(10, 'ivan', 23, 23),
(11, 'ivan', 23, 23),
(12, 'Serg', 23, 45),
(16, 'Иван', 23, 35),
(17, 'Иван', 26, 567),
(18, 'ivan', 23, 23),
(38, 'Сергей', 21, 500);

-- --------------------------------------------------------

--
-- Структура таблицы `workers`
--

CREATE TABLE `workers` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `age` int(11) NOT NULL,
  `salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `workers`
--

INSERT INTO `workers` (`id`, `name`, `age`, `salary`) VALUES
(3, 'Петя', 23, 700),
(6, 'Иван', 27, 700),
(8, 'Никитa', 35, 300),
(9, 'Светлана', 35, 1200),
(10, 'Ярослава', 30, 1200),
(11, 'Петр', 31, 1000),
(12, 'Женя', 23, 900);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `table_old`
--
ALTER TABLE `table_old`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `workers`
--
ALTER TABLE `workers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `table_old`
--
ALTER TABLE `table_old`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT для таблицы `workers`
--
ALTER TABLE `workers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
