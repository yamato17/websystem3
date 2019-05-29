create table player ( id int auto_increment not null primary key, name varchar(100) );
create table team ( id int auto_increment not null primary key, name varchar(100) );
create table batting ( id int auto_increment not null primary key, year int, player_id int, team_id int, PA int, AB int, H int, HR int, R int );
load data local infile 'player.csv' into table player fields terminated by ',' enclosed by '"';
load data local infile 'team.csv' into table team fields terminated by ',' enclosed by '"';
load data local infile 'batting.csv' into table batting fields terminated by ',' enclosed by '"';
