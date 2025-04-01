--Tabla Clientes
CREATE TABLE Clientes (
    ID_cliente SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    telefono VARCHAR(15) UNIQUE,
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

--tabla empleados
CREATE TABLE Empleados (
	ID_empleado SERIAL PRIMARY KEY,
	nombre VARCHAR(50) NOT NULL,
	apellido VARCHAR(50) NOT NULL,
	cargo VARCHAR(50) NOT NULL,
	salario DECIMAL(10,2),
	fecha_contratacion DATE NOT NULL,
	telefono VARCHAR(15),
	correo VARCHAR(60) UNIQUE NOT NULL
);

--Tabla mesas
CREATE TABLE Mesas (
	ID_mesa SERIAL PRIMARY KEY,
	numero_mesa INT UNIQUE NOT NULL,
	capacidad INT NOT NULL,
	estado VARCHAR(50) DEFAULT 'Disponible'
);

--Tabla Reservaciones
CREATE TABLE Reservaciones (
	ID_reservacion SERIAL PRIMARY KEY,
	ID_cliente INT,
	ID_mesa INT,
	fecha_reserva TIMESTAMP NOT NULL,
	cantidad_personas INT NOT NULL,
	FOREIGN KEY (ID_cliente) REFERENCES Clientes(ID_cliente) ON DELETE CASCADE,
	FOREIGN KEY (ID_mesa) REFERENCES Mesas(ID_mesa) ON DELETE SET NULL
);

--Tabla categorias Menu
CREATE TABLE CategoriasMenu (
	ID_categoria SERIAL PRIMARY KEY,
	nombre VARCHAR(50) UNIQUE NOT NULL
);

--Tabla Platos
CREATE TABLE Platos (
	ID_plato SERIAL PRIMARY KEY,
	nombre VARCHAR(50) NOT NULL,
	descripcion VARCHAR(150),
	precio DECIMAL(10,2) NOT NULL,
	ID_categoria INT,
	FOREIGN KEY (ID_categoria) REFERENCES CategoriasMenu(ID_categoria) ON DELETE SET NULL
);

--Tabla Pedidos
CREATE TABLE Pedidos(
	ID_pedido SERIAL PRIMARY KEY,
	ID_cliente INT,
	ID_mesa INT,
	ID_empleado INT,
	fecha_pedido TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	FOREIGN KEY (ID_cliente) REFERENCES Clientes(ID_cliente) ON DELETE SET NULL,
	FOREIGN KEY (ID_mesa) REFERENCES Mesas(ID_mesa) ON DELETE SET NULL,
	FOREIGN KEY (ID_empleado) REFERENCES Empleados(ID_empleado) ON DELETE SET NULL
);

-- Tabla DetallePedidos (relacion entre pedidos y platos)
CREATE TABLE DetallePedidos (
    ID_detalle SERIAL PRIMARY KEY,
    ID_pedido INT,
    ID_plato INT,
    cantidad INT NOT NULL,
    FOREIGN KEY (ID_pedido) REFERENCES Pedidos(ID_pedido) ON DELETE CASCADE,
    FOREIGN KEY (ID_plato) REFERENCES Platos(ID_plato) ON DELETE CASCADE
);

-- Tabla Facturacion
CREATE TABLE Facturacion (
    ID_factura SERIAL PRIMARY KEY,
    ID_pedido INT,
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total DECIMAL(10,2) NOT NULL,
    metodo_pago VARCHAR(50) NOT NULL,
    FOREIGN KEY (ID_pedido) REFERENCES Pedidos(ID_pedido) ON DELETE CASCADE
);

-- Tabla Proveedores
CREATE TABLE Proveedores (
    ID_proveedor SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    telefono VARCHAR(15),
    correo VARCHAR(70) UNIQUE,
    direccion VARCHAR(100)
);

-- Tabla Inventario (insumos)
CREATE TABLE Inventario (
    ID_insumo SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL UNIQUE,
    cantidad DECIMAL(10,2) NOT NULL,
    unidad VARCHAR(50) NOT NULL, -- Esto se refiere a kg, litros etc
    ID_proveedor INT,
    FOREIGN KEY (ID_proveedor) REFERENCES Proveedores(ID_proveedor) ON DELETE SET NULL
);

-- Tabla DetalleIngredientes (relación entre platos e insumos)
CREATE TABLE DetalleIngredientes (
    ID_detalle SERIAL PRIMARY KEY,
    ID_plato INT,
    ID_insumo INT,
    cantidad_requerida DECIMAL(10,2) NOT NULL,
    unidad VARCHAR(50) NOT NULL,
    FOREIGN KEY (ID_plato) REFERENCES Platos(ID_plato) ON DELETE CASCADE,
    FOREIGN KEY (ID_insumo) REFERENCES Inventario(ID_insumo) ON DELETE CASCADE
);