Create database VeterinariaBD;
use VeterinariaBD;

create table municipio(
mumId int primary key identity (1,1) not null,
municipioN nvarchar(100) not null unique
);

create table departamento(
depId int primary key identity (1,1) not null,
departamento nvarchar(50) not null unique,
municipioN int foreign key references  municipio(mumId) not null
);


create table direccion(
dirId int primary key identity (1,1) not null,
direccion nvarchar(50) not null,
departamento int foreign key references departamento(depId) not null,
codigoPostal int not null
);

create table Duenomascota(
dmID int primary key identity (1,1) not null,
NumIdentidad int not null unique,
nombre nvarchar(50) not null,
apellido nvarchar(50) not null,
direccion int foreign key references direccion(dirId) not null,
telefono int
);

create table TipoMascota(
tmId int primary key identity (1,1) not null,
tipoMascotaN nvarchar(50) not null,
);

create table Raza(
razaId int primary key identity (1,1) not null,
razaN nvarchar(50)
);

create table Mascota(
IdMascota int primary key identity (1,1) not null,
nombre nvarchar(50) not null,
Observacion nvarchar(255) not null,
razaId int foreign key references Raza(razaId) not null,
tmId int foreign key references TipoMascota(tmId) not null
);


create table Ingreso(
idIngreso int primary key identity(1,1) not null,
Motivo varchar (100)not null,
Observaciones varchar(100)not null,
Fecha varchar (50) not null
)


create table Cargo(
idCargo int primary key identity (1,1) not null,
ncargo varchar (50) not null
)

create table Veterinario(
idVeterinario int primary key identity(1,1) not null,
Nombre varchar(50) not null,
Apellido varchar(50) not null,
idCargo int foreign key references Cargo(idCargo)not null
)


Insert into Cargo(ncargo)values('Gerente')
Insert into Cargo(ncargo)values('Supervisor')
Insert into Cargo(ncargo)values('Recepcionista')
Insert into Cargo(ncargo)values('Medico')

select * from Cargo;
/*Veterinario*/

Insert into Veterinario(Nombre,Apellido,idCargo)Values('Juan','Martinez',1)
Insert into Veterinario(Nombre,Apellido,idCargo)Values('Miguel','Rodriguez',2)
Insert into Veterinario(Nombre,Apellido,idCargo)Values('Ricardo','Lopez',3)
Insert into Veterinario(Nombre,Apellido,idCargo)Values('Samuel','Hernandez',4)

select * from Veterinario;


/*Mascotas*/
Insert Into TipoMascota(tipoMascotaN) values ('Perro')
Insert Into TipoMascota(tipoMascotaN) values ('Gato')
Insert Into TipoMascota(tipoMascotaN) values ('Hamster')
select *from TipoMascota

Insert Into Raza(razaN)Values ('Pastor aleman')
Insert Into Raza(razaN)Values ('Doverman')
Insert Into Raza(razaN)Values ('Pitbull')
Insert Into Raza(razaN)Values ('Pastor aleman')
Insert Into Raza(razaN)Values ('Angora')
Insert Into Raza(razaN)Values ('Angora')
Insert Into Raza(razaN)Values ('Hamster')
Insert Into Raza(razaN)Values ('Hamster')
Insert Into Raza(razaN)Values ('Pitbull')
Insert Into Raza(razaN)Values ('Pitbull')



Insert into Mascota(nombre,tmId,razaId,Observacion) values ('firulais',1,1,'Rabia')
Insert into Mascota(nombre,tmId,razaId,Observacion) values ('Rufo',1,2,'Rabia')
Insert into Mascota(nombre,tmId,razaId,Observacion) values ('Canelo',1,2,'Rabia')
Insert into Mascota(nombre,tmId,razaId,Observacion) values ('Rambo',1,3,'Rabia')
Insert into Mascota(nombre,tmId,razaId,Observacion) values ('firulais',1,2,'Rabia')
Insert into Mascota(nombre,tmId,razaId,Observacion) values ('Fufito',1,1,'Rabia')
Insert into Mascota(nombre,tmId,razaId,Observacion) values ('Max',1,2,'Rabia')
Insert into Mascota(nombre,tmId,razaId,Observacion) values ('Zeus',1,2,'Rabia')
Insert into Mascota(nombre,tmId,razaId,Observacion) values ('Roky',1,2,'Rabia')
Insert into Mascota(nombre,tmId,razaId,Observacion) values ('Titan',1,1,'Rabia')

select * from Mascota

Insert Into Ingreso(Motivo,Fecha,Observaciones) Values ('Rabia','22/03/21','Rabioso')
Insert Into Ingreso(Motivo,Fecha,Observaciones) Values ('Dolor de estomago','21/03/21','No come')
Insert Into Ingreso(Motivo,Fecha,Observaciones) Values ('No escucha','20/03/21','Sordera')
Insert Into Ingreso(Motivo,Fecha,Observaciones) Values ('Rabia','19/03/21','Rabioso')
Insert Into Ingreso(Motivo,Fecha,Observaciones) Values ('Fractura','14/03/21','Golpes')
Insert Into Ingreso(Motivo,Fecha,Observaciones) Values ('Dolor de estomago','17/03/21','No come')
Insert Into Ingreso(Motivo,Fecha,Observaciones) Values ('Rabia','15/03/21','Rabioso')
Insert Into Ingreso(Motivo,Fecha,Observaciones) Values ('Dormilon','11/03/21','Falta de actividad')
Insert Into Ingreso(Motivo,Fecha,Observaciones) Values ('Dolor de estomago','15/03/21','No come')
Insert Into Ingreso(Motivo,Fecha,Observaciones) Values ('Rabia','15/03/21','Rabioso')
Insert Into Ingreso(Motivo,Fecha,Observaciones) Values ('Dolor de estomago','15/03/21','No come')
Insert Into Ingreso(Motivo,Fecha,Observaciones) Values ('Rabia','13/03/21','Rabioso')
Insert Into Ingreso(Motivo,Fecha,Observaciones) Values ('Decaido','10/03/21','Triste')
Insert Into Ingreso(Motivo,Fecha,Observaciones) Values ('Dermatitis','11/03/21','Problema en la piel')

select * from Ingreso
