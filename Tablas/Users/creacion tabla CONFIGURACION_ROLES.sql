/*
    Autor:          Juan Esteban Nichoy Larrañaga
    Fecha:          21/12/2020
    Ejecutar en:    BD_Proyecto_Grado
    Descripción:    Crear tabla CONFIGURACION_ROLES.
*/

CREATE TABLE IF NOT EXISTS `CONFIGURACION_ROLES` (
	`ID_CONFIGURACION` int(11) NOT NULL AUTO_INCREMENT,
	`ID_USER` int not null, 
	`ID_ROL` int not null,
	`FECHA_CREACION` date NOT NULL,
	`HORA_CREACION` time NOT NULL,
	primary key (ID_CONFIGURACION),
	FOREIGN key (ID_USER) REFERENCES USER(ID_USER),
  	FOREIGN key (ID_ROL) REFERENCES ROLES(ID_ROL)
);