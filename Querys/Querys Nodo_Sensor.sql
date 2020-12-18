/*
    Autor:          Juan Esteban Nichoy Larrañaga
    Fecha:          17/12/2020
    Ejecutar en:    BD_Proyecto_Grado
    Descripción:    Query Nodo_Sensor
*/

--Crear un nuevo dispositivo - nodo sensor
INSERT 
    INTO NODO_SENSOR 
    (LATITUD, LONGITUD, ESTADO, FECHA_CREACION, HORA_CREACION)
VALUES 
    (3.419231, -76.552832, true, CURDATE(), CURTIME());

--Consultar todo los Nodos Sensores crados
SELECT * FROM NODO_SENSOR;