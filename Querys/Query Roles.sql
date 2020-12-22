/*
    Autor:          Juan Esteban Nichoy Larrañaga
    Fecha:          21/12/2020
    Ejecutar en:    BD_Proyecto_Grado
    Descripción:    Query roles
*/

--Crear un nuevo rol
INSERT
    INTO ROLES
    (NOMBRE_ROL, DETALLES, FECHA_CREACION, HORA_CREACION)
VALUES
    ("MASTER", "El usuario puede consumir todo tipo de endpoint", CURDATE(), CURTIME())

_