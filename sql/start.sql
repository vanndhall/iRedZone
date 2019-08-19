CREATE DATABASE `iredzone`;

USE `iredzone`;

CREATE TABLE `locations` (
                         `id` INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
                         `name` VARCHAR(50) NOT NULL,
                         `type` VARCHAR(50) NOT NULL,
                         `available` BOOLEAN NOT NULL
);

CREATE TABLE `users` (
                         `id` INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
                         `login` VARCHAR(50) NOT NULL UNIQUE,
                         `password` VARCHAR(250) NOT NULL
);

insert into `users` (`login`, `password`) values
('user1', 'user1'),
('user2', 'user2');

insert into `locations` (`name`, `type`, `available`) values
('RZ-00-10', 'IDC5', 0),
('RZ-00-20', 'IDC5', 0),
('RZ-00-30', 'IDC5', 0),
('RZ-00-40', 'IDC5', 0),
('RZ-00-50', 'IDC5', 0),
('RZ-00-60', 'IDC5', 0),
('RZ-00-70', 'IDC5', 0),
('RZ-00-80', 'IDC5', 0);