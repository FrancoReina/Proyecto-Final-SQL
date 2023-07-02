USE mysql;

-- Usuario creado con los permisos de Lectura, insercion y modificacion --
DROP USER IF EXISTS 'Federico'@'localhost';
CREATE USER 'Federico'@'localhost';
GRANT SELECT, INSERT, UPDATE ON gyg_fiacas.* TO 'Federico'@'localhost';

SELECT * FROM mysql.user WHERE user = 'Federico';


-- Usuario Creado con los permisos de solo lectura --
DROP USER IF EXISTS 'natasha'@'localhost';
CREATE USER 'natasha'@'localhost' IDENTIFIED BY '1234';
GRANT SELECT ON gyg_fiacas.* TO 'natasha'@'localhost';

SHOW GRANTS FOR 'natasha'@'localhost';

