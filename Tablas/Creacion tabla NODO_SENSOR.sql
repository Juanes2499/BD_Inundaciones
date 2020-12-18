/*
    Autor:          Juan Esteban Nichoy Larrañaga
    Fecha:          16/12/2020
    Ejecutar en:    BD_Proyecto_Grado
    Descripción:    Crear tabla NODO_SENSOR.
*/

CREATE TABLE IF NOT EXISTS `NODO_SENSOR` (
  	`ID_NODO_SENSOR` int(11) NOT NULL AUTO_INCREMENT,
	`LATITUD` double NOT NULL,
	`LONGITUD` double NOT NULL,
	`ESTADO` bool NOT NULL,
	`FECHA_CREACION` date NOT NULL,
	`HORA_CREACION` time NOT NULL,
	primary key (ID_NODO_SENSOR)
);