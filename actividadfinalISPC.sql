CREATE DATABASE TP_FINALispc1

CREATE TABLE Dueno (
  DNI int NOT NULL,
  Nombre varchar(45) NOT NULL,
  Apellido varchar(45) NOT NULL,
  Telefono varchar(12) NOT NULL,
  Direccion varchar(45) NOT NULL,
  PRIMARY KEY (DNI)
  )

CREATE TABLE Perro (
  Id_Perros varchar(50) NOT NULL PRIMARY KEY,
  Nombre varchar(45) NOT NULL,
  Fecha_Nac varchar(45) NOT NULL,
  Sexo varchar(10) NOT NULL,
  DNI int NOT NULL,
  CONSTRAINT fk_cd FOREIGN KEY (DNI) REFERENCES Dueno (DNI)
) 



CREATE TABLE historial (
  Id_historial int NOT NULL PRIMARY KEY,
  Fecha varchar (10)NOT NULL,
  Id_Perros varchar(50) NOT NULL,
  Descripcion varchar(200) NOT NULL,
  Monto varchar (50) NOT NULL,

  CONSTRAINT fk_perros FOREIGN KEY (Id_Perros) REFERENCES Perro (Id_Perros)
) 
INSERT INTO Dueno 
VALUES (42416848,'Hernan','Fernandes',365415926,'av.cortes123')
INSERT INTO Perro 
VALUES (5,'toby','24/11/2016','masculino', 42416848)
INSERT INTO Historial 
VALUES (5,'13-08-2022',5,'toby',15000)

INSERT INTO Dueno 
VALUES (45678912,'julia','pas',351485612,'maria paz 156')
INSERT INTO Perro 
VALUES (10,'sofi','14/08/2020','femenino', 45678912)
INSERT INTO historial
VALUES (12,'10-02-2021',10,'sofi',20000)

UPDATE Dueno
SET Direccion = 'Libertad 123'

