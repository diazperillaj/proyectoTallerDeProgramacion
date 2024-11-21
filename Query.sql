CREATE DATABASE terminalTransporteDB;

use terminalTransporteDB;



SELECT * FROM terminalTransporteDB.Empresas;
SELECT * FROM terminaltransportedb.usuarios;
SELECT * FROM terminalTransporteDB.Destinos;
SELECT * FROM terminalTransporteDB.tickets;





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

DELETE FROM	 terminaltransportedb.usuarios WHERE id = 7;

INSERT INTO terminalTransporteDB.Usuarios (usuario, contra, rol) VALUES ("jdiazp","1234","Administrador");



CREATE TABLE terminalTransporteDB.Destinos (
	id INT AUTO_INCREMENT PRIMARY KEY,
    destino VARCHAR(150) NOT NULL,
    precio DOUBLE NOT NULL,
    fecha_salida DATETIME DEFAULT CURRENT_TIMESTAMP
);


INSERT INTO terminalTransporteDB.Destinos (destino, precio, fecha_salida) VALUES ("Duitama",40000,CURRENT_TIMESTAMP());
SELECT * FROM terminalTransporteDB.Destinos;


CREATE TABLE terminalTransporteDB.Tickets (
	id INT AUTO_INCREMENT PRIMARY KEY,
    id_empresas INT,
    id_usuarios INT,
    id_destino INT,
    FOREIGN KEY (id_empresas) REFERENCES empresas(id) ON DELETE SET NULL,
    FOREIGN KEY (id_usuarios) REFERENCES usuarios(id) ON DELETE SET NULL,
    FOREIGN KEY (id_destino) REFERENCES destinos(id) ON DELETE SET NULL
);
DROP TABLE terminalTransporteDB.tickets;

SHOW CREATE TABLE tickets;
ALTER TABLE tickets DROP FOREIGN KEY tickets_ibfk_1;
ALTER TABLE tickets ADD CONSTRAINT tickets_ibfk_1 FOREIGN KEY (id_empresas) REFERENCES empresas(id) ON DELETE SET NULL;


SELECT * FROM terminalTransporteDB.tickets;

INSERT INTO terminalTransporteDB.Tickets (id_empresas, id_usuarios, id_destino) VALUES (130,2,1);

USE terminalTransporteDB;

SELECT tickets.id, tickets.id_empresas, tickets.id_usuarios, tickets.id_destino, empresas.nombre, usuarios.usuario, destinos.destino, destinos.precio, destinos.fecha_salida FROM tickets
JOIN Empresas ON tickets.id_empresas = empresas.id
JOIN Usuarios ON tickets.id_usuarios = usuarios.id
JOIN Destinos ON tickets.id_destino = destinos.id;


