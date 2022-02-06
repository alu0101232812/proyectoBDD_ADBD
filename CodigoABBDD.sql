START TRANSACTION;

CREATE TABLE IF NOT EXISTS Gimnasio (
  Direccion VARCHAR(45) NOT NULL,
  Nombre VARCHAR(20) NOT NULL,
  PRIMARY KEY (Nombre))
;

CREATE TABLE IF NOT EXISTS Sala (
  Numero INT NOT NULL,
  Capacidad INT NOT NULL,
  Gimnasio_Nombre VARCHAR(20) NOT NULL,
  PRIMARY KEY (Numero, Gimnasio_Nombre),
  CONSTRAINT fk_Sala_Gimnasio
    FOREIGN KEY (Gimnasio_Nombre)
    REFERENCES Gimnasio (Nombre)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
;

CREATE TABLE IF NOT EXISTS Actividad (
  Nombre VARCHAR(30) NOT NULL,
  Precio FLOAT NOT NULL,
  Horario VARCHAR(20) NOT NULL,
  Sala_Numero INT NOT NULL,
  Sala_Gimnasio_Nombre VARCHAR(20) NOT NULL,
  PRIMARY KEY (Nombre, Sala_Numero, Sala_Gimnasio_Nombre),
  CONSTRAINT fk_Actividad_Sala1
    FOREIGN KEY (Sala_Numero , Sala_Gimnasio_Nombre)
    REFERENCES Sala (Numero , Gimnasio_Nombre)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
;

CREATE TABLE IF NOT EXISTS Material (
  Nombre VARCHAR(30) NOT NULL,
  Numero INT NOT NULL,
  Cantidad INT NOT NULL,
  Sala_Numero INT NOT NULL,
  Sala_Gimnasio_Nombre VARCHAR(20) NOT NULL,
  Actividad_Nombre VARCHAR(30) NOT NULL,
  PRIMARY KEY (Numero, Sala_Numero, Sala_Gimnasio_Nombre, Actividad_Nombre),
  CONSTRAINT fk_Material_Sala1
    FOREIGN KEY (Sala_Numero , Sala_Gimnasio_Nombre)
    REFERENCES Sala (Numero , Gimnasio_Nombre)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT fk_Material_Actividad1
    FOREIGN KEY (Actividad_Nombre)
    REFERENCES Actividad (Nombre)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
;

CREATE TABLE IF NOT EXISTS Averia (
  Numero INT NOT NULL,
  Descrpcion TEXT NULL,
  Material_Numero INT NOT NULL,
  Material_Sala_Numero INT NOT NULL,
  Material_Sala_Gimnasio_Nombre VARCHAR(20) NOT NULL,
  PRIMARY KEY (Numero, Material_Numero, Material_Sala_Numero, Material_Sala_Gimnasio_Nombre),
  CONSTRAINT fk_Averia_Material1
    FOREIGN KEY (Material_Numero , Material_Sala_Numero , Material_Sala_Gimnasio_Nombre)
    REFERENCES Material (Numero , Sala_Numero , Sala_Gimnasio_Nombre)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
;

CREATE TABLE IF NOT EXISTS Persona (
  DNI CHAR(9) NOT NULL,
  Nombre VARCHAR(20) NULL,
  Apellidos VARCHAR(30) NULL,
  Fecha_Nacimiento DATE NULL,
  Direccion VARCHAR(40) NULL,
  PRIMARY KEY (DNI))
;

CREATE TABLE IF NOT EXISTS Cliente (
  FechaInscripcion DATE NOT NULL,
  FechaBaja DATE NOT NULL,
  Persona_DNI CHAR(9) NOT NULL,
  PRIMARY KEY (Persona_DNI),
  CONSTRAINT fk_Cliente_Persona1
    FOREIGN KEY (Persona_DNI)
    REFERENCES Persona (DNI)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
;

CREATE TABLE IF NOT EXISTS Staff (
  Salario FLOAT NOT NULL,
  Persona_DNI CHAR(9) NOT NULL,
  PRIMARY KEY (Persona_DNI),
  CONSTRAINT fk_Staff_Persona1
    FOREIGN KEY (Persona_DNI)
    REFERENCES Persona (DNI)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
;

CREATE TABLE IF NOT EXISTS Personal (
  Puesto VARCHAR(15) NOT NULL,
  Staff_Persona_DNI CHAR(9) NOT NULL,
  PRIMARY KEY (Staff_Persona_DNI),
  CONSTRAINT fk_Personal_Staff1
    FOREIGN KEY (Staff_Persona_DNI)
    REFERENCES Staff (Persona_DNI)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
;

CREATE TABLE IF NOT EXISTS Monitor (
  Especialidad VARCHAR(15) NOT NULL,
  Staff_Persona_DNI CHAR(9) NOT NULL,
  Actividad_Nombre VARCHAR(30) NOT NULL,
  Actividad_Sala_Numero INT NOT NULL,
  Actividad_Sala_Gimnasio_Nombre VARCHAR(20) NOT NULL,
  PRIMARY KEY (Staff_Persona_DNI, Actividad_Nombre, Actividad_Sala_Numero, Actividad_Sala_Gimnasio_Nombre),
  CONSTRAINT fk_Monitor_Staff1
    FOREIGN KEY (Staff_Persona_DNI)
    REFERENCES Staff (Persona_DNI)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_Monitor_Actividad1
    FOREIGN KEY (Actividad_Nombre , Actividad_Sala_Numero , Actividad_Sala_Gimnasio_Nombre)
    REFERENCES Actividad (Nombre , Sala_Numero , Sala_Gimnasio_Nombre)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
;

CREATE TABLE IF NOT EXISTS Torneo (
  Nombre VARCHAR(20) NOT NULL,
  Ganador VARCHAR(20) NULL,
  Staff_Persona_DNI CHAR(9) NOT NULL,
  PRIMARY KEY (Nombre),
  CONSTRAINT fk_Torneo_Staff1
    FOREIGN KEY (Staff_Persona_DNI)
    REFERENCES Staff (Persona_DNI)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
;

CREATE TABLE IF NOT EXISTS Actividad_has_Cliente (
  Actividad_Nombre VARCHAR(30) NOT NULL,
  Actividad_Sala_Numero INT NOT NULL,
  Actividad_Sala_Gimnasio_Nombre VARCHAR(20) NOT NULL,
  Cliente_Persona_DNI CHAR(9) NOT NULL,
  PRIMARY KEY (Actividad_Nombre, Actividad_Sala_Numero, Actividad_Sala_Gimnasio_Nombre, Cliente_Persona_DNI),
  CONSTRAINT fk_Actividad_has_Cliente_Actividad1
    FOREIGN KEY (Actividad_Nombre , Actividad_Sala_Numero , Actividad_Sala_Gimnasio_Nombre)
    REFERENCES Actividad (Nombre , Sala_Numero , Sala_Gimnasio_Nombre)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_Actividad_has_Cliente_Cliente1
    FOREIGN KEY (Cliente_Persona_DNI)
    REFERENCES Cliente (Persona_DNI)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
;

CREATE TABLE IF NOT EXISTS Actividad_has_Monitor (
  Actividad_Nombre VARCHAR(30) NOT NULL,
  Actividad_Sala_Numero INT NOT NULL,
  Actividad_Sala_Gimnasio_Nombre VARCHAR(20) NOT NULL,
  Monitor_Staff_Persona_DNI CHAR(9) NOT NULL,
  PRIMARY KEY (Actividad_Nombre, Actividad_Sala_Numero, Actividad_Sala_Gimnasio_Nombre, Monitor_Staff_Persona_DNI),
  CONSTRAINT fk_Actividad_has_Monitor_Actividad1
    FOREIGN KEY (Actividad_Nombre , Actividad_Sala_Numero , Actividad_Sala_Gimnasio_Nombre)
    REFERENCES Actividad (Nombre , Sala_Numero , Sala_Gimnasio_Nombre)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_Actividad_has_Monitor_Monitor1
    FOREIGN KEY (Monitor_Staff_Persona_DNI)
    REFERENCES Monitor (Staff_Persona_DNI)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
;

CREATE TABLE IF NOT EXISTS Torneo_has_Persona (
  Torneo_Nombre VARCHAR(20) NOT NULL,
  Persona_DNI CHAR(9) NOT NULL,
  PRIMARY KEY (Torneo_Nombre, Persona_DNI),
  CONSTRAINT fk_Torneo_has_Persona_Torneo1
    FOREIGN KEY (Torneo_Nombre)
    REFERENCES Torneo (Nombre)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_Torneo_has_Persona_Persona1
    FOREIGN KEY (Persona_DNI)
    REFERENCES Persona (DNI)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
;

COMMIT;
