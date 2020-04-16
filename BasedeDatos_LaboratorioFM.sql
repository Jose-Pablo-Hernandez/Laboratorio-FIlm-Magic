drop database Filmmagic;
create database FilmMagic;
use FilmMagic;

create table Empleado
(
  Codigo_Empleado int PRIMARY KEY,
  Nombre_Empleado varchar(50) not null,
  Apellido_Empleado varchar(50) not null,
  DPI_Empleado varchar(11) not null,
  Telefono_Empleado varchar(10) not null,
  Correo_Empleado varchar(80) not null
)Engine= InnoDB, default char set= latin1;

create table Cliente
(
  Codigo_Cliente int PRIMARY KEY,
  Nombre_Cliente varchar(50) not null,
  Correo_Cliente varchar(80) not null,
  Telefono_Cliente varchar(10) not null,
  Numero_Cliente varchar(50) not null,
 
  Codigo_Empleado int,
  foreign key (Codigo_Empleado) references Empleado(Codigo_Empleado)
  ON UPDATE CASCADE
  ON DELETE SET NULL
)Engine= InnoDB, default char set= latin1;

create table Autor
(
  Codigo_Autor int PRIMARY KEY,
  Nombre_Autor varchar(50) not null,
  Apellido_Autor varchar(50) not null,
   Ciudad_Autor varchar(50) not null
)Engine= InnoDB, default char set= latin1;

create table Producto
(
  Codigo_Producto int PRIMARY KEY,
  Nombre_Producto varchar(50) not null,
   Cantidad_Producto int,
     Tipo_Producto varchar(45) not null,
  Precio_Producto FLOAT not null,

  Estado_Producto varchar(10),
 
  Codigo_Autor int,
  foreign key(Codigo_Autor) references Autor(Codigo_Autor)
   ON UPDATE CASCADE
  ON DELETE SET NULL
)Engine= InnoDB, default char set= latin1;

select *from Empleado;