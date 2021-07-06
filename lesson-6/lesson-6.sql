USE vk;

-- Задание №1

-- Расписываем заглушки

-- Можно заменить user_id на переменную
set @user := 1001;

SELECT 
	firstname, 
	lastname, 
	(SELECT hometown FROM profiles WHERE user_id = @user) AS city,
	(SELECT filename FROM media WHERE id = 
	    (SELECT photo_id FROM profiles WHERE user_id = @user)
	) AS main_photo
FROM users 
WHERE id = @user;


-- Задание №2
SELECT from_user_id, COUNT(*) as send 
FROM messages 
WHERE to_user_id=1245
GROUP BY from_user_id
ORDER BY send DESC;

-- Задание №3
SELECT COUNT(*) as 'Likes' FROM profiles WHERE (YEAR(NOW())-YEAR(birthday)) < 10;

-- Задание №4
SELECT gender, COUNT(*) as 'Кол-во' FROM profiles GROUP BY gender;

