drop database if exists firmapp26;
create database firmapp26;
use firmapp26;

create table projekt(
    sifra int not null primary key auto_increment,
    naziv varchar(50),
    cijena decimal(18,2)
);

create table programer(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    datum_rodosa datetime,
    placa decimal(18,2)
);

create table sudjeluje(
    projekt int,
    programer int,
    datum_pocetka datetime,
    datum_kraja datetime
);

alter table sudjeluje add foreign key (projekt) references projekt(sifra);
alter table sudjeluje add foreign key (programer) references programer(sifra);


