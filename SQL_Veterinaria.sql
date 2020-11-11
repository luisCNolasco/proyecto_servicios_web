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

-- Tabla Tipo Mascota
Create table Tipo_Mascota(
	id_tipo_masc	int	primary key identity(1,1),
	nom_tipo_masc	varchar(10) not null
);
Insert into Tipo_Mascota values ("Perros");
Insert into Tipo_Mascota values ("Gatos");
Insert into Tipo_Mascota values ("Roedores");
Insert into Tipo_Mascota values ("Aves");
Insert into Tipo_Mascota values ("Peces");

-- Tabla Dueño
Create table Dueño(
	id_dueño	int		primary key identity(1,1),
	nom_dueño	varchar(50)	not null,
	tel_dueño	int
);

-- Tabla Mascota
Create table Mascota(
	id_masc			int 		primary key identity(1,1),
	id_tipo_masc		int		not null,
	id_dueño		int		not null,
	nom_masc		varchar(50) 	not null,
	edad_masc		int 		not null,
	constraint FK_TipoMascota foreign key (id_tipo_masc) references Tipo_Mascota(id_tipo_masc),
	constraint FK_Dueño foreign key (id_dueño) references Dueño(id_dueño)
);

-- Tabla Servicios
Create table Servicios(
	id_serv		int		primary key identity(1,1),
	nom_serv	varchar(75)	not null
);
Insert into Servicios values ("Consulta");
Insert into Servicios values ("Delivery");
Insert into Servicios values ("Cirugía");
