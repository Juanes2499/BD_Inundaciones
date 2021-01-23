/*
    Autor:          Juan Esteban Nichoy Larrañaga
    Fecha:          20/01/2021
    Ejecutar en:    BD_Proyecto_Grado
    Descripción:    Crear tabla REPORTE_LOG_EJECUCION para reportar los errores de los diferentes endpoints.
*/

CREATE TABLE IF NOT EXISTS `REPORTE_LOG_EJECUCION` (
  	`ID_REPORTE` varchar(100) NOT NULL,
	`CODIGO_ERROR` varchar(100) NOT NULL,
    `URL_ENDPOINT` longtext  NOT NULL,
	`MODULO` longtext  NOT NULL,
	`ENDPOINT` varchar(100) NOT NULL,  
	`METODO_PRIMARIO` varchar(100) NOT NULL,
	`METODO_SECUNDARIO` varchar(100) NOT NULL,
	`MENSAJE_RETORNADO` longtext NOT NULL,
	`FECHA_CREACION` date NOT NULL,
	`HORA_CREACION` time NOT NULL,
	primary key (ID_REPORTE, CODIGO_ERROR),
    FOREIGN key (CODIGO_ERROR) REFERENCES ERRORES_LOG_EJECUCION(CODIGO_ERROR) ON UPDATE CASCADE
);

