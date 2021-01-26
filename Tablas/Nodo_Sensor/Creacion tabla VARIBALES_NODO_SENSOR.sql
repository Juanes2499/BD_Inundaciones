/*
    Autor:          Juan Esteban Nichoy Larrañaga
    Fecha:          16/12/2020
    Ejecutar en:    BD_Proyecto_Grado
    Descripción:    Crear tabla VARIABLES_NODO_SENSOR.
*/

CREATE TABLE IF NOT EXISTS `VARIABLES_NODO_SENSOR` (
  	`ID_VARIABLE` varchar(100) NOT NULL,
	`NOMBRE_VARIABLE` varchar(300) NOT NULL,
	`DETALLES` longtext  NOT NULL,
	`TIPO_DATO` varchar(50) NOT NULL,  
	`UNIDAD_MEDIDA` varchar(10) NOT NULL,
	`RANGO_MIN` varchar(10) NOT NULL,
	`RANGO_MAX` varchar(10) NOT NULL,
	`ESTADO` bool NOT NULL,
	`FECHA_CREACION` date NOT NULL,
	`HORA_CREACION` time NOT NULL,
	`FECHA_ACTUALIZACION` date default null,
	`HORA_ACTUALIZACION` time default null,
	primary key (ID_VARIABLE, NOMBRE_VARIABLE)
);