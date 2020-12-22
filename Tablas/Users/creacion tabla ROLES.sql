/*
    Autor:          Juan Esteban Nichoy Larrañaga
    Fecha:          21/12/2020
    Ejecutar en:    BD_Proyecto_Grado
    Descripción:    Crear tabla ROLES
*/

CREATE TABLE IF NOT EXISTS `ROLES` (
    `ID_ROL` int(11) NOT NULL AUTO_INCREMENT,
    `NOMBRE_ROL` varchar(100) NOT NULL,
    `DETALLES` varchar(1000) NOT NULL,
    `FECHA_CREACION` date NOT NULL,
    `HORA_CREACION` time NOT NULL,
    `FECHA_ACTUALIZACION` date default null,
	`HORA_ACTUALIZACION` time default null,
    PRIMARY KEY (`ID_ROL`)
);
