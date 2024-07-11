CREATE DATABASE 'studentdb';
USE studentdb;

create table students (
	id  int(3) NOT NULL AUTO_INCREMENT,
	name varchar(120) NOT NULL,
	email varchar(220) NOT NULL,
	age int(3),
	PRIMARY KEY (id)
);

