use shop;

--Практическое задание по теме «Операторы, фильтрация, сортировка и ограничение»

-- Задание №1
-- Пусть в таблице users поля created_at и updated_at оказались незаполненными. Заполните их текущими датой и временем.


update users set created_at = null; -- Очищаем столбец created_at
update users set updated_at = null; -- Очищаем столбец updated_at

update users set created_at = now(); -- Заполняем текущей датой и временем

-- Задание №2
/*
	Таблица users была неудачно спроектирована. 
	Записи created_at и updated_at были заданы типом VARCHAR и в них долгое время помещались значения в формате 20.10.2017 8:10. 
	Необходимо преобразовать поля к типу DATETIME, сохранив введённые ранее значения.
*/


ALTER TABLE users MODIFY created_at DATETIME; -- Меняем тип данных столбца
ALTER TABLE users MODIFY updated_at DATETIME;


-- Задание №3
/*
	 В таблице складских запасов storehouses_products в поле value могут встречаться 
	 самые разные цифры: 0, если товар закончился и выше нуля, если на складе имеются запасы. 
	 Необходимо отсортировать записи таким образом, чтобы они выводились в порядке увеличения 
	 значения value. Однако нулевые запасы должны выводиться в конце, после всех записей.
*/

SELECT value from storehouses_products sp ORDER BY value = 0, value ASC ; -- Сортируем по возростанию, нули ставим в конец



--Практическое задание теме «Агрегация данных»

-- Задание №1
-- Подсчитайте средний возраст пользователей в таблице users.

SELECT ROUND(AVG(TIMESTAMPDIFF(YEAR, birthday_at, NOW())), 0) AS AVG_Age FROM users; -- Получаем средний возраст пользователей

-- Задание №2
/*
	 Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. 
	 Следует учесть, что необходимы дни недели текущего года, а не года рождения. 
*/

SELECT
    DAYNAME(CONCAT(YEAR(NOW()), '-', SUBSTRING(birthday_at, 6, 10))) AS week_day_of_birthday_in_this_Year,
    COUNT(*) AS amount_of_birthday
FROM
    users
GROUP BY 
    week_day_of_birthday_in_this_Year
ORDER BY
	amount_of_birthday DESC;