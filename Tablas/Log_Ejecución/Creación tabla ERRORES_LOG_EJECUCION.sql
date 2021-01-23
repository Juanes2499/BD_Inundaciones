/*
    Autor:          Juan Esteban Nichoy Larrañaga
    Fecha:          20/01/2021
    Ejecutar en:    BD_Proyecto_Grado
    Descripción:    Crear tabla ERRORES_LOG_EJECUCION para crear los errores de los diferentes endpoints.
*/

CREATE TABLE IF NOT EXISTS `ERRORES_LOG_EJECUCION` (
  	`ID_ERROR` varchar(100) NOT NULL,
	`CODIGO_ERROR` varchar(100) NOT NULL,
    `URL_ENDPOINT` longtext  NOT NULL,
	`MODULO` longtext  NOT NULL,
	`ENDPOINT` varchar(100) NOT NULL,  
	`METODO_PRIMARIO` varchar(100) NOT NULL,
	`METODO_SECUNDARIO` varchar(100) NOT NULL,
	`DETALLES` longtext NOT NULL,
    `MENSAJE_PANTALLA` longtext NOT NULL,
	`FECHA_CREACION` date NOT NULL,
	`HORA_CREACION` time NOT NULL,
	`FECHA_ACTUALIZACION` date default null,
	`HORA_ACTUALIZACION` time default null,
	primary key (CODIGO_ERROR)
);

