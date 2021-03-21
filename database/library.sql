-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 05 2020 г., 18:00
-- Версия сервера: 8.0.12
-- Версия PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `library`
--

-- --------------------------------------------------------

--
-- Структура таблицы `books`
--

CREATE TABLE `books` (
  `id_book` int(11) NOT NULL,
  `author_book` varchar(50) NOT NULL,
  `name_book` varchar(150) NOT NULL,
  `description_book` text NOT NULL,
  `img_book` varchar(1000) NOT NULL,
  `status_book` varchar(20) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `books`
--

INSERT INTO `books` (`id_book`, `author_book`, `name_book`, `description_book`, `img_book`, `status_book`, `id_user`) VALUES
(1, 'Джордж Оруэлл', 'Скотный двор', '«Скотный двор» — изданная в 1945 году сатирическая повесть-притча Джорджа Оруэлла. В повести изображена эволюция состояния животных, изгнавших со скотного двора его предыдущего владельца, жестокого мистера Джонса, от безграничной свободы к диктатуре свиньи по кличке Наполеон.', 'https://cv1.litres.ru/pub/c/elektronnaya-kniga/cover_330/18559915-dzhordzh-oruell-skotnyy-dvor-esse.jpg', 'my_books', 1),
(2, 'Артур Конан Дойл', 'Собака Баскервилей', '«Собака Баскервилей» — детективная повесть английского писателя Артура Конан Дойля, одна из четырёх его повестей о Шерлоке Холмсе. Впервые публиковалась с августа 1901 года по апрель 1902 года в ежемесячном журнале «Strand Magazine»', 'https://www.blackcat-cideb.com/uploads/2017/03/108-108_77163bf55c2ffa78b4042fc8b3a07d15.jpg', 'my_books', 1),
(3, 'Герман Гессе', 'Демиан', 'Сюжет романа строится на описании взросления главного героя, Эмиля Синклера. Он проходит путь от десятилетнего мальчика до взрослого, зрелого человека. Этот путь можно разделить на несколько наиболее важных для становления личности главного героя этапов.', 'https://img4.labirint.ru/rc/df3b38a474f7a04ff8e7a89e8ed8697e/220x340/books45/447284/cover.jpg?1566211641', 'my_books', 1),
(4, 'Александр Дюма', 'Две Дианы', 'Главным героем романа является граф Габриэль Монтгомери, невольный убийца короля Генриха II, вымышленная история его любви к побочной дочери короля Диане де Кастро, загадка исчезновения его отца Жака Монтгомери за двадцать лет до времени действия романа, также использована реальная история крестьянина Мартена Герра и выдававшего себя за него Арно дю Тиля.  Исторические события, описанные в романе — осада Сен-Кантена (1557), взятие Кале (1558), ранение Генриха II на турнире (1559) и последовавшая за этим его смерть, Амбуазский заговор (1560), смерть Франциска II (1560) и начало Религиозных войн.', 'https://cdn1.ozone.ru/multimedia/1002148877.jpg', 'my_books', 1),
(5, 'Эдгар Аллан По', 'Сердце-обличитель', '«Се́рдце-обличи́тель» — один из «страшных» рассказов Эдгара Аллана По, впервые опубликованный в журнале Джеймса Расселла Лоуэлла The Pioneer в 1843 году. Повествование ведётся от лица безымянного рассказчика, убившего старика, с которым он жил под одной крышей.', 'https://cv4.litres.ru/pub/c/elektronnaya-kniga/cover/132742-edgar-po-serdce-oblichitel.jpg_330.jpg', 'wishes', 1),
(6, 'Дэниел Киз', 'Цветы для Элджернона', '«Цветы для Э́лджернона» — научно-фантастический рассказ Дэниела Киза. Первоначально издан в апрельском номере «Журнала фэнтези и научной фантастики» за 1959 год. Премия «Хьюго» за лучший короткий научно-фантастический рассказ.', 'https://img3.labirint.ru/rc/4adc0debfed598a7cdf9a090e5386faf/220x340/books24/234187/cover.jpg?1280394613', 'wishes', 1),
(7, 'Марио Пьюзо', 'Крестный отец', '«Крёстный отец» — роман Марио Пьюзо, изданный в 1969 году и рассказывающий о жизни одного из могущественных мафиозных кланов Америки — семье дона Корлеоне. На русском языке впервые опубликован в журнале «Знамя». В 1972 году произведение экранизировано Фрэнсисом Фордом Копполой.', 'https://img4.labirint.ru/rc/fea3b802c71f5de630f35117801efaf8/220x340/books14/130642/cover.jpg?1280394613', 'wishes', 1),
(8, 'Маркус Зусак', 'Книжный вор', '«Книжный вор» — роман австралийского писателя Маркуса Зусака, написанный в 2005 году. Находился в списке «The New York Times Best Seller list» более 230 недель. Экранизирован в 2013 году режиссёром Брайаном Персивалем.', 'https://cdn.eksmo.ru/v2/ITD000000000167873/COVER/cover1__w600.jpg', 'wishes', 1),
(9, 'Михаил Булгаков', 'Записки юного врача', '«Записки юного врача» — цикл рассказов М. А. Булгакова, опубликованных в 1925—1926 годах в журналах «Медицинский работник» и «Красная панорама» В цикл входят рассказы «Полотенце с петухом», «Стальное горло», «Крещение поворотом», «Вьюга», «Тьма египетская», «Пропавший глаз» и «Звёздная сыпь».', 'https://img3.labirint.ru/rc/a37dda303106f9da68696d57330bc564/220x340/books41/402493/cover.jpg?1563723562', 'my_books', 1),
(10, 'Виктор Мари Гюго', 'Отверженные', '«Отве́рженные» — роман-эпопея французского классика Виктора Гюго. Широко признан мировой литературной критикой и мировой общественностью апофеозом творчества писателя и одним из величайших романов XIX столетия. Впервые опубликован в 1862 году.', 'https://img3.labirint.ru/rc/65af97ef84163c80e1f0ac8598bbb6cd/220x340/books57/561467/cover.jpg?1565699243', 'wishes', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `login` varchar(20) NOT NULL,
  `password` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id_user`, `login`, `password`, `username`) VALUES
(1, 'admin', '$2y$10$TWPpT3Grqc7uWN84mhGePe3nQFLxhTBhDahk9.tU0ayi3NGMkXHUe', 'Жопный воин');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id_book`),
  ADD KEY `id_user` (`id_user`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `books`
--
ALTER TABLE `books`
  MODIFY `id_book` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
