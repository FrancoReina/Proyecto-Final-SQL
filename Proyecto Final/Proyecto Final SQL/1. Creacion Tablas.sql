Drop schema gyg_fiacas;
CREATE schema IF NOT EXISTS GyG_Fiacas;

USE GyG_Fiacas;

-- La tabla "Usuario" muestra el listado de todos los usuarios que tiene la empresa con sus datos mas relevantes--
CREATE TABLE IF NOT EXISTS Usuario (
ID_Usuario INT PRIMARY KEY AUTO_INCREMENT,
Nombre varchar (100) NOT NULL,
Apellido varchar (100) NOT NULL,
Email varchar (100) Not Null,
Direccion varchar (250) Not Null,
Telefono varchar (30) Not Null
);

 -- La tabla "Producto" Muestra los prouductos de la compañia.--
CREATE TABLE IF NOT EXISTS Producto (
ID_Producto INT PRIMARY KEY AUTO_INCREMENT,
Nombre varchar (50) NOT NULL,
Descripcion varchar (100),
Precio INT Not Null,
Cantidad INT Not Null
);

-- La tabla "Pedido" Muestra los prouductos solicitados por el usuario.--
CREATE TABLE IF NOT EXISTS Pedido (
    ID_Pedido INT PRIMARY KEY AUTO_INCREMENT,
    ID_Usuario INT NOT NULL,
    ID_Producto INT NOT NULL,
    Total INT NOT NULL,
    Fecha DATE,
    CONSTRAINT FK_Usuario FOREIGN KEY (ID_Usuario) REFERENCES Usuario(ID_Usuario),
    CONSTRAINT FK_Producto FOREIGN KEY (ID_Producto) REFERENCES Producto(ID_Producto)
);

-- La tabla "Envio" Muestra el medio de envío que utiliza el usuario.--
CREATE TABLE IF NOT EXISTS Envio (
    ID_Envio INT PRIMARY KEY AUTO_INCREMENT,
    ID_Pedido INT NOT NULL,
    Tipo varchar (50) NOT NULL,
    Estado varchar (20) NOT NULL,
    CONSTRAINT FK_Pedido FOREIGN KEY (ID_Pedido) REFERENCES Pedido(ID_Pedido)
);

-- La tabla "Tarjeta" Muestra el tipo de tarjeta que utiliza el usuario para realizar el pago--
CREATE TABLE IF NOT exists Tarjeta (
    ID_Tarjeta INT PRIMARY KEY AUTO_INCREMENT,
    ID_Usuario INT NOT NULL,
    Tipo varchar (50) NOT NULL,
    Numero varchar (50) NOT NULL,
    Codigo_Seguridad INT,
    Fecha_Vencimiento Date,
	CONSTRAINT FK_Tarjeta_Usuario FOREIGN KEY (ID_Usuario) REFERENCES Usuario(ID_Usuario)
);