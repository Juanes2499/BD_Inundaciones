/*
    Autor:          Juan Esteban Nichoy Larrañaga
    Fecha:          25/12/2020
    Ejecutar en:    BD_Proyecto_Grado
    Descripción:    Crear tabla de parámetros de configuración para la API.
*/

CREATE TABLE IF NOT EXISTS `PARAMETROS_CONFIGURACION_API` (
	`ID_PARAMETRO` int(11) NOT NULL AUTO_INCREMENT,
	`NOMBRE_PARAMETRO` varchar(150) not null, 
	`DETALLES_PARAMETRO` varchar(1000) not null,
	`VALOR_PARAMETRO` longtext NOT NULL,
	`FECHA_CREACION` date NOT NULL,
	`HORA_CREACION` time NOT NULL,
	`FECHA_ACTUALIZACION` date default null,
	`HORA_ACTUALIZACION` time default null,
	primary key (ID_PARAMETRO)
);