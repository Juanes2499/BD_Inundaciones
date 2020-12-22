/*
    Autor:          Juan Esteban Nichoy Larrañaga
    Fecha:          21/12/2020
    Ejecutar en:    BD_Proyecto_Grado
    Descripción:    Query Users
*/

--Crar un nuevo usuario
INSERT 
    INTO USER 
    (NOMBRES, APELLIDOS, TIPO_DOC_ID, NUMERO_DOC_ID, EMAIL, PASSWORD, FECHA_CREACION, HORA_CREACION)
VALUES 
    ('PRUEBA','BD','CC','1234','prueba@mail.com','1234', CURDATE(), CURTIME());

--Consultar usuarios
SELECT * FROM USER;