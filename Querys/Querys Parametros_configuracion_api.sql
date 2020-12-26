/*
    Autor:          Juan Esteban Nichoy Larrañaga
    Fecha:          25/12/2020
    Ejecutar en:    BD_Proyecto_Grado
    Descripción:    Querys para los parámetros de configuración para la API.
*/

--Crear un nuevo parámetro de configuración
INSERT
    INTO PARAMETROS_CONFIGURACION_API
    (NOMBRE_PARAMETRO, DETALLES_PARAMETRO, VALOR_PARAMETRO, FECHA_CREACION, HORA_CREACION)
VALUES
    ('Permisos_usuario_login',
     'Complemento de los permisos que tiene acceso el usuario para la query de iniciar sesión y que genera el token para validar la autenticación',
      '(CASE (SELECT NOMBRE_ROL FROM CONFIGURACION_ROLES CR INNER JOIN ROLES R ON R.ID_ROL = CR.ID_ROL WHERE CR.ID_USER = U.ID_USER AND R.NOMBRE_ROL = "MASTER")
            WHEN "MASTER" THEN TRUE
            ELSE FALSE
        END) ROL_MASTER, 
        (CASE (SELECT NOMBRE_ROL FROM CONFIGURACION_ROLES CR INNER JOIN ROLES R ON R.ID_ROL = CR.ID_ROL  WHERE CR.ID_USER = U.ID_USER AND R.NOMBRE_ROL = "ADMINISTRADOR")
            WHEN "ADMINISTRADOR" THEN TRUE
            ELSE FALSE
        END) ROL_ADMINISTRADOR, 
      ',
      CURDATE(),
      CURTIME());

--Actualizar un parametro por nombre parámetro 
UPDATE PARAMETROS_CONFIGURACION_API
    SET 
        NOMBRE_PARAMETRO = 'Permisos_usuario_login',
        VALOR_PARAMETRO = 
        '(CASE (SELECT NOMBRE_ROL FROM CONFIGURACION_ROLES CR INNER JOIN ROLES R ON R.ID_ROL = CR.ID_ROL WHERE CR.ID_USER = U.ID_USER AND R.NOMBRE_ROL = "MASTER")
            WHEN "MASTER" THEN TRUE
            ELSE FALSE
        END) ROL_MASTER, 
        (CASE (SELECT NOMBRE_ROL FROM CONFIGURACION_ROLES CR INNER JOIN ROLES R ON R.ID_ROL = CR.ID_ROL  WHERE CR.ID_USER = U.ID_USER AND R.NOMBRE_ROL = "ADMINISTRADOR")
            WHEN "ADMINISTRADOR" THEN TRUE
            ELSE FALSE
        END) ROL_ADMINISTRADOR,
        (CASE (SELECT NOMBRE_ROL FROM CONFIGURACION_ROLES CR INNER JOIN ROLES R ON R.ID_ROL = CR.ID_ROL  WHERE CR.ID_USER = U.ID_USER AND R.NOMBRE_ROL = "NODO_SENSOR")
            WHEN "NODO_SENSOR" THEN TRUE
            ELSE FALSE
        END) ROL_NODO_SENSOR,
        ',
        FECHA_ACTUALIZACION = CURDATE(),
        HORA_ACTUALIZACION = CURTIME() 
    WHERE NOMBRE_PARAMETRO = 'Permisos_usuario_login';