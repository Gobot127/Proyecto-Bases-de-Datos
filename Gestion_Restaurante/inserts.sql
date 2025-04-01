

INSERT INTO Clientes(nombre, apellido, telefono) VALUES
('Carlos', 'Mendez', '89052718'),
('Laura', 'Campos', '88927564'),
('Jorge', 'Ramirez', '80019285'),
('Mariana', 'Lopez', '88765677'),
('Luis', 'Gonzalez', '81905847'),
('Andrea', 'Vargas', '866834110'),
('Diego', 'Martinez', '80192837'),
('Camila', 'Alvarado', '81029388'),
('Sofia', 'Rojas', '81230987'),
('Ricardo', 'Castro', '87778652'),
('Valeria', 'Diaz', '89056667'),
('Esteban', 'Jimenez', '89051234'),
('Daniela', 'Soto', '89050927'),
('Kevin', 'Morales', '81032718'),
('Monica', 'Fernandez', '801928375'),
('Pablo', 'Arias', '89021673'),
('Natalia', 'Herrera', '689052251'),
('Samuel', 'Navarro', '89052725'),
('Gabriela', 'Cordero', '89050000'),
('Manuel', 'Salas', '89051142');


INSERT INTO Empleados(nombre, apellido, cargo, salario, fecha_contratacion, telefono, correo) VALUES
('Antonio', 'Ruiz', 'Cajero', 350000, '2022-03-03', '89764312', 'antonio.ruiz@restaurante.magazine'),
('Marcela', 'Jimenez', 'Cajero', 350000, '2023-05-23', '82316598', 'marcela.jimenez@restaurante.magazine'),
('Carlos', 'Segura', 'Mesero', 300000, '2025-05-22', '84975698', 'carlos.segura@restaurante.magazine'),
('Veronica', 'Ramos', 'Mesero', 300000, '2025-10-21', '82136588', 'veronica.ramos@restaurante.magazine'),
('Luis', 'Alpizar', 'Administrador', 650000, '2018-08-22', '87946512', 'luis.alpizar@restaurante.magazine'),
('Tatiana', 'Carvajal', 'Bartender', 400000, '2023-01-25', '89632548', 'tatiana.carvajal@restaurante.magazine'),
('Mario', 'Venegas', 'Mesero', 300000, '2023-12-22', '87412569', 'mario.venegas@restaurante.magazine'),
('Andrea', 'Solis', 'Cocinero', 500000, '2023-10-02', '81236498', 'andrea.solis@restaurante.magazine'),
('Felipe', 'Quesada', 'Mesero', 300000, '2024-07-17', '89632698', 'felipe.quesada@restaurante.magazine'),
('Fernanda', 'Aguilar', 'Cocinero', 500000, '2021-09-10', '88856982', 'fernanda.aguilar@restaurante.magazine');


INSERT INTO Mesas(numero_mesa, capacidad) VALUES
(1, 2),
(2, 4),
(3, 6),
(4, 4),
(5, 8),
(6, 2),
(7, 6),
(8, 4),
(9, 2),
(10, 8);


INSERT INTO CategoriasMenu(nombre) VALUES
('Entradas'),
('Platos Fuertes'),
('Postres'),
('Bebidas'),
('Especiales');


INSERT INTO Platos(nombre, descripcion, precio, ID_categoria) VALUES
('Casado con pollo', 'Delicioso casado con pollo preparado al estilo casero', 2000, 1),
('Hamburguesa con papas', 'Delicioso hamburguesa con papas preparado al estilo casero', 5000, 2),
('Ensalada tropical', 'Delicioso ensalada tropical preparado al estilo casero', 2300, 3),
('Pasta carbonara', 'Delicioso pasta carbonara preparado al estilo casero', 6300, 4),
('Pizza margarita', 'Delicioso pizza margarita preparado al estilo casero', 10050, 5),
('Ceviche mixto', 'Delicioso ceviche mixto preparado al estilo casero', 9400, 1),
('Arroz con camarones', 'Delicioso arroz con camarones preparado al estilo casero', 7350, 2),
('Sopa negra', 'Delicioso sopa negra preparado al estilo casero', 6250, 3),
('Tamal tico', 'Delicioso tamal tico preparado al estilo casero', 8750, 4),
('Chifrijo', 'Delicioso chifrijo preparado al estilo casero', 9800, 5),
('Helado artesanal', 'Delicioso helado artesanal preparado al estilo casero', 7000, 1),
('Tres leches', 'Delicioso tres leches preparado al estilo casero', 4600, 2),
('Batido natural', 'Delicioso batido natural preparado al estilo casero', 4200, 3),
('Cafe negro', 'Delicioso cafe negro preparado al estilo casero', 2500, 4),
('Refresco de cas', 'Delicioso refresco de cas preparado al estilo casero', 3200, 5);


INSERT INTO Proveedores(nombre, telefono, correo, direccion) VALUES
('Distribuidora La Huerta', '83424729', 'distribuidoralahuerta@gmail.com', 'San Jose, Rohrmoser'),
('Frutas del Valle', '84328658', 'frutasdelvalle@gmail.com', 'Cartago, El Tejar'),
('Carnes El Novillo', '85228080', 'carneselnovillo@gmail.com', 'Alajuela, San Carlos'),
('Lacteos San Ramon', '87641282', 'lacteossanramon@gmail.com', 'Heredia, San Francisco'),
('Panaderia La Estrella', '84525937', 'panaderialaestrella@gmail.com', 'Guanacaste, Liberia'),
('Bebidas Tropico', '86294769', 'bebidastropico@gmail.com', 'Puntarenas, Esparza');


INSERT INTO Inventario(nombre, cantidad, unidad, ID_proveedor) VALUES
('Arroz', 25.5, 'kg', 1),
('Frijoles', 34.0, 'kg', 1),
('Aceite vegetal', 15.5, 'kg', 1),
('Sal', 46.0, 'kg', 1),
('Pollo', 19.0, 'kg', 3),
('Carne molida', 44.0, 'kg', 3),
('Cebolla', 26.5, 'kg', 2),
('Tomate', 44.0, 'kg', 2),
('Lechuga', 6.5, 'kg', 2),
('Pan de hamburguesa', 33.5, 'kg', 5),
('Queso', 46.5, 'kg', 4),
('Huevos', 39.0, 'kg', 4),
('Leche', 18.5, 'litros', 4),
('Harina', 27.0, 'kg', 1),
('Azucar', 11.5, 'kg', 1),
('Cafe', 13.0, 'kg', 1),
('Refresco en polvo', 26.0, 'litros', 6),
('Frutas mixtas', 11.0, 'kg', 2),
('Pescado', 17.5, 'kg', 3),
('Culantro', 23.5, 'kg', 2);


INSERT INTO Reservaciones(ID_cliente, ID_mesa, fecha_reserva, cantidad_personas) VALUES
(16, 6, '2025-04-14 19:00:00', 4),
(9, 2, '2025-04-18 19:00:00', 3),
(5, 7, '2025-04-16 18:00:00', 2),
(14, 1, '2025-04-24 21:30:00', 2),
(18, 10, '2025-04-12 19:00:00', 5),
(9, 8, '2025-04-23 19:30:00', 4),
(9, 4, '2025-04-16 21:00:00', 6),
(13, 1, '2025-04-19 21:00:00', 2),
(13, 7, '2025-04-15 17:00:00', 2),
(17, 10, '2025-04-16 18:30:00', 5),
(19, 7, '2025-04-25 17:00:00', 6),
(18, 4, '2025-04-13 21:30:00', 2),
(11, 8, '2025-04-12 20:00:00', 6),
(4, 9, '2025-04-20 20:30:00', 4),
(13, 9, '2025-04-18 20:30:00', 3);


INSERT INTO Pedidos(ID_cliente, ID_mesa, ID_empleado, fecha_pedido) VALUES
(1, 3, 8, '2025-04-21 20:00:00'),
(15, 7, 7, '2025-04-20 15:00:00'),
(9, 10, 8, '2025-04-10 13:00:00'),
(16, 6, 9, '2025-04-23 16:00:00'),
(2, 6, 4, '2025-04-19 20:30:00'),
(15, 7, 2, '2025-04-24 15:00:00'),
(7, 1, 3, '2025-04-16 12:30:00'),
(4, 6, 9, '2025-04-13 17:30:00'),
(4, 7, 9, '2025-04-20 12:30:00'),
(8, 10, 10, '2025-04-16 16:00:00'),
(11, 10, 4, '2025-04-13 17:30:00'),
(9, 4, 5, '2025-04-18 14:00:00'),
(14, 4, 2, '2025-04-15 15:30:00'),
(5, 2, 8, '2025-04-19 20:00:00'),
(5, 6, 4, '2025-04-13 16:00:00');


INSERT INTO DetallePedidos(ID_pedido, ID_plato, cantidad) VALUES
(1, 4, 3),
(1, 9, 2),
(2, 13, 2),
(2, 8, 3),
(2, 11, 1),
(3, 2, 1),
(3, 5, 2),
(3, 3, 1),
(4, 3, 3),
(4, 8, 3),
(5, 14, 2),
(5, 7, 3),
(6, 10, 3),
(6, 9, 1),
(6, 12, 2),
(7, 3, 2),
(7, 12, 1),
(8, 8, 2),
(8, 4, 2),
(8, 9, 3),
(9, 8, 1),
(9, 6, 2),
(9, 12, 3),
(10, 2, 3),
(10, 5, 2),
(10, 7, 3),
(11, 4, 1),
(11, 14, 3),
(12, 11, 2),
(12, 8, 2),
(12, 6, 1),
(13, 4, 1),
(13, 10, 2),
(14, 13, 3),
(14, 2, 2),
(14, 8, 2),
(15, 7, 1),
(15, 8, 3),
(15, 12, 2);


INSERT INTO Facturacion(ID_pedido, fecha, total, metodo_pago) VALUES
(1, '2025-04-22 13:00:00', 12500, 'Sinpe Movil'),
(2, '2025-04-19 16:00:00', 22600, 'Efectivo'),
(3, '2025-04-12 19:30:00', 25000, 'Efectivo'),
(4, '2025-04-22 21:30:00', 25000, 'Efectivo'),
(5, '2025-04-22 18:30:00', 17250, 'Tarjeta'),
(6, '2025-04-15 20:30:00', 22600, 'Efectivo'),
(7, '2025-04-15 21:30:00', 22600, 'Efectivo'),
(8, '2025-04-23 18:30:00', 25000, 'Tarjeta'),
(9, '2025-04-15 16:30:00', 10450, 'Sinpe Movil'),
(10, '2025-04-12 19:00:00', 15400, 'Efectivo'),
(11, '2025-04-12 15:30:00', 25000, 'Sinpe Movil'),
(12, '2025-04-13 16:30:00', 12500, 'Tarjeta'),
(13, '2025-04-14 18:30:00', 15400, 'Efectivo'),
(14, '2025-04-19 13:00:00', 25000, 'Tarjeta'),
(15, '2025-04-17 15:30:00', 25000, 'Tarjeta');


INSERT INTO DetalleIngredientes(ID_plato, ID_insumo, cantidad_requerida, unidad) VALUES
(1, 5, 3.0, 'kg'),
(1, 15, 2.5, 'kg'),
(2, 1, 1.0, 'kg'),
(2, 13, 1.0, 'litros'),
(3, 9, 1.0, 'kg'),
(3, 11, 2.5, 'kg'),
(4, 17, 2.5, 'litros'),
(4, 4, 1.5, 'kg'),
(5, 6, 1.5, 'kg'),
(5, 16, 1.0, 'litros'),
(5, 12, 2.5, 'kg'),
(6, 6, 1.0, 'kg'),
(6, 5, 1.0, 'kg'),
(6, 8, 1.5, 'kg'),
(7, 4, 1.5, 'kg'),
(7, 13, 2.5, 'litros'),
(7, 17, 2.0, 'litros'),
(8, 6, 1.0, 'kg'),
(8, 10, 1.5, 'kg'),
(9, 3, 1.5, 'kg'),
(9, 18, 2.0, 'kg'),
(9, 9, 1.5, 'kg'),
(10, 17, 2.0, 'litros'),
(10, 11, 2.5, 'kg'),
(11, 13, 2.0, 'litros'),
(11, 6, 1.5, 'kg'),
(11, 17, 1.0, 'litros'),
(12, 8, 1.5, 'kg'),
(12, 12, 1.5, 'kg'),
(13, 14, 1.5, 'kg'),
(13, 19, 2.5, 'kg'),
(13, 18, 0.5, 'kg'),
(14, 1, 1.0, 'kg'),
(14, 13, 2.5, 'litros'),
(14, 12, 3.0, 'kg'),
(15, 3, 1.0, 'kg'),
(15, 12, 1.5, 'kg');

