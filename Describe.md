# Data Base КиноПоиск

База данных будет хранить данные сервиса кинопоиск.

## Описание

DB состоит из 13 таблиц:

* `cities`
* `countries`
* `filmmarkers`
* `markers`
* `media`
* `media_likes` 
* `media_types`
* `movies`
* `people`
* `profiles`
* `sessions` 
* `theaters`
* `users`


```
  В таблице хранения данных о фильме, применен тип SET, для выбора нескольких жанров. 
  Так же SET применен для таблици filmmekers, для выбора ролей членов съемочной группы.
```