drop database if exists spasilacko_izvjesce;
create database spasilacko_izvjesce;

use spasilacko_izvjesce;

create table spasilac(
sifra int not null primary key auto_increment,
osoba char(11) not null,
obnovljena_licenca int not null,
mjesto_rada varchar(50) not null
);

create table izvjesce_dana(
spasilac int not null,
datum datetime,
klima varchar(50) not null,
valovi varchar(50) not null
);

create table izvjesce_osobe(
spasilac int not null,
datum datetime,
mjesto_ozljede varchar(50),
osoba char(11) not null,
bolesti varchar(50),
lijekovi varchar(50)
);

create table osoba(
oib char(11) not null primary key,
ime varchar(50) not null,
prezime varchar(50) not null,
spol boolean,
dob int not null
);

alter table spasilac add foreign key (osoba) references osoba(oib);
alter table izvjesce_osobe add foreign key (spasilac) references spasilac(sifra);
alter table izvjesce_dana add foreign key (spasilac) references spasilac(sifra);
alter table izvjesce_osobe add foreign key (osoba) references osoba(oib);