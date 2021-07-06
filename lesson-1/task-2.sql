-- Создаём базу данных example, если ещё не создана
DROP DATABASE IF EXISTS example;
CREATE DATABASE example;
USE example;

-- Создаём таблицу users и столбцы id и name
DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) COMMENT 'Имя пользователя'
) COMMENT = 'Таблица пользователей';

-- Проверяем что всё создалось
DESCRIBE users;
