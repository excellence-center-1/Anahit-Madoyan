CREATE USER 'myuser1'@'localhost' IDENTIFIED BY '1';
CREATE USER 'myuser2'@'localhost' IDENTIFIED BY '2';
CREATE DATABASE mydb;

GRANT ALL PRIVILEGES ON *.* TO 'myuser1'@'localhost';
GRANT SELECT, INSERT, UPDATE ON *.* TO 'myuser2'@'localhost';

ALTER USER 'myuser1'@'localhost' IDENTIFIED BY 'pass1';
ALTER USER 'myuser2'@'localhost' IDENTIFIED BY 'pass2';

