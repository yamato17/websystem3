create user 'node'@'localhost' identified with mysql_native_password by 'pw';
set password for 'node'@'localhost' = password('websystem');
create database web;
grant all on web.* to node@localhost;