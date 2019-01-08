

drop database if exists store;
create database store;
use store;

create table superheros(
    ID int not null auto_increment primary key,
    Name_ varchar(60)
);

create table contact(
    IDs int not null auto_increment primary key,
    Phone_ double,
    foreign key (ID)
    references superheros(IDr)
);

drop user if exists 'superman'@'localhost';
create user if not exists 'superman'@'localhost';
grant all privileges on store.* to 'superman'@'localhost'; 