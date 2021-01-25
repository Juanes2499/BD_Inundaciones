/*
    Autor:          Juan Esteban Nichoy Larrañaga
    Fecha:          25/01/2021
    Ejecutar en:    Script para Dockerfile
    Descripción:    Crear permisos sobre las tablas para el usuario DBATESTS
*/

GRANT SELECT, INSERT, UPDATE, DELETE ON proyecto_grado_api_test.NODO_SENSOR TO 'DBATESTS'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE ON proyecto_grado_api_test.VARIABLES_NODO_SENSOR TO 'DBATESTS'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE ON proyecto_grado_api_test.CONFIGURACION_VARIABLES_NODO_SENSOR TO 'DBATESTS'@'%'; 
GRANT SELECT, INSERT, UPDATE, DELETE ON proyecto_grado_api_test.REGLAS_NODO_SENSOR TO 'DBATESTS'@'%'; 
GRANT SELECT, INSERT, UPDATE, DELETE ON proyecto_grado_api_test.DATOS_NODO_SENSOR TO 'DBATESTS'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE ON proyecto_grado_api_test.ERRORES_LOG_EJECUCION TO 'DBATESTS'@'%'; 
GRANT SELECT, INSERT ON proyecto_grado_api_test.REPORTE_LOG_EJECUCION TO 'DBATESTS'@'%';