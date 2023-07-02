USE gyg_fiacas;

-- Insert de datos de Usuario -- 

INSERT INTO usuario (`ID_Usuario`,`Nombre`,`Apellido`,`Email`,`Direccion`,`Telefono`) VALUES (1,'Sofia','Garcia','sofia.garcia@gmail.com','Av. Santa Fe 1234 Buenos Aires','115551234');
INSERT INTO usuario (`ID_Usuario`,`Nombre`,`Apellido`,`Email`,`Direccion`,`Telefono`) VALUES (2,'Mateo','Fernandez','mateo.fernandez@gmail.com','Calle Corrientes 5678 Cordoba','3515555678');
INSERT INTO usuario (`ID_Usuario`,`Nombre`,`Apellido`,`Email`,`Direccion`,`Telefono`) VALUES (3,'Valentina','Gonzalez','valentina.gonzalez@gmail.com','Calle Belgrano 910 Rosario','3415559101');
INSERT INTO usuario (`ID_Usuario`,`Nombre`,`Apellido`,`Email`,`Direccion`,`Telefono`) VALUES (4,'Tomas','Rodriguez','tomas.rodriguez@gmail.com','Av. 9 de Julio 1212 Mendoza','2615551212');
INSERT INTO usuario (`ID_Usuario`,`Nombre`,`Apellido`,`Email`,`Direccion`,`Telefono`) VALUES (5,'Camila','Perez','camila.perez@gmail.com','Calle Maipu 3434 San Juan','2645553434');
INSERT INTO usuario (`ID_Usuario`,`Nombre`,`Apellido`,`Email`,`Direccion`,`Telefono`) VALUES (6,'Agustin','Gomez','agustin.gomez@gmail.com','Calle San Martin 5656 Tucuman','3815555656');
INSERT INTO usuario (`ID_Usuario`,`Nombre`,`Apellido`,`Email`,`Direccion`,`Telefono`) VALUES (7,'Martina','Diaz','martina.diaz@gmail.com','Av. Pueyrredon 7878 Buenos Aires','115557878');
INSERT INTO usuario (`ID_Usuario`,`Nombre`,`Apellido`,`Email`,`Direccion`,`Telefono`) VALUES (8,'Santiago','Ortiz','santiago.ortiz@gmail.com','Calle Alvear 9090 Mendoza','2615559090');
INSERT INTO usuario (`ID_Usuario`,`Nombre`,`Apellido`,`Email`,`Direccion`,`Telefono`) VALUES (9,'Sofia','Castro','sofia.castro@gmail.com','Calle San Juan 1111 Rosario','3415551111');
INSERT INTO usuario (`ID_Usuario`,`Nombre`,`Apellido`,`Email`,`Direccion`,`Telefono`) VALUES (10,'Thiago','Luna','thiago.luna@gmail.com','Calle San Luis 2222 Neuquen','2995552222');
INSERT INTO usuario (`ID_Usuario`,`Nombre`,`Apellido`,`Email`,`Direccion`,`Telefono`) VALUES (11,'Lucia','Cabrera','lucia.cabrera@gmail.com','Calle Cordoba 3333 Buenos Aires','115553333');
INSERT INTO usuario (`ID_Usuario`,`Nombre`,`Apellido`,`Email`,`Direccion`,`Telefono`) VALUES (12,'Agustin','Flores','agustin.flores@gmail.com','Calle Santa Fe 4444 Santa Fe','3425554444');
INSERT INTO usuario (`ID_Usuario`,`Nombre`,`Apellido`,`Email`,`Direccion`,`Telefono`) VALUES (13,'Martina','Martinez','martina.martinez@gmail.com','Calle San Martin 5555 Cordoba','3515555555');
INSERT INTO usuario (`ID_Usuario`,`Nombre`,`Apellido`,`Email`,`Direccion`,`Telefono`) VALUES (14,'Joaquin','Sanchez','joaquin.sanchez@gmail.com','Calle Tucuman 6666 San Miguel de Tucuman','3815556666');
INSERT INTO usuario (`ID_Usuario`,`Nombre`,`Apellido`,`Email`,`Direccion`,`Telefono`) VALUES (15,'Victoria','Romero','victoria.romero@gmail.com','Calle Buenos Aires 7777 Buenos Aires','115557777');

-- Insert de datos de Producto --

INSERT INTO producto (`ID_Producto`,`Nombre`,`Descripcion`,`Precio`,`Cantidad`) VALUES (1,'Pantalla LED 32\"','Pantalla LED 32\" marca Samsung',17999,10);
INSERT INTO producto (`ID_Producto`,`Nombre`,`Descripcion`,`Precio`,`Cantidad`) VALUES (2,'Celular Samsung A52','Celular Samsung A52 color negro',45999,5);
INSERT INTO producto (`ID_Producto`,`Nombre`,`Descripcion`,`Precio`,`Cantidad`) VALUES (3,'Notebook HP 15\"','Notebook HP 15\" Core i5 8GB RAM',88999,2);
INSERT INTO producto (`ID_Producto`,`Nombre`,`Descripcion`,`Precio`,`Cantidad`) VALUES (4,'Smartwatch Fitbit','Smartwatch Fitbit modelo Versa 2',11999,8);
INSERT INTO producto (`ID_Producto`,`Nombre`,`Descripcion`,`Precio`,`Cantidad`) VALUES (5,'Auriculares Sony','Auriculares Sony inalÃ¡mbricos',5999,15);
INSERT INTO producto (`ID_Producto`,`Nombre`,`Descripcion`,`Precio`,`Cantidad`) VALUES (6,'CÃ¡mara Canon EOS','CÃ¡mara Canon EOS 1500D',44999,3);
INSERT INTO producto (`ID_Producto`,`Nombre`,`Descripcion`,`Precio`,`Cantidad`) VALUES (7,'Impresora HP','Impresora HP multifunciÃ³n',11999,7);
INSERT INTO producto (`ID_Producto`,`Nombre`,`Descripcion`,`Precio`,`Cantidad`) VALUES (8,'Consola Xbox Series S','Consola Xbox Series S',62999,4);
INSERT INTO producto (`ID_Producto`,`Nombre`,`Descripcion`,`Precio`,`Cantidad`) VALUES (9,'Heladera Whirlpool','Heladera Whirlpool no frost 400L',123999,1);
INSERT INTO producto (`ID_Producto`,`Nombre`,`Descripcion`,`Precio`,`Cantidad`) VALUES (10,'Bicicleta MTB','Bicicleta MTB rodado 29\"',58999,2);
INSERT INTO producto (`ID_Producto`,`Nombre`,`Descripcion`,`Precio`,`Cantidad`) VALUES (11,'Parrilla elÃ©ctrica','Parrilla elÃ©ctrica con regulador de temperatura',3499,20);
INSERT INTO producto (`ID_Producto`,`Nombre`,`Descripcion`,`Precio`,`Cantidad`) VALUES (12,'Teclado Gamer','Teclado Gamer RGB mecÃ¡nico',3999,10);
INSERT INTO producto (`ID_Producto`,`Nombre`,`Descripcion`,`Precio`,`Cantidad`) VALUES (13,'Monitor 27\"','Monitor LED 27\" 1080p',24999,6);
INSERT INTO producto (`ID_Producto`,`Nombre`,`Descripcion`,`Precio`,`Cantidad`) VALUES (14,'Licuadora Philips','Licuadora Philips 800W',6999,12);
INSERT INTO producto (`ID_Producto`,`Nombre`,`Descripcion`,`Precio`,`Cantidad`) VALUES (15,'Aspiradora Samsung','Aspiradora Samsung sin bolsa',18999,3);

-- Insert de datos de Pedido --

INSERT INTO pedido (`ID_Pedido`,`ID_Usuario`,`ID_Producto`,`Total`,`Fecha`) VALUES (1,1,1,179990,'2023-05-05');
INSERT INTO pedido (`ID_Pedido`,`ID_Usuario`,`ID_Producto`,`Total`,`Fecha`) VALUES (2,2,2,229995,'2023-05-06');
INSERT INTO pedido (`ID_Pedido`,`ID_Usuario`,`ID_Producto`,`Total`,`Fecha`) VALUES (3,3,3,177998,'2023-05-07');
INSERT INTO pedido (`ID_Pedido`,`ID_Usuario`,`ID_Producto`,`Total`,`Fecha`) VALUES (4,4,4,95992,'2023-05-08');
INSERT INTO pedido (`ID_Pedido`,`ID_Usuario`,`ID_Producto`,`Total`,`Fecha`) VALUES (5,5,5,89985,'2023-05-09');
INSERT INTO pedido (`ID_Pedido`,`ID_Usuario`,`ID_Producto`,`Total`,`Fecha`) VALUES (6,6,6,134997,'2023-05-10');
INSERT INTO pedido (`ID_Pedido`,`ID_Usuario`,`ID_Producto`,`Total`,`Fecha`) VALUES (7,7,7,83993,'2023-05-11');
INSERT INTO pedido (`ID_Pedido`,`ID_Usuario`,`ID_Producto`,`Total`,`Fecha`) VALUES (8,8,8,251996,'2023-05-12');
INSERT INTO pedido (`ID_Pedido`,`ID_Usuario`,`ID_Producto`,`Total`,`Fecha`) VALUES (9,9,9,123999,'2023-05-13');
INSERT INTO pedido (`ID_Pedido`,`ID_Usuario`,`ID_Producto`,`Total`,`Fecha`) VALUES (10,10,10,117998,'2023-05-14');
INSERT INTO pedido (`ID_Pedido`,`ID_Usuario`,`ID_Producto`,`Total`,`Fecha`) VALUES (11,11,11,69980,'2023-05-15');
INSERT INTO pedido (`ID_Pedido`,`ID_Usuario`,`ID_Producto`,`Total`,`Fecha`) VALUES (12,12,12,39990,'2023-05-16');
INSERT INTO pedido (`ID_Pedido`,`ID_Usuario`,`ID_Producto`,`Total`,`Fecha`) VALUES (13,13,13,149994,'2023-05-17');
INSERT INTO pedido (`ID_Pedido`,`ID_Usuario`,`ID_Producto`,`Total`,`Fecha`) VALUES (14,14,14,83988,'2023-05-18');
INSERT INTO pedido (`ID_Pedido`,`ID_Usuario`,`ID_Producto`,`Total`,`Fecha`) VALUES (15,15,15,56997,'2023-05-19');

-- Insert de datos de Envio --

INSERT INTO envio (`ID_Envio`,`ID_Pedido`,`Tipo`,`Estado`) VALUES (1,1,'Privado','Enviado');
INSERT INTO envio (`ID_Envio`,`ID_Pedido`,`Tipo`,`Estado`) VALUES (2,2,'Privado','Pendiente');
INSERT INTO envio (`ID_Envio`,`ID_Pedido`,`Tipo`,`Estado`) VALUES (3,3,'Privado','Pendiente');
INSERT INTO envio (`ID_Envio`,`ID_Pedido`,`Tipo`,`Estado`) VALUES (4,4,'Privado','Pendiente');
INSERT INTO envio (`ID_Envio`,`ID_Pedido`,`Tipo`,`Estado`) VALUES (5,5,'Privado','Pendiente');
INSERT INTO envio (`ID_Envio`,`ID_Pedido`,`Tipo`,`Estado`) VALUES (6,6,'Privado','Pendiente');
INSERT INTO envio (`ID_Envio`,`ID_Pedido`,`Tipo`,`Estado`) VALUES (7,7,'Privado','Pendiente');
INSERT INTO envio (`ID_Envio`,`ID_Pedido`,`Tipo`,`Estado`) VALUES (8,8,'Privado','Pendiente');
INSERT INTO envio (`ID_Envio`,`ID_Pedido`,`Tipo`,`Estado`) VALUES (9,9,'Retira','Pendiente');
INSERT INTO envio (`ID_Envio`,`ID_Pedido`,`Tipo`,`Estado`) VALUES (10,10,'Retira','Pendiente');
INSERT INTO envio (`ID_Envio`,`ID_Pedido`,`Tipo`,`Estado`) VALUES (11,11,'Retira','Pendiente');
INSERT INTO envio (`ID_Envio`,`ID_Pedido`,`Tipo`,`Estado`) VALUES (12,12,'Correo','Pendiente');
INSERT INTO envio (`ID_Envio`,`ID_Pedido`,`Tipo`,`Estado`) VALUES (13,13,'Correo','Enviado');
INSERT INTO envio (`ID_Envio`,`ID_Pedido`,`Tipo`,`Estado`) VALUES (14,14,'Correo','Enviado');
INSERT INTO envio (`ID_Envio`,`ID_Pedido`,`Tipo`,`Estado`) VALUES (15,15,'Correo','Enviado');

-- Insert de datos de Tarjeta --

INSERT INTO tarjeta (`ID_Tarjeta`,`ID_Usuario`,`Tipo`,`Numero`,`Codigo_Seguridad`,`Fecha_Vencimiento`) VALUES (1,1,'Visa','4539565875312675',123,'2023-05-05');
INSERT INTO tarjeta (`ID_Tarjeta`,`ID_Usuario`,`Tipo`,`Numero`,`Codigo_Seguridad`,`Fecha_Vencimiento`) VALUES (2,2,'Mastercard','4539565875312676',456,'2023-05-06');
INSERT INTO tarjeta (`ID_Tarjeta`,`ID_Usuario`,`Tipo`,`Numero`,`Codigo_Seguridad`,`Fecha_Vencimiento`) VALUES (3,3,'Visa','4539565875312677',789,'2023-05-07');
INSERT INTO tarjeta (`ID_Tarjeta`,`ID_Usuario`,`Tipo`,`Numero`,`Codigo_Seguridad`,`Fecha_Vencimiento`) VALUES (4,4,'American Express','4539565875312678',321,'2023-05-08');
INSERT INTO tarjeta (`ID_Tarjeta`,`ID_Usuario`,`Tipo`,`Numero`,`Codigo_Seguridad`,`Fecha_Vencimiento`) VALUES (5,5,'Visa','4539565875312679',987,'2023-05-09');
INSERT INTO tarjeta (`ID_Tarjeta`,`ID_Usuario`,`Tipo`,`Numero`,`Codigo_Seguridad`,`Fecha_Vencimiento`) VALUES (6,6,'Mastercard','4539565875312680',654,'2023-05-10');
INSERT INTO tarjeta (`ID_Tarjeta`,`ID_Usuario`,`Tipo`,`Numero`,`Codigo_Seguridad`,`Fecha_Vencimiento`) VALUES (7,7,'Visa','4539565875312681',345,'2023-05-11');
INSERT INTO tarjeta (`ID_Tarjeta`,`ID_Usuario`,`Tipo`,`Numero`,`Codigo_Seguridad`,`Fecha_Vencimiento`) VALUES (8,8,'American Express','4539565875312682',789,'2023-05-12');
INSERT INTO tarjeta (`ID_Tarjeta`,`ID_Usuario`,`Tipo`,`Numero`,`Codigo_Seguridad`,`Fecha_Vencimiento`) VALUES (9,9,'Mastercard','4539565875312683',456,'2023-05-13');
INSERT INTO tarjeta (`ID_Tarjeta`,`ID_Usuario`,`Tipo`,`Numero`,`Codigo_Seguridad`,`Fecha_Vencimiento`) VALUES (10,10,'Visa','4539565875312684',123,'2023-05-14');
INSERT INTO tarjeta (`ID_Tarjeta`,`ID_Usuario`,`Tipo`,`Numero`,`Codigo_Seguridad`,`Fecha_Vencimiento`) VALUES (11,11,'Mastercard','4539565875312685',321,'2023-05-15');
INSERT INTO tarjeta (`ID_Tarjeta`,`ID_Usuario`,`Tipo`,`Numero`,`Codigo_Seguridad`,`Fecha_Vencimiento`) VALUES (12,12,'Visa','4539565875312686',789,'2023-05-16');
INSERT INTO tarjeta (`ID_Tarjeta`,`ID_Usuario`,`Tipo`,`Numero`,`Codigo_Seguridad`,`Fecha_Vencimiento`) VALUES (13,13,'American Express','4539565875312687',456,'2023-05-17');
INSERT INTO tarjeta (`ID_Tarjeta`,`ID_Usuario`,`Tipo`,`Numero`,`Codigo_Seguridad`,`Fecha_Vencimiento`) VALUES (14,14,'Visa','4539565875312688',987,'2023-05-18');
INSERT INTO tarjeta (`ID_Tarjeta`,`ID_Usuario`,`Tipo`,`Numero`,`Codigo_Seguridad`,`Fecha_Vencimiento`) VALUES (15,15,'Mastercard','4539565875312689',123,'2023-05-19');
