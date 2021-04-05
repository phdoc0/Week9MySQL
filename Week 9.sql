CREATE DATABASE IF NOT EXISTS customers;
USE customers;
CREATE TABLE users (
	user_id INT(10) NOT NULL AUTO_INCREMENT,
	username varchar(100) NOT NULL UNIQUE,
	email varchar(100),
	password varchar(100) NOT NULL,
	PRIMARY KEY (user_id)
);
CREATE TABLE posts (
	post_id INT(10) NOT NULL AUTO_INCREMENT,
	user_id INT(10) NOT NULL,
	date_created datetime DEFAULT CURRENT_TIMESTAMP,
	post TEXT,
	PRIMARY KEY (post_id),
	FOREIGN KEY (user_id) REFERENCES users (user_id)
);
CREATE TABLE comments (
	comment_id INT(10) NOT NULL AUTO_INCREMENT,
	user_id INT(10) NOT NULL,
	post_id INT(10) NOT NULL,
	date_created datetime DEFAULT CURRENT_TIMESTAMP,
	comment TEXT NOT NULL,
	PRIMARY KEY (comment_id),
	FOREIGN KEY (user_id) REFERENCES users(user_id),
	FOREIGN KEY (post_id) REFERENCES posts(post_id)
);
