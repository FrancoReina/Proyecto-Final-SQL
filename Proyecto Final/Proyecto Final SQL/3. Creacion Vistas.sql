USE gyg_fiacas;

-- Eliminar vistas existentes --
DROP VIEW IF EXISTS VistaProductos;
DROP VIEW IF EXISTS VistaUsuarios;
DROP VIEW IF EXISTS VistaPedidos;
DROP VIEW IF EXISTS VistaEnvios;
DROP VIEW IF EXISTS VistaTarjetas;

-- Crear vistas --
CREATE VIEW VistaProductos AS
SELECT ID_Producto, Nombre, Descripcion, Precio, Cantidad
FROM Producto;

CREATE VIEW VistaUsuarios AS
SELECT ID_Usuario, Nombre, Apellido, Email, Telefono
FROM Usuario;

CREATE VIEW VistaPedidos AS
SELECT ID_Pedido, ID_Usuario, ID_Producto, Total, Fecha
FROM Pedido;

CREATE VIEW VistaEnvios AS
SELECT ID_Envio, ID_Pedido, Tipo, Estado
FROM Envio;

CREATE VIEW VistaTarjetas AS
SELECT ID_Tarjeta, ID_Usuario, Tipo, Numero, Codigo_Seguridad, Fecha_Vencimiento
FROM Tarjeta;
