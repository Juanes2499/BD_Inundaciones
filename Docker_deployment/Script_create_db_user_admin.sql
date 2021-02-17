/*
    Autor:          Juan Esteban Nichoy Larrañaga
    Fecha:          25/01/2021
    Ejecutar en:    Script para Dockerfile
    Descripción:    Crear usuario para la API
*/

/*Creacion usuario*/
CREATE USER 'ADMINTEST' IDENTIFIED BY 'ADMINTEST2021';

/*Asiganción de permisos*/
GRANT ALL PRIVILEGES ON *.* TO 'ADMINTEST'@'%';
FLUSH PRIVILEGES;