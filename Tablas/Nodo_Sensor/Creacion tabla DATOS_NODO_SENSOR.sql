/*
    Autor:          Juan Esteban Nichoy Larrañaga
    Fecha:          16/12/2020
    Ejecutar en:    BD_Proyecto_Grado
    Descripción:    Crear tabla DATOS_NODO_SENSOR.
*/

CREATE TABLE IF NOT EXISTS `DATOS_NODO_SENSOR` (
	`ID_REGISTRO` int(10) NOT NULL AUTO_INCREMENT,
	`ID_DATO` varchar(100) NOT NULL,
	`ID_NODO_SENSOR` varchar(100) NOT NULL,
	`ID_VARIABLE` varchar(100) NOT NULL,
	`NOMBRE_VARIABLE` varchar(300) NOT NULL,
	`VALOR_DATO` varchar(10) not null,
	`VALOR_NOTIFICADO` bool DEFAULT FALSE,
	`ID_REGLA` varchar(100) DEFAULT null,
	`EXPRESION_EVALUADA` varchar(300) DEFAULT NULL,
	`FECHA_CREACION` date NOT NULL,
	`HORA_CREACION` time NOT NULL,
	primary key (ID_REGISTRO, ID_DATO)
);
