USE mysql;
FLUSH PRIVILEGES ;
GRANT ALL ON *.* TO 'root'@'%' identified by '$_DB_ROOT_PASSWORD' WITH GRANT OPTION ;
GRANT ALL ON *.* TO 'root' identified by '$_DB_ROOT_PASSWORD' WITH GRANT OPTION ;
SET PASSWORD FOR 'root'=PASSWORD('$_DB_ROOT_PASSWORD') ;
DROP DATABASE IF EXISTS test ;
FLUSH PRIVILEGES ;
CREATE DATABASE IF NOT EXISTS $_DB_NAME;
GRANT ALL ON `$_DB_NAME`.* to '$_DB_USER'@'%' IDENTIFIED BY '$_DB_PASSWORD';
