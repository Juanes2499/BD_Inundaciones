/*
    Autor:          Juan Esteban Nichoy Larrañaga
    Fecha:          25/12/2020
    Ejecutar en:    BD_Proyecto_Grado
    Descripción:    Querys para las variables del nodo sensor.
*/

--Crear una nueva variable
INSERT 
    INTO VARIABLES_NODO_SENSOR
    (NOMBRE_VARIABLE, DETALLES, TIPO_DATO, UNIDAD_MEDIDA, RANGO_MIN, RANGO_MAX, ESTADO, FECHA_CREACION, HORA_CREACION)
VALUES
    ('TEMPERATURA AMBIENTAL', 'Sensa la temperatura ambiental donde se encuentra el nodo sensor','DOUBLE', '°C', '13.0', '40.0', true, CURDATE(), CURTIME());

--Consultar variables Nodo Sensor 
SELECT * FROM VARIABLES_NODO_SENSOR;

--Consultar variable nodo sensor por nombre variable
SELECT * FROM VARIABLES_NODO_SENSOR
    WHERE NOMBRE_VARIABLE = ? 

--Consultar variable nodo sensor por id variable
SELECT * FROM VARIABLES_NODO_SENSOR
    WHERE ID_VARIABLE = ? 

--Consultar variable nodo sensor por id variable o nombre variable
SELECT * FROM VARIABLES_NODO_SENSOR
    WHERE ID_VARIABLE = ? OR NOMBRE_VARIABLE = ?

--Actualizar una varibale por ID
UPDATE VARIABLES_NODO_SENSOR
    SET NOMBRE_VARIABLE = ?,
        DETALLES = ?,
        TIPO_DATO = ?,
        UNIDAD_MEDIDA = ?,
        RANGO_MIN = ?,
        RANGO_MAX = ?,
        ESTADO = ?,
        FECHA_ACTUALIZACION = CURDATE(),
        HORA_ACTUALIZACION = CURTIME()
    WHERE ID_VARIABLE = ? OR NOMBRE_VARIABLE = ? 

--Eliminar variable por id variable o nombre variable
DELETE FROM VARIABLES_NODO_SENSOR
    WHERE ID_VARIABLE = ? OR NOMBRE_VARIABLE = ?