/*
    Autor:          Juan Esteban Nichoy Larrañaga
    Fecha:          16/12/2020
    Ejecutar en:    BD_Proyecto_Grado
    Descripción:    Crear tabla NODO_SENSOR.
*/

CREATE TABLE IF NOT EXISTS `NODO_SENSOR` (
	`ID_REGISTRO` int(10) NOT NULL AUTO_INCREMENT,
  	`ID_NODO_SENSOR` varchar(100) NOT NULL,
	`TOKEN` longtext NOT NULL,
	`LATITUD` double NOT NULL,
	`LONGITUD` double NOT NULL,
	`ESTADO` bool NOT NULL,
	`FECHA_CREACION` date NOT NULL,
	`HORA_CREACION` time NOT NULL,
	`FECHA_ACTUALIZACION` date default null,
	`HORA_ACTUALIZACION` time default null, 
	primary key (ID_REGISTRO, ID_NODO_SENSOR)
);
