/*
    Autor:          Juan Esteban Nichoy Larrañaga
    Fecha:          21/12/2020
    Ejecutar en:    BD_Proyecto_Grado
    Descripción:    Crear tabla USER
*/

CREATE TABLE IF NOT EXISTS `USER` (
    `ID_USER` int(11) NOT NULL AUTO_INCREMENT,
    `NOMBRES` varchar(100) NOT NULL,
    `APELLIDOS` varchar(100) NOT NULL,
    `TIPO_DOC_ID` varchar(10) NOT NULL,
    `NUMERO_DOC_ID` varchar(50) NOT NULL,
    `EMAIL` varchar(100) NOT NULL,
    `PASSWORD` varchar(100) NOT NULL,
    `FECHA_CREACION` date NOT NULL,
    `HORA_CREACION` time NOT NULL,
    `FECHA_ACTUALIZACION` date default null,
	`HORA_ACTUALIZACION` time default null,
    PRIMARY KEY (`ID_USER`)
);