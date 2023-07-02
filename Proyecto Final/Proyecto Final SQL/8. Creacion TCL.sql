Use gyg_fiacas;

-- Ejemplo commit --
SELECT * FROM producto;

start transaction;
insert INTO producto ( Nombre, Descripcion, Precio, Cantidad) VALUES ('TV', 'TV 65 NEOQLED', 500000, 5); 

commit;

-- Ejemplo Rollback usuario--

SELECT * FROM usuario;


insert INTO usuario ( Nombre, Apellido, Email, Direccion, Telefono) VALUES ('Franco', 'Reina', 'franco.reina@gmail.com', 'av. Santa Fe 1234 Buenos Aires', 1141257895); 

start transaction;
Delete From usuario Where Id_usuario = 17;

rollback;

-- Ejemplo Savepoint --

Select * From producto;

START TRANSACTION;
insert INTO producto ( Nombre, Descripcion, Precio, Cantidad) VALUES ('TV', 'TV 65 NEOQLED', 500000, 5); 
insert INTO producto ( Nombre, Descripcion, Precio, Cantidad) VALUES ('TV', 'TV 35 led', 100000, 3); 
insert INTO producto ( Nombre, Descripcion, Precio, Cantidad) VALUES ('TV', 'TV 40 living', 150000, 2); 

savepoint productos_nuevos1;

insert INTO producto ( Nombre, Descripcion, Precio, Cantidad) VALUES ('AIRE', '4000 FRIGORIAS', 350000, 1); 
insert INTO producto ( Nombre, Descripcion, Precio, Cantidad) VALUES ('AIRE', '2500 Frigorias', 250000, 2); 
insert INTO producto ( Nombre, Descripcion, Precio, Cantidad) VALUES ('AIRE', '6000 Frigorias Frio/calor', 600000, 3); 

savepoint productos_nuevos2;

ROLLBACK TO productos_nuevos2;