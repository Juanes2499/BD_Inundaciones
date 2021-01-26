/*
    Autor:          Juan Esteban Nichoy Larrañaga
    Fecha:          20/01/2021
    Ejecutar en:    BD_Proyecto_Grado
    Descripción:    query para ERRORES_LOG_EJECUCION para los errores de los diferentes endpoints.
*/

--Verificar si el error ingresado existe:
SELECT * FROM ERRORES_LOG_EJECUCION
    WHERE 
        CODIGO_ERROR ? 
        AND URL_ENDPOINT = ? 
        AND MODULO = ? 
        AND ENDPOINT = ? 
        AND METODO = ? 

--Insertar el error:
INSERT 
    INTO ERRORES_LOG_EJECUCION
    (ID_ERROR, CODIGO_ERROR, URL_ENDPOINT, MODULO, ENDPOINT, METODO, DETALLES, MENSAJE_PANTALLA, FECHA_CREACION, HORA_CREACION)
VALUES (UUID(), ?, ?, ?, ?, ?, ?, ?, CURDATE(), CURTIME())

--Consulta base: 
SELECT
    ID_ERROR,
    CODIGO_ERROR,
    URL_ENDPOINT,
    MODULO,
    ENDPOINT,
    METODO_PRIMARIO,
    METODO_SECUNDARIO,
    DETALLES,
    MENSAJE_PANTALLA,
    FECHA_CREACION,
    HORA_CREACION,
    FECHA_ACTUALIZACION,
    HORA_ACTUALIZACION
FROM ERRORES_LOG_EJECUCION
ORDER BY FECHA_CREACION  DESC, HORA_CREACION DESC