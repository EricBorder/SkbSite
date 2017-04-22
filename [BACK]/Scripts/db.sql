---------------------------------------
--Скрипт создания структуры базы данных
---------------------------------------

DROP TABLE IF EXISTS users CASCADE;
CREATE TABLE users (
	id SERIAL NOT NULL PRIMARY KEY,
	name VARCHAR(255) DEFAULT NULL,
	password VARCHAR(255) DEFAULT NULL
);

DROP TABLE IF EXISTS news CASCADE;
CREATE TABLE news (
	id SERIAL NOT NULL PRIMARY KEY,
	author_id INT NOT NULL REFERENCES users(id),
	name VARCHAR(255) DEFAULT NULL,
	article TEXT DEFAULT NULL,
	date_of_creation DATE NOT NULL
);