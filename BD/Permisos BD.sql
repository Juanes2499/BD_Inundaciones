/*
    Autor:          Juan Esteban Nichoy Larrañaga
    Fecha:          12/01/2021
    Ejecutar en:    Servidor BD 
    Descripción:    Asiganar permisos a base de datos
*/

--Asignar permisos ambiente DESARROLLO

--Asignar permisos ambiente TEST
GRANT SELECT, INSERT, UPDATE, DELETE ON proyecto_grado_api_test.USER TO 'DBATESTS'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE ON proyecto_grado_api_test.ROLES TO 'DBATESTS'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE ON proyecto_grado_api_test.CONFIGURACION_ROLES TO 'DBATESTS'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE ON proyecto_grado_api_test.NODO_SENSOR TO 'DBATESTS'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE ON proyecto_grado_api_test.VARIABLES_NODO_SENSOR TO 'DBATESTS'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE ON proyecto_grado_api_test.CONFIGURACION_VARIABLES_NODO_SENSOR TO 'DBATESTS'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE ON proyecto_grado_api_test.DATOS_NODO_SENSOR TO 'DBATESTS'@'%';
FLUSH PRIVILEGES;