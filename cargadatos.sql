--GIMNASIO--
INSERT INTO `gimnasio` (`Direccion`, `Nombre`) VALUES ('Calle Herradores 28', 'StayFit');
INSERT INTO `gimnasio` (`Direccion`, `Nombre`) VALUES ('Avenida Trinidad 12', 'ULLGym');
INSERT INTO `gimnasio` (`Direccion`, `Nombre`) VALUES ('Carretera General 71', 'Macrofit');
INSERT INTO `gimnasio` (`Direccion`, `Nombre`) VALUES ('Calle Castillo 07', 'SportCenter');
INSERT INTO `gimnasio` (`Direccion`, `Nombre`) VALUES ('Avenida Anaga 34', 'MoveOn');
--SALA--
INSERT INTO `sala` (`Numero`, `Capacidad`, `Gimnasio_Nombre`) VALUES ('1', '30', 'Macrofit');
INSERT INTO `sala` (`Numero`, `Capacidad`, `Gimnasio_Nombre`) VALUES ('2', '15', 'Macrofit');
INSERT INTO `sala` (`Numero`, `Capacidad`, `Gimnasio_Nombre`) VALUES ('3', '24', 'Macrofit');
INSERT INTO `sala` (`Numero`, `Capacidad`, `Gimnasio_Nombre`) VALUES ('4', '50', 'Macrofit');
INSERT INTO `sala` (`Numero`, `Capacidad`, `Gimnasio_Nombre`) VALUES ('5', '34', 'Macrofit');

INSERT INTO `sala` (`Numero`, `Capacidad`, `Gimnasio_Nombre`) VALUES ('1', '60', 'MoveOn');
INSERT INTO `sala` (`Numero`, `Capacidad`, `Gimnasio_Nombre`) VALUES ('2', '48', 'MoveOn');
INSERT INTO `sala` (`Numero`, `Capacidad`, `Gimnasio_Nombre`) VALUES ('3', '10', 'MoveOn');
INSERT INTO `sala` (`Numero`, `Capacidad`, `Gimnasio_Nombre`) VALUES ('4', '54', 'MoveOn');
INSERT INTO `sala` (`Numero`, `Capacidad`, `Gimnasio_Nombre`) VALUES ('5', '68', 'MoveOn');
INSERT INTO `sala` (`Numero`, `Capacidad`, `Gimnasio_Nombre`) VALUES ('6', '12', 'MoveOn');
INSERT INTO `sala` (`Numero`, `Capacidad`, `Gimnasio_Nombre`) VALUES ('7', '15', 'MoveOn');

INSERT INTO `sala` (`Numero`, `Capacidad`, `Gimnasio_Nombre`) VALUES ('1', '25', 'SportCenter');
INSERT INTO `sala` (`Numero`, `Capacidad`, `Gimnasio_Nombre`) VALUES ('2', '34', 'SportCenter');
INSERT INTO `sala` (`Numero`, `Capacidad`, `Gimnasio_Nombre`) VALUES ('3', '8', 'SportCenter');

INSERT INTO `sala` (`Numero`, `Capacidad`, `Gimnasio_Nombre`) VALUES ('1', '45', 'StayFit');
INSERT INTO `sala` (`Numero`, `Capacidad`, `Gimnasio_Nombre`) VALUES ('2', '10', 'StayFit');
INSERT INTO `sala` (`Numero`, `Capacidad`, `Gimnasio_Nombre`) VALUES ('3', '46', 'StayFit');
INSERT INTO `sala` (`Numero`, `Capacidad`, `Gimnasio_Nombre`) VALUES ('4', '30', 'StayFit');
INSERT INTO `sala` (`Numero`, `Capacidad`, `Gimnasio_Nombre`) VALUES ('5', '12', 'StayFit');

INSERT INTO `sala` (`Numero`, `Capacidad`, `Gimnasio_Nombre`) VALUES ('1', '70', 'ULLGym');
INSERT INTO `sala` (`Numero`, `Capacidad`, `Gimnasio_Nombre`) VALUES ('2', '50', 'ULLGym');

--ACTIVIDAD--

INSERT INTO `actividad` (`Nombre`, `Precio`, `Horario`, `Sala_Numero`, `Sala_Gimnasio_Nombre`) VALUES ('Crossfit', '15', 'X 09:00-10:00', '1', 'ULLGym');
INSERT INTO `actividad` (`Nombre`, `Precio`, `Horario`, `Sala_Numero`, `Sala_Gimnasio_Nombre`) VALUES ('AnimalFlow', '10', 'M y J 19:00-20:00', '2', 'ULLGym');

INSERT INTO `actividad` (`Nombre`, `Precio`, `Horario`, `Sala_Numero`, `Sala_Gimnasio_Nombre`) VALUES ('Spinning', '9', 'L y X 11:00-12:00', '3', 'StayFit');
INSERT INTO `actividad` (`Nombre`, `Precio`, `Horario`, `Sala_Numero`, `Sala_Gimnasio_Nombre`) VALUES ('TRX', '13', 'V 16:00-17:30', '1', 'StayFit');

INSERT INTO `actividad` (`Nombre`, `Precio`, `Horario`, `Sala_Numero`, `Sala_Gimnasio_Nombre`) VALUES ('BodyBuilding', '12', 'M y X 09:00-10:45', '6', 'MoveOn');

INSERT INTO `actividad` (`Nombre`, `Precio`, `Horario`, `Sala_Numero`, `Sala_Gimnasio_Nombre`) VALUES ('Crossfit', '20', 'M y J 08:00-09:00', '5', 'Macrofit');
INSERT INTO `actividad` (`Nombre`, `Precio`, `Horario`, `Sala_Numero`, `Sala_Gimnasio_Nombre`) VALUES ('TRX', '20', 'M y X 18:00-19:00', '4', 'Macrofit');
INSERT INTO `actividad` (`Nombre`, `Precio`, `Horario`, `Sala_Numero`, `Sala_Gimnasio_Nombre`) VALUES ('Spinning', '20', 'M y X 10:00-12:00', '3', 'Macrofit');

INSERT INTO `actividad` (`Nombre`, `Precio`, `Horario`, `Sala_Numero`, `Sala_Gimnasio_Nombre`) VALUES ('Weight', '22', 'L y X 13:00-14:00', '1', 'SportCenter');
INSERT INTO `actividad` (`Nombre`, `Precio`, `Horario`, `Sala_Numero`, `Sala_Gimnasio_Nombre`) VALUES ('Crossfit', '16', 'X y V 13:45-15:00', '2', 'SportCenter');

--MATERIAL--
INSERT INTO `material` (`Nombre`, `Numero`, `Cantidad`, `Sala_Numero`, `Sala_Gimnasio_Nombre`, `Actividad_Nombre`) VALUES ('Pesas', '1', '10', '1', 'ULLGym', 'Crossfit');
INSERT INTO `material` (`Nombre`, `Numero`, `Cantidad`, `Sala_Numero`, `Sala_Gimnasio_Nombre`, `Actividad_Nombre`) VALUES ('Discos', '1', '13', '1', 'StayFit', 'TRX');
INSERT INTO `material` (`Nombre`, `Numero`, `Cantidad`, `Sala_Numero`, `Sala_Gimnasio_Nombre`, `Actividad_Nombre`) VALUES ('FitBall', '2', '2', '6', 'MoveOn', 'BodyBuilding');
INSERT INTO `material` (`Nombre`, `Numero`, `Cantidad`, `Sala_Numero`, `Sala_Gimnasio_Nombre`, `Actividad_Nombre`) VALUES ('Cuerdas', '3', '14', '5', 'Macrofit', 'Crossfit');
INSERT INTO `material` (`Nombre`, `Numero`, `Cantidad`, `Sala_Numero`, `Sala_Gimnasio_Nombre`, `Actividad_Nombre`) VALUES ('Elasticos', '2', '8', '1', 'SportCenter', 'Weight');


--AVERÍAS--
INSERT INTO `averia` (`Numero`, `Descrpcion`, `Material_Numero`, `Material_Sala_Numero`, `Material_Sala_Gimnasio_Nombre`) VALUES ('1', 'Se ha roto al caerse', '1', '1', 'ULLGym');
INSERT INTO `averia` (`Numero`, `Descrpcion`, `Material_Numero`, `Material_Sala_Numero`, `Material_Sala_Gimnasio_Nombre`) VALUES ('2', 'Se ha desgarrado al golpearse con el suelo', '3', '5', 'Macrofit');

--Personas--
INSERT INTO `persona` (`DNI`, `Nombre`, `Apellidos`, `Fecha_Nacimiento`, `Direccion`) VALUES ('54738218J', 'Diego', 'Rodriguez Perez', '2000-07-28', 'Calle Doctor Zamenhoff 28');
INSERT INTO `persona` (`DNI`, `Nombre`, `Apellidos`, `Fecha_Nacimiento`, `Direccion`) VALUES ('52938218Z', 'Juan', 'Gil Garcia', '1987-09-18', 'Calle Viana 14');
INSERT INTO `persona` (`DNI`, `Nombre`, `Apellidos`, `Fecha_Nacimiento`, `Direccion`) VALUES ('59738132G', 'Pedro', 'Perez Leon', '1987-06-10', 'Avenida Trinidad 15');
INSERT INTO `persona` (`DNI`, `Nombre`, `Apellidos`, `Fecha_Nacimiento`, `Direccion`) VALUES ('63829001H', 'Hugo', 'De Leon Perez', '2001-11-27', 'Calle Cristina 64');
INSERT INTO `persona` (`DNI`, `Nombre`, `Apellidos`, `Fecha_Nacimiento`, `Direccion`) VALUES ('58181018L', 'Maria', 'Castillo Afonso', '1964-10-11', 'Calle Herradores 12');
INSERT INTO `persona` (`DNI`, `Nombre`, `Apellidos`, `Fecha_Nacimiento`, `Direccion`) VALUES ('64150981K', 'Lucia', 'Paz Gonzalez', '1995-02-09', 'Avenida Anaga 54');
INSERT INTO `persona` (`DNI`, `Nombre`, `Apellidos`, `Fecha_Nacimiento`, `Direccion`) VALUES ('54839202P', 'Leo', 'Rodriguez Ruiz', '1976-06-30', 'Calle Pedro Zurita 44');
INSERT INTO `persona` (`DNI`, `Nombre`, `Apellidos`, `Fecha_Nacimiento`, `Direccion`) VALUES ('52780194D', 'Miriam', 'Lopez Nadal', '2000-01-29', 'Calle Alberto Aguilera 02');
INSERT INTO `persona` (`DNI`, `Nombre`, `Apellidos`, `Fecha_Nacimiento`, `Direccion`) VALUES ('53910218J', 'Sergio', 'Pitti de Armas', '2000-08-08', 'Calle Carrera 10');
INSERT INTO `persona` (`DNI`, `Nombre`, `Apellidos`, `Fecha_Nacimiento`, `Direccion`) VALUES ('47282198I', 'Teresa', 'Bonet Costa', '1999-10-23', 'Calle Antonio Gonzalez 19');

--Clientes--
INSERT INTO `cliente` (`FechaInscripcion`, `FechaBaja`, `Persona_DNI`) VALUES ('2022-02-01', '2012-02-08', '47282198I'), ('2011-02-03', '2012-02-08', '47282198I');
INSERT INTO `cliente` (`FechaInscripcion`, `FechaBaja`, `Persona_DNI`) VALUES ('2022-02-01', '2012-02-08', '47282198I'), ('2021-07-13', '2022-07-05', '52780194D');
INSERT INTO `cliente` (`FechaInscripcion`, `FechaBaja`, `Persona_DNI`) VALUES ('2022-01-18', NULL, '52938218Z');
INSERT INTO `cliente` (`FechaInscripcion`, `FechaBaja`, `Persona_DNI`) VALUES ('2018-06-16', NULL, '59738132G');
INSERT INTO `cliente` (`FechaInscripcion`, `FechaBaja`, `Persona_DNI`) VALUES ('2019-02-19', NULL, '63829001H');
INSERT INTO `cliente` (`FechaInscripcion`, `FechaBaja`, `Persona_DNI`) VALUES ('2016-07-12', NULL, '58181018L');

--STAFF--
INSERT INTO `staff` (`Salario`, `Persona_DNI`) VALUES ('2000', '53910218J');
INSERT INTO `staff` (`Salario`, `Persona_DNI`) VALUES ('1800', '54738218J');
INSERT INTO `staff` (`Salario`, `Persona_DNI`) VALUES ('1500', '64150981K');
INSERT INTO `staff` (`Salario`, `Persona_DNI`) VALUES ('2100', '54839202P');

--PERSONAL--
INSERT INTO `personal` (`Puesto`, `Staff_Persona_DNI`) VALUES ('Administrativo', '53910218J');
INSERT INTO `personal` (`Puesto`, `Staff_Persona_DNI`) VALUES ('Director', '54738218J');

--MONITOR--
INSERT INTO `monitor` (`Especialidad`, `Staff_Persona_DNI`, `Actividad_Nombre`, `Actividad_Sala_Numero`, `Actividad_Sala_Gimnasio_Nombre`) VALUES ('Nutricion', '54839202P', 'Crossfit', '1', 'ULLGym');
INSERT INTO `monitor` (`Especialidad`, `Staff_Persona_DNI`, `Actividad_Nombre`, `Actividad_Sala_Numero`, `Actividad_Sala_Gimnasio_Nombre`) VALUES ('Prep_Fisico', '64150981K', 'TRX', '4', 'Macrofit');

--TORNEO--
INSERT INTO `torneo` (`Nombre`, `Ganador`, `Staff_Persona_DNI`) VALUES ('TorneoPesas', 'Hugo', '54839202P');
INSERT INTO `torneo` (`Nombre`, `Ganador`, `Staff_Persona_DNI`) VALUES ('TorneoCrossfit', 'Pedro', '53910218J');

--TORNEO_HAS_PERSONA--
INSERT INTO `torneo_has_persona` (`Torneo_Nombre`, `Persona_DNI`) VALUES ('TorneoPesas', '63829001H');
INSERT INTO `torneo_has_persona` (`Torneo_Nombre`, `Persona_DNI`) VALUES ('TorneoPesas', '52938218Z');

INSERT INTO `torneo_has_persona` (`Torneo_Nombre`, `Persona_DNI`) VALUES ('TorneoCrossfit', '58181018L');
INSERT INTO `torneo_has_persona` (`Torneo_Nombre`, `Persona_DNI`) VALUES ('TorneoCrossfit', '59738132G');

--ACTIVIDAD_HAS_CLIENTE--
INSERT INTO `actividad_has_cliente` (`Actividad_Nombre`, `Actividad_Sala_Numero`, `Actividad_Sala_Gimnasio_Nombre`, `Cliente_Persona_DNI`) VALUES ('TRX', '4', 'Macrofit', '63829001H');
INSERT INTO `actividad_has_cliente` (`Actividad_Nombre`, `Actividad_Sala_Numero`, `Actividad_Sala_Gimnasio_Nombre`, `Cliente_Persona_DNI`) VALUES ('TRX', '4', 'Macrofit', '59738132G');

INSERT INTO `actividad_has_cliente` (`Actividad_Nombre`, `Actividad_Sala_Numero`, `Actividad_Sala_Gimnasio_Nombre`, `Cliente_Persona_DNI`) VALUES ('Crossfit', '2', 'SportCenter', '58181018L');
INSERT INTO `actividad_has_cliente` (`Actividad_Nombre`, `Actividad_Sala_Numero`, `Actividad_Sala_Gimnasio_Nombre`, `Cliente_Persona_DNI`) VALUES ('Crossfit', '2', 'SportCenter', '52938218Z');


--ACTIVIDAD_HAS_MONITOR--
INSERT INTO `actividad_has_monitor` (`Actividad_Nombre`, `Actividad_Sala_Numero`, `Actividad_Sala_Gimnasio_Nombre`, `Monitor_Staff_Persona_DNI`) VALUES ('Crossfit', '2', 'SportCenter', '54839202P');
INSERT INTO `actividad_has_monitor` (`Actividad_Nombre`, `Actividad_Sala_Numero`, `Actividad_Sala_Gimnasio_Nombre`, `Monitor_Staff_Persona_DNI`) VALUES ('TRX', '4', 'Macrofit', '64150981K');

SELECT * FROM 