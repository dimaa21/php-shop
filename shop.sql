-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Час створення: Бер 09 2021 р., 19:31
-- Версія сервера: 8.0.19
-- Версія PHP: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `shop`
--

-- --------------------------------------------------------

--
-- Структура таблиці `products`
--

CREATE TABLE `products` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `anons` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `text` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `img` varchar(50) NOT NULL,
  `price` int UNSIGNED NOT NULL,
  `category` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `products`
--

INSERT INTO `products` (`id`, `title`, `anons`, `text`, `img`, `price`, `category`) VALUES
(1, 'Годинник Tommy Hilfiger', 'Годинники від відомого бренду Tommy Hilfiger - це відмінна функціональність і надійність в поєднанні з цікавим дизайном. Корпус виготовлений з якісної нержавіючої сталі.', 'У годиннику використовується точний кварцовий механізм працює від батарейки. Світлонакопичувачі на стрілках і мітки.', 'tommy.PNG', 5000, 'watches'),
(2, 'Годинник Casio', 'Тривалий час роботи акумулятора Десять років - один акумулятор. ', 'Нові розробки в електроніці забезпечують значно більш низьке споживання енергії.', 'casio.jpeg', 400, 'watches'),
(3, 'Кепка Lacoste', 'Відмінна якість за демократичною ціною.\r\nЕмблема вишита!', 'Відмінна якість за демократичною ціною\r\nЕмблема вишита!', 'lacoste.jpg', 600, 'hats'),
(4, 'Футболка Jordan', 'Погляньте на дизайн Jumpman з нового ракурсу з футболкою Jordan HBR, бавовняної сорочкою з круглим вирізом з принтами.', 'М\'яка і легка бавовняна тканина для повсякденного використання.\r\nКомфортний крій і простий дизайн з універсальною формою.\r\n100% бавовна.', 'jordan.jpg', 1000, 'shirts'),
(5, 'Yeezy Boost 700', 'Зустрічайте оновлені Yeezy Boost Wave Runner 700. Нове створення несподівано з\'явилося в 2017 році. ', 'Оновлені Yeezy Boost з масами змін, доповненими замшевими штрихами, сміливими бризками кольору і загальної хвилястістю.', 'yeezy.jpg', 7000, 'shoes'),
(6, 'Air Force 1 Low \'Cactus Jack\'', 'Nike (Найки) Air Force 1 Low «Cactus Jack» з колаборації з Travis Scott (Тревіс Скотт) - це сміливе переосмислення Скоттом шанованого силуету.', 'Техніка печворк, використана в даній моделі - пряме відсилання до колись перебувала в центрі Манхеттена дизайн-лабораторії Nike\'s Bespoke Design Lab, відомої своїми ідеями do-it-yourself.', 'airforce.png', 21000, 'shoes'),
(7, 'Футболка Ralph Lauren\r\n\r\n', 'Футболка-поло прямого силуету з м\'якого трикотажу, прикрашена вишивкою.', 'Модель з відкладним коміром і коротким рукавом на манжеті. Спереду - застібка на гудзики.', 'ralph.jpg', 1000, 'shirts'),
(8, 'Кросівки Adidas Ozweego', 'Ці кросівки представляють стиль кінця 90-х - початку 2000-х в новому ключі, об\'єднуючи ретро-деталі з футуристичним дизайном. Модель виконана з сітки, замші і гладкого синтетичного матеріалу.', 'Спеціальні вставки підтримують передню частину стопи і п\'яту. Кросівки відчуваються неймовірно комфортно протягом усього дня.', 'raf.png', 4000, 'shoes'),
(9, 'Годинник Rolex', 'Rolex Daytona - справжній годинник-легенда, що став неймовірно популярним по всьому світу у зірок кіно і спорту, світових політиків та бізнесменів.', 'І якщо у Вас немає можливості придбати оригінал за $ 40 000 - не впадайте у відчай. Якісна репліка задовольнить всім Вашим вимогам!', 'rolex.jpg', 1100, 'watches'),
(10, 'Yeezy Boost 350', 'У світі взуття кросівки Reflective одні з найпопулярніших. Простий, але стильний дизайн завоював серця спортсменів і модників.', 'Бренд широко відомий у всьому світі і славиться високою якістю.', 'yeezy350.jpg', 3000, 'shoes'),
(11, 'Air Force 1', 'Кросівки Nike Air Force 1 - нова версія легендарної моделі, що зберегла знаменитий стиль AF1, а також довговічність і комфорт завдяки системі Nike Air.', 'Колір моделі: Чорний | Модель: 314192-009', 'airforce1.png', 3500, 'shoes'),
(12, 'Nike Cortez', 'Зручне, на шнурівках взуття бренду NIKE. Верхня частина взуття складається з екошкіри. Середина взуття гарантує комфорт при носінні.', 'Устілка в цьому взутті з матеріал, збільшує комфорт при носіння. Підошва - це прогумований матеріал. Взуття гарантує зручність на кожен день і обмежує рухів стопи.', 'cortez.png', 2500, 'shoes'),
(13, 'Футболка Nike', 'Футболка виготовлена з високоякісної бавовни, приємна на дотик і комфортна для повсякденного використання.', 'Класичний крій футболки, прямий.\r\nВідповідає найвищим стандартам, завдяки використанню сучасного обладнання пошиття та технології подвійного контролю якості продукції.', 'nike.jpeg', 200, 'shirts'),
(14, 'Reebok Classic', 'Кросівки виконані з натуральної шкіри, текстильна підкладка і устілка. Деталі: проміжна підошва з ЕВА амортизує ударну навантаження.', 'Формована устілка з поліуретану забезпечує додаткову амортизацію і комфорт. Кросівки класичного дизайну для повсякденного носіння.', 'reebok.png', 2000, 'shoes'),
(15, 'Футболка Adidas', 'Футболка в стилі casual від спортивного бренду виконана з бавовняного трикотажу. Модель прямого крою.', 'Деталі: контрастний принт, класичний фасон, посилений виріз горловини спинки.', 'adidas.png', 300, 'shirts');

-- --------------------------------------------------------

--
-- Структура таблиці `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(70) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `pass`) VALUES
(1, 'Dima', 'dimasukgaborak@gmail.com', '$2y$10$6b9VqlB2YgVY8jRAZt2auOQ1nDOMQvkRZjdcWkAT6uED5hpsk0bbu'),
(2, 'Dima', 'dima@gmail.com', '$2y$10$0UsF3hsb/S0jMrG5E.M8jOjvo7xhOZRrAkR3RrT9Bh9oJNVC38PNq');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `products`
--
ALTER TABLE `products`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблиці `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
