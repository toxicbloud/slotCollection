select * from test_table;
select userId from test_table;
create table user(
    idUser int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    email varchar(100),
    surname varchar(50),
    name varchar(50),
    password varchar(50)
)
create table car(
    idUser int,
    idCar int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    manufacturer varchar(50),
    brand varchar(50),
    model varchar(50),
    FOREIGN KEY (idUser) REFERENCES user(idUser)
)
create table image(
    idImage int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    idCar int,
    path varchar(100),
    constraint FK_idCar FOREIGN KEY (idCar) REFERENCES car(idCar)
)
insert into user values (null,'lemaildelamort@gmail.com','auxence','lecousin','lemotdepasseduturfu');
select * from voiture;
insert into voiture values (1,'mini','cooper D');
select marque,modele from voiture inner join user u on voiture.idUser = u.idUser where prenom='antonin';
