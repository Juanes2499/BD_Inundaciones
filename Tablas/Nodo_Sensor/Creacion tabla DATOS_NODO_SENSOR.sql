/*
    Autor:          Juan Esteban Nichoy Larrañaga
    Fecha:          16/12/2020
    Ejecutar en:    BD_Proyecto_Grado
    Descripción:    Crear tabla DATOS_NODO_SENSOR.
*/

CREATE TABLE IF NOT EXISTS `DATOS_NODO_SENSOR` (
	`ID_DATO` int(11) NOT NULL AUTO_INCREMENT,
	`ID_NODO_SENSOR` int not null, 
	`ID_VARIABLE` int not null,
	`VALOR_MEDIDO` varchar(10) not null,
	`FECHA_CREACION` date NOT NULL,
	`HORA_CREACION` time NOT NULL,
	primary key (ID_DATO),
	FOREIGN key (ID_NODO_SENSOR) REFERENCES NODO_SENSOR(ID_NODO_SENSOR),
  	FOREIGN key (ID_VARIABLE) REFERENCES VARIABLES_NODO_SENSOR(ID_VARIABLE)
);