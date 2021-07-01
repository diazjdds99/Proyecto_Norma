drop database BDProyecto;
create database BDProyecto;
Use BdProyecto;

create table Cliente(
idCliente Int Primary key auto_increment,
nombreCliente Varchar (50) not null,
telefono Varchar (20) not null,
cedulaCliente int not null,
email Varchar (50) not null,
celular int not null,
feLlegada Date not null,
feSalida Date not null
);

create table comEquipo(
marca Varchar(30) primary key,
modelo Varchar(30) not null,
tipo Varchar(30) not null,
nombreComponente Varchar(40) not null, 
marcaComponente Varchar(40) not null,
serialComponente Varchar(20) not null,
capacidadComponente Varchar(10) not null,
estadoComponente Varchar(8) not null,
idClientesFk int 
);

create table informeSoftware(
versionSoftware int primary key,
tipoSoftware Varchar (30)not null,
nombreSoftware Varchar(30) not null,
estadoSoftware Varchar (8) not null,
caracteristicaSoftware Varchar(100) not null,
feIntalacion date not null,
nolicenciado_Licenciado Varchar(10) not null,
feLincencia date not null,
Observaciones Varchar(100) not null,
feCaducidad date not null,
redConexion Varchar(20) not null
);

create table Tecnico(
idTecnico int primary key auto_increment,
nombreTecnico Varchar(30) not null,
celular int not null,
cedulaTecnico int not null,
emailTecnico varchar(50) not null,
marcaFK Varchar(30),
versionSoftwareFK int
);

create table incidencias(
numTicket int primary key auto_increment,
estado Varchar(8) not null,
prioridad Varchar(20) not null,
descripcion varchar(50) not null,
abiertoDia date not null,
informadoPor Varchar (40) not null,
asignadoA Varchar (40) not null,
feResolucion date not null,
cantidadDiasAbi Varchar(15) not null,
ComentariosA Varchar(100) not null
);

create table usuario(
idUsuario int primary key auto_increment,
tipoUsuario varchar(30) not null,
nicknameUsuario Varchar(30) not null,
contraseñaUsuario Varchar(30) not null
);


create table Equipo(
idEquipo int primary key auto_increment,
Tipoequipo varchar(30) not null,
nombreLectorFK Varchar(30),
nombreCompresorFK Varchar(30),
nombreAntivirusFK Varchar(30),
nombreSoftwareFk Varchar (30), 
tipoCableFK varchar(20),
marcaCamaraFK Varchar(30),
tipoSistemaFK varchar(30),
tipoControlador Varchar(30) not null,
tipoParticionesFk Varchar(30),
tipoMicrosoftFK Varchar(30),
nombreNavegadorFK Varchar(30),
seriePuertosFK Varchar(20),
marcaMonitorFK Varchar(30),
tipoTarjetaFK Varchar(30),
tamañoTarjetavideoFk int,
marcaTarjetasonidoFK varchar(30),
marcaTecladoFK Varchar(30),
marcaMouseFK Varchar(30),
idTipocomputadorFK int,
marcaProcesadorFK Varchar(30),
marcaRamFK Varchar(30),
marcaDiscoFK Varchar(30),
marcaUnidadFK Varchar(30),
idTecnicoFk int,
idUsuarioFK int,
numTicketFk int,
tipoLector Varchar(30) Not null,
marcaBoardFk Varchar(30),
marcaAlimentacionFk Varchar(30)
);

create table Tipo_computador(
idTipocomputador int primary key auto_increment,
marcaTipocomputador Varchar(30)null,
numSerie Varchar(30) not null
);

create table Sistema_Operativo(
tipoSistema Varchar(30) primary key,
servicePack varchar(30) not null,
arquitecturaSistema Varchar(10) not null
);

create table Otro_Software(
nombreSoftware varchar(30) primary key,
versionSofware varchar(20) not null
);

create table Particiones_Disco(
tipoParticiones Varchar(30)primary key,
cantidadParticiones Varchar(10) not null
);

create table Navegador(
nombreNavegador Varchar(30) primary key,
versionNavegador Varchar(30) not null
);

create table Lector_PDF(
nombreLector Varchar(30) primary key,
versionCompresor Varchar(30)not null
);

create table Compresor_Archivos(
nombrecompresor Varchar(30)primary key,
versionCompresor Varchar(15) not null
);

create table Microsoft_Office(
tipoMicrosoft Varchar(30) primary key,
VersionMicrosoft Varchar(30)not null,
licenciaMicrosoft Varchar(20) not null
);

Create table Antivirus(
nombreAntivirus Varchar(30) primary key,
versionAntivirus Varchar(30) not null
);

create table Puertos(
seriePuertos Varchar(10)primary key,
paralelo varchar(10) not null,
usb Varchar(10) not null
);

create table Cables(
tipoCable Varchar(30) primary key,
VGA Varchar(10) not null
);

create table Tarjeta_Video(
tamañoTarjetavideo int primary key,
integradaVideo Varchar(30) not null
);

create table Tarjeta_Sonido(
marcaTarjetasonido Varchar(30) primary key,
integrada Varchar(30) not null
);

create table Tarjeta_Red(
tipoTarjeta Varchar(30) primary key,
marcaTarjetared Varchar(30) not null,
direccionRed Varchar(30) not null
);

create table Mouse(
marcaMouse Varchar(30) primary key,
serialMouse Varchar(20) not null,
estadoMouse Varchar(10) not null
);

create table Disco_Duro(
marcaDisco Varchar(30)primary key,
serialDisco Varchar(20) not null,
tipoDisco Varchar(30) not null
);

create table Teclado( 
marcaTeclado Varchar(30) primary key,
estadoTeclado Varchar(10)not null
);

create table Memoria_Ram(
marcaRam Varchar(30) primary key,
tipoRam Varchar(10) not null,
velocidadRam Varchar(15) not null
);

create table Monitor(
marcaMonitor Varchar(30) primary key,
serialMonitor Varchar(20) not null
);

create table Procesador(
marcaProcesador Varchar(30)primary key,
nomenclaturaProcesador Varchar(30) not null,
velocidad Varchar(15) not null,
numNucleos Varchar(20)not null
);

create table Unidad_CD_DVD(
marcaUnidad Varchar(30) primary key,
modeloUnidad Varchar(20)not null,
tipoUnidad Varchar(30)not null
);

create table Alimentacion(
marcaAlimentacion Varchar(30)primary key,
tipoFuente Varchar(30)not null,
referenciaAlimentacion Varchar(30)not null
);

create table Camara(
marcaCamara Varchar(30)primary key,
integradaCamara Varchar(10) not null
);

create table Board(
marcaBoard Varchar(30)primary key,
referenciaBoard Varchar(30)not null,
tipoBoard Varchar(30) not null
);

Alter table Equipo
add constraint Fk_equipo_lector
Foreign key (nombreLectorFK)
References Lector_PDF(nombreLector);

Alter table Equipo
add constraint Fk_equipo_compresor
Foreign key (nombreCompresorFK)
References Compresor_Archivos(nombreCompresor);

Alter table Equipo
add constraint Fk_equipo_antivirus
Foreign key (nombreAntivirusFK)
References Antivirus(nombreAntivirus);

Alter table Equipo
add constraint Fk_equipo_Osoftware
Foreign key (nombreSoftwareFK)
References Otro_Software(nombreSoftware);

Alter table Equipo
add constraint Fk_equipo_Fuente
Foreign key (marcaAlimentacionFK)
References Alimentacion(marcaAlimentacion);

Alter table Equipo
add constraint Fk_equipo_cable
Foreign key (tipoCableFK)
References Cables(tipoCable);

Alter table Equipo
add constraint Fk_equipo_camara
Foreign key (marcaCamaraFK)
References Camara(marcaCamara);

Alter table Equipo
add constraint Fk_equipo_sistemaO
Foreign key (tipoSistemaFK)
References Sistema_Operativo(tipoSistema);

Alter table Equipo
add constraint Fk_equipo_particiones
Foreign key (tipoParticionesFK)
References Particiones_Disco(tipoParticiones);

Alter table Equipo
add constraint Fk_equipo_office
Foreign key (tipoMicrosoftFK)
References Microsoft_Office(tipoMicrosoft);


Alter table Equipo
add constraint Fk_equipo_navegador
Foreign key (nombreNavegadorFK)
References Navegador(nombreNavegador);

Alter table Equipo
add constraint Fk_equipo_puertos
Foreign key (seriePuertosFK)
References Puertos(seriePuertos);

Alter table Equipo
add constraint Fk_equipo_monitor
Foreign key (marcaMonitorFK)
References Monitor(marcaMonitor);

Alter table Equipo
add constraint Fk_equipo_tarjetaR
Foreign key (tipoTarjetaFK)
References Tarjeta_Red(tipoTarjeta);

Alter table Equipo
add constraint Fk_equipo_tarjetaV
Foreign key (tamañoTarjetavideoFK)
References Tarjeta_Video(tamañoTarjetavideo);

Alter table Equipo
add constraint Fk_equipo_tarjetaS
Foreign key (marcaTarjetasonidoFK)
References Tarjeta_Sonido(marcaTarjetasonido);


Alter table Equipo
add constraint Fk_equipo_teclado
Foreign key (marcaTecladoFK)
References Teclado(marcaTeclado);


Alter table Equipo
add constraint Fk_equipo_Mouse
Foreign key (marcaMouseFK)
References Mouse(marcaMouse);


Alter table Equipo
add constraint Fk_equipo_tipoC
Foreign key (idTipocomputadorFK)
References Tipo_computador(idTipocomputador);

Alter table Equipo
add constraint Fk_equipo_procesador
Foreign key (marcaProcesadorFK)
References Procesador(marcaProcesador);

Alter table Equipo
add constraint Fk_equipo_Ram
Foreign key (marcaRamFK)
References Memoria_Ram(marcaRam);

Alter table Equipo
add constraint Fk_equipo_Disco
Foreign key (marcaDiscoFK)
References Disco_Duro(marcaDisco);

Alter table Equipo
add constraint Fk_equipo_Unidad
Foreign key (marcaUnidadFK)
References Unidad_CD_DVD(marcaUnidad);

Alter table Equipo
add constraint Fk_equipo_Tecnico
Foreign key (idTecnicoFK)
References Tecnico(idTecnico);

Alter table Equipo
add constraint Fk_equipo_Usuario
Foreign key (idUsuarioFK)
References Usuario(idUsuario);

Alter table Equipo
add constraint Fk_equipo_incidencias
Foreign key (numTicketFK)
References incidencias(numTicket);

Alter table Equipo
add constraint Fk_equipo_Board
Foreign key (marcaBoardFK)
References Board(marcaBoard);

Alter table Equipo
add constraint Fk_equipo_Alimentacion
Foreign key (marcaAlimentacionFK)
References Alimentacion(marcaAlimentacion);

Alter table comEquipo
add constraint Fk_comEquipo_Cliente
Foreign key (idClientesFK)
References Cliente(idCliente);

Alter table Tecnico
add constraint Fk_comEquipo_ISoftware
Foreign key (versionSoftwareFK)
References informeSoftware(versionSoftware);





