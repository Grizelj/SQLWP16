drop database if exists KONTAKTIWP16;
create database KONTAKTIWP16;

use KONTAKTIWP16;

create table osoba(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
spol boolean,
datumrodenja datetime not null,
nadimak varchar(50) not null
);

create table kontakt(
sifra int not null primary key auto_increment,
osoba int not null,
telefon varchar(20) not null
);

alter table kontakt add foreign key (osoba) references osoba(sifra);