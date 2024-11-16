CREATE DATABASE terminalTransporteDB;

use terminalTransporteDB;

CREATE TABLE terminalTransporteDB.Empresas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    NIT INT NOT NULL UNIQUE,
    telefono INT,
    correo VARCHAR(100),
    webSite VARCHAR(100),
    direccion VARCHAR(150),
    postal INT
);

SELECT * FROM terminalTransporteDB.Empresas;

DELETE FROM terminaltransportedb.Empresas WHERE nombre = "1";

CREATE TABLE terminalTransporteDB.Usuarios (
	id INT AUTO_INCREMENT PRIMARY KEY,
    usuario VARCHAR(100) NOT NULL UNIQUE,
    contra VARCHAR(50) NOT NULL,
    rol VARCHAR(50) NOT NULL,
    CHECK (rol IN ('Usuario', 'Administrador', 'Pendiente'))
);

DROP TABLE terminaltransportedb.usuarios;

SELECT * FROM terminaltransportedb.usuarios WHERE usuario = 1;

SELECT * FROM terminaltransportedb.usuarios;

DELETE FROM	 terminaltransportedb.usuarios WHERE id = 1;

INSERT INTO terminalTransporteDB.Usuarios (usuario, contra, rol) VALUES ("jdiazp","1234","Administrador");
