CREATE DATABASE GEISER;
USE GEISER;
-- Creacion de tablas y sus PK

CREATE TABLE CALENDAR (
Fecha DATE NOT NULL PRIMARY KEY);

CREATE TABLE ARTICULOS (
ID_Producto INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
Detalle varchar (20),
Costo decimal (10,2));

CREATE TABLE CLIENTES (
ID_Cliente INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
Nombre varchar (20),
Apellido varchar (20),
Fecha_Nacimiento Date,
Direccion varchar (20),
Email varchar (20));

CREATE TABLE CAMP_MKT (
ID_Camp INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
Nombre_camp varchar (20),
Duracion INT,
Inversion decimal (10,2));



CREATE TABLE VENTAS (
ID_Ventas INT NOT NULL PRIMARY KEY auto_increment,
Fecha DATE,
ID_Cliente INT NOT NULL,
ID_Producto INT NOT NULL,
Forma_Pago Varchar (20),
Tipo_Venta Varchar (20),
Detalle_Envio Varchar (20),
ID_Camp INT NOT NULL,
Valor$ decimal (10,2),
constraint FK_Fechas foreign key (Fecha) references CALENDAR (Fecha) ON DELETE RESTRICT ON UPDATE CASCADE,
constraint FK_ID_Cliente foreign key (ID_Cliente) references CLIENTES (ID_Cliente) ON DELETE RESTRICT ON UPDATE CASCADE,
constraint FK_ID_Producto foreign key (ID_Producto) references ARTICULOS (ID_Producto) ON DELETE RESTRICT ON UPDATE CASCADE, 
constraint FK_ID_Camp foreign key (ID_Camp) references CAMP_MKT (ID_Camp) ON DELETE RESTRICT ON UPDATE CASCADE);


-- Insertar datos
-- Calendario
INSERT INTO CALENDAR (Fecha) values ('2023-09-08');
INSERT INTO CALENDAR (Fecha) values ('2023-06-05');
INSERT INTO CALENDAR (Fecha) values ('2023-03-23');

-- Articulos
INSERT INTO ARTICULOS (Detalle, Costo) values ('Provoletera', '3000.53');
INSERT INTO ARTICULOS (Detalle, Costo) values ('Fogonero Berlin', '89800.30');
INSERT INTO ARTICULOS (Detalle, Costo) values ('Parrilla Praga', '95300');

-- Clientes
INSERT INTO CLIENTES (Nombre, Apellido, Fecha_Nacimiento, Direccion, Email) values ('Maria', 'Garcia', '1965-05-14', 'Av.Cabildo 500', 'M.Garcia@Outlook.com');
INSERT INTO CLIENTES (Nombre, Apellido, Fecha_Nacimiento, Direccion, Email) values ('Jose', 'Perez', '1985-03-21', 'Juramento 2560', 'JPerez@Outlook.com');
INSERT INTO CLIENTES (Nombre, Apellido, Fecha_Nacimiento, Direccion, Email) values ('Malena', 'Lopes', '1990-03-03', 'Jose Cubas 2848', 'M_Lopes@Gmail.com');

-- Camp_MKT
INSERT INTO CAMP_MKT (Nombre_camp, Duracion, Inversion) values ('Parrillero del 10', '5', '50000');
INSERT INTO CAMP_MKT (Nombre_camp, Duracion, Inversion) values ('Dia del padre', '2', '25000');
INSERT INTO CAMP_MKT (Nombre_camp, Duracion, Inversion) values ('Fiesta Geiser', '3', '35000');

-- Ventas
INSERT INTO VENTAS (Fecha, ID_Cliente, ID_Producto, Forma_Pago, Tipo_Venta, Detalle_Envio, Id_Camp, Valor$) values 
('2023-09-08', 1, 1, 'Efectivo', 'Presencial', 'Retiro en tienda', 3, '6500'), 
('2023-06-05', 2, 2, 'Tarjeta', 'Digital', 'Envio a domicilio', 2, '200000'), 
('2023-03-23', 3, 2, 'Tarjeta', 'Digital', 'Envio a domicilio', 2, '200000');












