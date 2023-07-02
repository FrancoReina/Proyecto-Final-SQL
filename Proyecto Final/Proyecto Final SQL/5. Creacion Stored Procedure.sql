Use gyg_fiacas;

-- Stored Procedure -- 
-- Ejemplo 1 Agregar_Pedido -- 
 
DELIMITER $$
CREATE PROCEDURE Agregar_Pedido (
    IN p_ID_Usuario INT,
    IN p_ID_Producto INT,
    IN p_Total INT,
    IN p_Fecha DATE
)
BEGIN
    INSERT INTO Pedido (ID_Usuario, ID_Producto, Total, Fecha)
    VALUES (p_ID_Usuario, p_ID_Producto, p_Total, p_Fecha);
END$$
DELIMITER ;

CALL Agregar_Pedido(1, 2, 150, '2023-05-22');

-- Ejemplo 2 Obtener_Usuarios_Por_Apellido --

DELIMITER $$
CREATE PROCEDURE Obtener_Usuarios_Por_Apellido (
    IN p_Apellido VARCHAR(100),
    OUT p_Resultado TEXT
)
BEGIN
    SELECT CONCAT(Nombre, ' ', Apellido) INTO p_Resultado
    FROM Usuario
    WHERE Apellido = p_Apellido;
END$$
DELIMITER ;


CALL Obtener_Usuarios_Por_Apellido('Garcia', @resultado);
SELECT @resultado;