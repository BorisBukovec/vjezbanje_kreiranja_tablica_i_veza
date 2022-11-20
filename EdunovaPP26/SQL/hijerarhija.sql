drop database if exists hijerarhija;
create database hijerarhija;
use hijerarhija;

create table hijerarhija(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    placa decimal(18,2),
    nadredeni varchar(50),
    hijerarhija int
);

alter table hijerarhija add foreign key (hijerarhija) references hijerarhija(sifra);

