/*
    Autor:          Juan Esteban Nichoy Larrañaga
    Fecha:          16/12/2020
    Ejecutar en:    BD_Proyecto_Grado
    Descripción:    Creación de la tabla reglas para asociar los nodos sensores con las variables y realizar el envio de notificaciones. 
*/

CREATE TABLE IF NOT EXISTS `REGLAS_NODO_SENSOR` (
	`ID_REGLA` varchar(100) NOT NULL,
	`ID_NODO_SENSOR` varchar(100) NOT NULL,
	`ID_VARIABLE` varchar(100) NOT NULL,
	`NOMBRE_VARIABLE` varchar(300) NOT NULL,
    `EXPRESION` varchar(1000) NOT NULL,
	`FECHA_CREACION` date NOT NULL,
	`HORA_CREACION` time NOT NULL,
    `FECHA_ACTUALIZACION` date default null,
	`HORA_ACTUALIZACION` time default null,
	primary key (ID_REGLA),
	FOREIGN key (ID_NODO_SENSOR) REFERENCES NODO_SENSOR(ID_NODO_SENSOR),
  	FOREIGN key (ID_VARIABLE, NOMBRE_VARIABLE) REFERENCES VARIABLES_NODO_SENSOR(ID_VARIABLE, NOMBRE_VARIABLE) ON UPDATE CASCADE ON DELETE CASCADE
);