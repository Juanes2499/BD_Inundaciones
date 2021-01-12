/*
    Autor:          Juan Esteban Nichoy Larrañaga
    Fecha:          28/12/2020
    Ejecutar en:    BD_Proyecto_Grado
    Descripción:    Query para configurar las variables de los nodos sensores
*/

--Comprobar si el nodo sensor y la variable existe por ID
SELECT 
    (SELECT COUNT(*) FROM NODO_SENSOR WHERE ID_NODO_SENSOR = ?) NODO_SENSOR_EXIST,
    (SELECT COUNT(*) FROM VARIABLES_NODO_SENSOR WHERE ID_VARIABLE = ?) VARIABLE_EXIST
FROM DUAL

--Comprobar si la configuracion variable ya existe 
SELECT * FROM CONFIGURACION_VARIABLES_NODO_SENSOR
    WHERE ID_NODO_SENSOR = ? AND ID_VARIABLE = ?

--Crear configuración variable nodo sensor
INSERT
    INTO CONFIGURACION_VARIABLES_NODO_SENSOR
    (ID_NODO_SENSOR, ID_VARIABLE, FECHA_CREACION, HORA_CREACION)
VALUES
    (?, ?, CURDATE(), CURTIME())

--Consultar configuracion varibles nodo sensor
SELECT
	CVNS.ID_CONFIGURACION,
	NS.ID_NODO_SENSOR,
	NS.LATITUD,
	NS.LONGITUD,
	CVNS.ID_VARIABLE,
	(SELECT 
		VNS.NOMBRE_VARIABLE 
	FROM VARIABLES_NODO_SENSOR VNS  
	WHERE ID_VARIABLE = CVNS.ID_VARIABLE) NOMBRE_VARIABLE,
	(SELECT 
		VNS.DETALLES 
	FROM VARIABLES_NODO_SENSOR VNS  
	WHERE ID_VARIABLE = CVNS.ID_VARIABLE) DETALLES_VARIABLE,
	(SELECT 
		VNS.TIPO_DATO 
	FROM VARIABLES_NODO_SENSOR VNS  
	WHERE ID_VARIABLE = CVNS.ID_VARIABLE) TIPO_DATO_VARIABLE,
	(SELECT 
		VNS.UNIDAD_MEDIDA 
	FROM VARIABLES_NODO_SENSOR VNS  
	WHERE ID_VARIABLE = CVNS.ID_VARIABLE) UNIDAD_MEDIDA_VARIABLE,
	(SELECT 
		VNS.RANGO_MIN 
	FROM VARIABLES_NODO_SENSOR VNS  
	WHERE ID_VARIABLE = CVNS.ID_VARIABLE) RANGO_MIN_VARIABLE,
	(SELECT 
		VNS.RANGO_MAX 
	FROM VARIABLES_NODO_SENSOR VNS  
	WHERE ID_VARIABLE = CVNS.ID_VARIABLE) RANGO_MAX_VARIABLE,
	(SELECT 
		VNS.FECHA_CREACION 
	FROM VARIABLES_NODO_SENSOR VNS  
	WHERE ID_VARIABLE = CVNS.ID_VARIABLE) FECHA_CREACION_VARIABLE,
	(SELECT 
		VNS.HORA_CREACION 
	FROM VARIABLES_NODO_SENSOR VNS  
	WHERE ID_VARIABLE = CVNS.ID_VARIABLE) HORA_CREACION_VARIABLE,
	CVNS.FECHA_CREACION FECHA_CREACION_CONFIGURACION,
	CVNS.HORA_CREACION HORA_CREACION_CONFIGURACION
FROM NODO_SENSOR NS
INNER JOIN 
	CONFIGURACION_VARIABLES_NODO_SENSOR CVNS 
	ON NS.ID_NODO_SENSOR = CVNS.ID_NODO_SENSOR; 

--Consultar configuración por nombre variable
SELECT
	CVNS.ID_CONFIGURACION,
	NS.ID_NODO_SENSOR,
	NS.LATITUD,
	NS.LONGITUD,
	CVNS.ID_VARIABLE,
	(SELECT 
		VNS.NOMBRE_VARIABLE 
	FROM VARIABLES_NODO_SENSOR VNS  
	WHERE ID_VARIABLE = CVNS.ID_VARIABLE) NOMBRE_VARIABLE,
	(SELECT 
		VNS.DETALLES 
	FROM VARIABLES_NODO_SENSOR VNS  
	WHERE ID_VARIABLE = CVNS.ID_VARIABLE) DETALLES_VARIABLE,
	(SELECT 
		VNS.TIPO_DATO 
	FROM VARIABLES_NODO_SENSOR VNS  
	WHERE ID_VARIABLE = CVNS.ID_VARIABLE) TIPO_DATO_VARIABLE,
	(SELECT 
		VNS.UNIDAD_MEDIDA 
	FROM VARIABLES_NODO_SENSOR VNS  
	WHERE ID_VARIABLE = CVNS.ID_VARIABLE) UNIDAD_MEDIDA_VARIABLE,
	(SELECT 
		VNS.RANGO_MIN 
	FROM VARIABLES_NODO_SENSOR VNS  
	WHERE ID_VARIABLE = CVNS.ID_VARIABLE) RANGO_MIN_VARIABLE,
	(SELECT 
		VNS.RANGO_MAX 
	FROM VARIABLES_NODO_SENSOR VNS  
	WHERE ID_VARIABLE = CVNS.ID_VARIABLE) RANGO_MAX_VARIABLE,
	(SELECT 
		VNS.FECHA_CREACION 
	FROM VARIABLES_NODO_SENSOR VNS  
	WHERE ID_VARIABLE = CVNS.ID_VARIABLE) FECHA_CREACION_VARIABLE,
	(SELECT 
		VNS.HORA_CREACION 
	FROM VARIABLES_NODO_SENSOR VNS  
	WHERE ID_VARIABLE = CVNS.ID_VARIABLE) HORA_CREACION_VARIABLE,
	CVNS.FECHA_CREACION FECHA_CREACION_CONFIGURACION,
	CVNS.HORA_CREACION HORA_CREACION_CONFIGURACION
FROM NODO_SENSOR NS
INNER JOIN 
	CONFIGURACION_VARIABLES_NODO_SENSOR CVNS 
	ON NS.ID_NODO_SENSOR = CVNS.ID_NODO_SENSOR 
WHERE CVNS.ID_VARIABLE = (SELECT ID_VARIABLE FROM VARIABLES_NODO_SENSOR WHERE NOMBRE_VARIABLE = 'TEMPERATURA AGUA');

--Consultar configuración por id_configuracion o id_nodo_sensor o id_variable
SELECT
	CVNS.ID_CONFIGURACION,
	NS.ID_NODO_SENSOR,
	NS.LATITUD,
	NS.LONGITUD,
	CVNS.ID_VARIABLE,
	(SELECT 
		VNS.NOMBRE_VARIABLE 
	FROM VARIABLES_NODO_SENSOR VNS  
	WHERE ID_VARIABLE = CVNS.ID_VARIABLE) NOMBRE_VARIABLE,
	(SELECT 
		VNS.DETALLES 
	FROM VARIABLES_NODO_SENSOR VNS  
	WHERE ID_VARIABLE = CVNS.ID_VARIABLE) DETALLES_VARIABLE,
	(SELECT 
		VNS.TIPO_DATO 
	FROM VARIABLES_NODO_SENSOR VNS  
	WHERE ID_VARIABLE = CVNS.ID_VARIABLE) TIPO_DATO_VARIABLE,
	(SELECT 
		VNS.UNIDAD_MEDIDA 
	FROM VARIABLES_NODO_SENSOR VNS  
	WHERE ID_VARIABLE = CVNS.ID_VARIABLE) UNIDAD_MEDIDA_VARIABLE,
	(SELECT 
		VNS.RANGO_MIN 
	FROM VARIABLES_NODO_SENSOR VNS  
	WHERE ID_VARIABLE = CVNS.ID_VARIABLE) RANGO_MIN_VARIABLE,
	(SELECT 
		VNS.RANGO_MAX 
	FROM VARIABLES_NODO_SENSOR VNS  
	WHERE ID_VARIABLE = CVNS.ID_VARIABLE) RANGO_MAX_VARIABLE,
	(SELECT 
		VNS.FECHA_CREACION 
	FROM VARIABLES_NODO_SENSOR VNS  
	WHERE ID_VARIABLE = CVNS.ID_VARIABLE) FECHA_CREACION_VARIABLE,
	(SELECT 
		VNS.HORA_CREACION 
	FROM VARIABLES_NODO_SENSOR VNS  
	WHERE ID_VARIABLE = CVNS.ID_VARIABLE) HORA_CREACION_VARIABLE,
	CVNS.FECHA_CREACION FECHA_CREACION_CONFIGURACION,
	CVNS.HORA_CREACION HORA_CREACION_CONFIGURACION
FROM NODO_SENSOR NS
INNER JOIN 
	CONFIGURACION_VARIABLES_NODO_SENSOR CVNS 
	ON NS.ID_NODO_SENSOR = CVNS.ID_NODO_SENSOR 
	WHERE CVNS.ID_CONFIGURACION = ? OR NS.ID_NODO_SENSOR = ? OR CVNS.ID_VARIABLE = ?

--Eliminar configuración variable nodo sensor por id configuración
DELETE FROM CONFIGURACION_VARIABLES_NODO_SENSOR
	WHERE ID_CONFIGURACION = ? 