USE gyg_fiacas;

-- Funcion buscar por descripción producto --
DROP FUNCTION IF EXISTS buscar_descripcion_producto;
DELIMITER //

CREATE FUNCTION buscar_descripcion_producto(descripcion_buscar VARCHAR(255)) RETURNS TEXT CHARSET utf8mb4 DETERMINISTIC
BEGIN
    DECLARE descripciones_encontradas TEXT;
    SELECT GROUP_CONCAT(Descripcion SEPARATOR ', ') INTO descripciones_encontradas FROM Producto WHERE Descripcion LIKE CONCAT('%', descripcion_buscar, '%');
    RETURN descripciones_encontradas;
END //

DELIMITER ;

-- funcion buscar usuario --

DROP FUNCTION IF EXISTS buscar_usuario;
DELIMITER //

CREATE FUNCTION buscar_usuario(nombre_buscar VARCHAR(255)) RETURNS TEXT CHARSET utf8mb4 DETERMINISTIC
BEGIN
    DECLARE nombres_encontrados TEXT;
    SELECT GROUP_CONCAT(Nombre SEPARATOR ', ') INTO nombres_encontrados FROM Usuario WHERE Nombre LIKE CONCAT('%', nombre_buscar, '%');
    RETURN nombres_encontrados;
END //

DELIMITER ;
