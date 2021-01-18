/*
    Autor:          Juan Esteban Nichoy Larrañaga
    Fecha:          16/12/2020
    Ejecutar en:    BD_Proyecto_Grado
    Descripción:    Eliminar la tablas creadas en la base de datos en nodo sensor
*/

--Eliminar la tabla de configuración nodo sensor.
DROP TABLE CONFIGURACION_NODO_SENSOR;

--Eliminar la tabla que almancena los datos generados por el nodo sensor.
DROP TABLE DATOS_NODO_SENSOR;

--Eliminar la tabla que almacena las variables ingresadas.
DROP TABLE VARIABLES_NODO_SENSOR

--Eliminar la tabla que almacena los dispositivos nodos sensores.
DROP TABLE NODO_SENSOR;

--Eliminar la tabla que almacena las reglas que relaciona los nodos sensores con las variables
DROP TABLE REGLAS_NODO_SENSOR;
