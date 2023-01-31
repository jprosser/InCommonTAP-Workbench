CREATE DATABASE grouper_to_midpoint CHARACTER SET utf8 COLLATE utf8_bin;
CREATE USER 'grouper'@'%' IDENTIFIED BY 'password';
CREATE USER 'grouper'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON * . * TO 'grouper'@'%';
GRANT ALL PRIVILEGES ON * . * TO 'grouper'@'localhost';
FLUSH PRIVILEGES;

