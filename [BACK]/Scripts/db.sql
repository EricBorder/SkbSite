---------------------------------------
--Скрипт создания структуры базы данных
---------------------------------------

DROP TABLE IF EXISTS roles CASCADE;
DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS users_roles;
DROP TABLE IF EXISTS project_statuses CASCADE;
DROP TABLE IF EXISTS projects CASCADE;
DROP TABLE IF EXISTS projects_users CASCADE;
DROP TABLE IF EXISTS comments_for_project CASCADE;
DROP TABLE IF EXISTS news CASCADE;
DROP TABLE IF EXISTS comments CASCADE;

CREATE TABLE roles (
	id SERIAL NOT NULL PRIMARY KEY,
	name VARCHAR(50) DEFAULT NULL
);

INSERT INTO roles (name) VALUES ('ROLE_MEMBER');
INSERT INTO roles (name) VALUES ('ROLE_CUSTOMER');
INSERT INTO roles (name) VALUES ('ROLE_CAPTAIN');
INSERT INTO roles (name) VALUES ('ROLE_ADMIN');


CREATE TABLE users (
	id SERIAL NOT NULL PRIMARY KEY,
	lastname VARCHAR(255) DEFAULT NULL,
	firstname VARCHAR(255) DEFAULT NULL,
	middlename VARCHAR(255) DEFAULT NULL,
	date_of_birth DATE DEFAULT NULL,
	username VARCHAR(255) DEFAULT NULL,
	email VARCHAR(255) DEFAULT NULL,
	organization VARCHAR(255) DEFAULT NULL,
	password VARCHAR(255) DEFAULT NULL,
	photo_path VARCHAR(255) DEFAULT NULL,
	github VARCHAR(255) DEFAULT NULL,
	contact_details VARCHAR(255),
	about TEXT DEFAULT NULL
);

CREATE TABLE users_roles (
	user_id INT NOT NULL REFERENCES users ON DELETE CASCADE ON UPDATE CASCADE,
	role_id INT NOT NULL REFERENCES roles ON DELETE CASCADE ON UPDATE CASCADE,
	PRIMARY KEY (user_id, role_id)
);


CREATE TABLE project_statuses (
	id SERIAL NOT NULL PRIMARY KEY,
	name VARCHAR(63) NOT NULL
 );

INSERT INTO project_statuses (name) VALUES ('ACTIVE');
INSERT INTO project_statuses (name) VALUES ('FROZEN');
INSERT INTO project_statuses (name) VALUES ('COMPLETED');


CREATE TABLE projects (
	id SERIAL NOT NULL PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	status_id INT REFERENCES project_statuses(id) DEFAULT 0,
	status_percent INT CHECK (0 <= status_percent AND status_percent <= 100) DEFAULT 0,
	captain_id INT REFERENCES users(id) ON DELETE CASCADE ON UPDATE CASCADE,
	date_of_start DATE NOT NULL,
	date_of_last_update DATE NOT NULL,
	about TEXT NOT NULL
);


CREATE TABLE projects_users (
	project_id INT NOT NULL REFERENCES projects(id) ON DELETE CASCADE ON UPDATE CASCADE,
	user_id INT NOT NULL REFERENCES users(id) ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE comments_for_project (
	id SERIAL NOT NULL PRIMARY KEY,
	project_id INT NOT NULL REFERENCES projects(id) ON DELETE CASCADE ON UPDATE CASCADE,
	author_id INT NOT NULL REFERENCES users(id) ON DELETE CASCADE ON UPDATE CASCADE,
	time_of_creation TIMESTAMP NOT NULL,
	content TEXT NOT NULL
);


CREATE TABLE news (
	id SERIAL NOT NULL PRIMARY KEY,
	author_id INT NOT NULL REFERENCES users(id) ON DELETE CASCADE ON UPDATE CASCADE,
	project_id INT DEFAULT NULL REFERENCES projects(id) ON DELETE CASCADE ON UPDATE CASCADE,
	name VARCHAR(255) NOT NULL,
	content TEXT NOT NULL,
	time_of_creation TIMESTAMP NOT NULL,
	time_of_last_update TIMESTAMP NOT NULL
);


CREATE TABLE comments (
	id SERIAL NOT NULL PRIMARY KEY,
	news_id INT NOT NULL REFERENCES news(id) ON DELETE CASCADE ON UPDATE CASCADE,
	author_id INT NOT NULL REFERENCES users(id) ON DELETE CASCADE ON UPDATE CASCADE,
	time_of_creation TIMESTAMP NOT NULL,
	content TEXT NOT NULL
);