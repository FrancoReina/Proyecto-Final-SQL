USE gyg_fiacas;

-- Creación tablas Log --
CREATE TABLE IF NOT EXISTS Log_Pedido (
    ID_Log INT PRIMARY KEY AUTO_INCREMENT,
    ID_Pedido INT,
    Accion VARCHAR(250),
    Fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS Log_Usuario (
    ID_Log INT PRIMARY KEY AUTO_INCREMENT,
    ID_Usuario INT,
    Accion VARCHAR(50),
    Fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- Trigger BEFORE para la tabla "Pedido" --
DROP TRIGGER IF EXISTS Trigger_Before_Pedido;
DELIMITER $$
CREATE TRIGGER `Trigger_Before_Pedido` BEFORE INSERT ON `Pedido`
FOR EACH ROW
BEGIN
    INSERT INTO Log_Pedido (ID_Pedido, Accion) VALUES (NEW.ID_Pedido, 'Nuevo pedido creado');
END$$
DELIMITER ;

-- Insertar un nuevo pedido en la tabla "Pedido"
INSERT INTO Pedido (ID_Usuario, ID_Producto, Total, Fecha) VALUES (1, 2, 100, '2023-05-22');


-- Trigger AFTER para la tabla "Usuario": --
DROP TRIGGER IF EXISTS Trigger_After_Usuario;
DELIMITER $$
CREATE TRIGGER `Trigger_After_Usuario` AFTER DELETE ON `Usuario`
FOR EACH ROW
BEGIN
    -- Registrar la acción en el log --
    INSERT INTO Log_Usuario (ID_Usuario, Accion) VALUES (OLD.ID_Usuario, 'Usuario eliminado');
END$$
DELIMITER ;

-- Deshabilitar claves foráneas --
SET FOREIGN_KEY_CHECKS = 0;

-- Eliminar un usuario de la tabla "Usuario" --
DELETE FROM Usuario WHERE ID_Usuario = 1;

-- Volver a habilitar las claves foráneas --
SET FOREIGN_KEY_CHECKS = 1;
