DROP DATABASE IF EXISTS `PasswordManager`;
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';
CREATE DATABASE `PasswordManager`;
USE `PasswordManager`;

CREATE TABLE `Senhas` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `password` VARCHAR(45) NOT NULL,
  `title` VARCHAR(45) NOT NULL,
  `iv` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`Id`)
);

SELECT * FROM `Senhas`;
