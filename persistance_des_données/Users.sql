CREATE USER 'util1'@'localhost' IDENTIFIED BY '*';
GRANT ALL PRIVILEGES ON papyrus.* TO 'util1'@'localhost';

CREATE USER 'util2'@'localhost' IDENTIFIED BY '*';
GRANT SELECT ON papyrus.* TO 'util2'@'localhost';

CREATE USER 'util3'@'localhost' IDENTIFIED BY '*';
GRANT SELECT, SHOW VIEW ON papyrus.fournis TO 'util3'@'localhost';