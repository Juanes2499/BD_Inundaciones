/*
    Autor:          Juan Esteban Nichoy Larrañaga
    Fecha:          16/12/2020
    Ejecutar en:    BD_Proyecto_Grado
    Descripción:    Crear tabla CONFIGURACION_NODO_SENSOR.
*/

CREATE TABLE IF NOT EXISTS `CONFIGURACION_VARIABLES_NODO_SENSOR` (
	`ID_REGISTRO` int(10) NOT NULL AUTO_INCREMENT,
	`ID_CONFIGURACION` varchar(100) NOT NULL,
	`ID_NODO_SENSOR` varchar(100) NOT NULL,
	`ID_VARIABLE` varchar(100) NOT NULL,
	`NOMBRE_VARIABLE` varchar(300) NOT NULL,
	`FECHA_CREACION` date NOT NULL,
	`HORA_CREACION` time NOT NULL,
	primary key (ID_REGISTRO, ID_CONFIGURACION),
	FOREIGN key (ID_NODO_SENSOR) REFERENCES NODO_SENSOR(ID_NODO_SENSOR) ON UPDATE CASCADE ON DELETE CASCADE,
  	FOREIGN key (ID_VARIABLE, NOMBRE_VARIABLE) REFERENCES VARIABLES_NODO_SENSOR(ID_VARIABLE, NOMBRE_VARIABLE) ON UPDATE CASCADE ON DELETE CASCADE
);