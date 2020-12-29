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