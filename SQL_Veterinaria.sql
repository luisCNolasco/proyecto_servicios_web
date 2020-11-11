Create database Veterinaria;
Use Veterinaria

Create table Rol(
	id_rol	int	primary key identity(1,1),
	nom_rol	varchar(25) not null
)

Insert into Rol values('Vetarinario');
Insert into Rol values('Secretaria');

Create table Usuario(
	id_usu	int	primary key identity(1,1),
	nom_usu	varchar(25) not null,
	pas_usu	varchar(25)	not null,
	id_rol	int not null,
	constraint UQ_NombreUsuario unique(nom_usu),
	constraint FK_RolUsuario foreign key (id_rol) references Rol(id_rol)
);

Insert into Usuario values('VET_FRANCO', '123', 1)
Insert into Usuario values('SEC_LUISA', 'copito', 2)