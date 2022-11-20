drop database if exists zupanijaOpcina;
create database zupanijaOpcina;
use zupanijaOpcina;

create table zupanija(
    sifra int not null primary key auto_increment,
    naziv varchar(50),
    zupan varchar(50)
);

create table opcina(
    sifra int not null primary key auto_increment,
    zupanija int,
    naziv varchar(50)
);

alter table opcina add foreign key (zupanija) references zupanija(sifra);



