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

--Consultar roles 
SELECT * FROM ROLES

--Consultar roles por nombre del rol
SELECT * FROM ROLES WHERE NOMBRE_ROL = "MASTER" 

--Consultar roles por id rol
SELECT * FROM ROLES WHERE ID_ROL = 3

--Actualizar rol
UPDATE ROLES
    SET
        NOMBRE_ROL = "ADMINISTRADOR",
        DETALLES = "El usurio puede agregar nodo sensores, agregar varible y configurar el nodo sensor",
        FECHA_ACTUALIZACION = CURDATE(),
        HORA_ACTUALIZACION = CURTIME()
    WHERE ID_ROL = 3