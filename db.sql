-- Active: 1738092801618@@127.0.0.1@5432@movierental

CREATE TABLE Clientes (
    ID_cliente INT PRIMARY KEY NOT NULL,
    nombre VARCHAR(100),
    contacto VARCHAR(50),
    direccion VARCHAR(30)
);

CREATE TABLE Categorias (
    ID_categoria INT PRIMARY KEY NOT NULL,
    nombre VARCHAR(100)

);

create table pagos	(
	ID_pago INT  PRIMARY KEY,
    ID_cliente INT,
    fecha DATE,
    monto NUMERIC(10, 2),
	foreign key (ID_cliente) references Clientes(ID_cliente)
);

CREATE TABLE peliculas  (
    ID_pelicula INT PRIMARY KEY NOT NULL,
    ID_categoria INT,
    titulo VARCHAR(100),
    director VARCHAR(100),
    año_lanzamiento VARCHAR(100),
    disponibilidad BOOLEAN,
    precio_alquiler NUMERIC(10, 2),
    foreign key (ID_categoria) references Categorias(ID_categoria)
);

CREATE TABLE alquileres (
    ID_alquiler INT PRIMARY KEY NOT NULL,
    ID_cliente INT,
    ID_pelicula INT,
    fecha_alquiler DATE,
    fecha_devolucion DATE,
    monto_alquiler NUMERIC(10, 2),
    foreign key (ID_cliente) references Clientes(ID_cliente),
    foreign key (ID_pelicula) references peliculas(ID_pelicula)
);

CREATE Table inventario (
    ID_inventario INT PRIMARY KEY NOT NULL,
    ID_pelicula INT,
    cantidad INT,
    foreign key (ID_pelicula) references peliculas(ID_pelicula)
);

CREATE Table sucursales (
    ID_sucursal INT PRIMARY KEY NOT NULL,
    ID_inventario INT,
    nombre VARCHAR(100),
    direccion VARCHAR(100),
    foreign key (ID_inventario) references inventario(ID_inventario)
    );

CREATE Table alquiler_peliculas (
    ID_alquiler INT,
    ID_pelicula INT,
    foreign key (ID_alquiler) references alquileres(ID_alquiler),
    foreign key (ID_pelicula) references peliculas(ID_pelicula)
)


INSERT INTO clientes (ID_cliente, nombre, contacto, direccion) 
VALUES (1, 'Juan Perez', 'juan.perez@correo.com', 'Calle 123'),
(2, 'Maria Rodriguez', 'maria.rodriguez@correo.com', 'Calle 108'),
(3, 'Pedro Sanchez', 'pedro.sanchez@correo.com', 'Calle 107'),
(4, 'Ana Lopez', 'ana.lopez@correo.com', 'Calle 105'),
(5, 'Luis Hernandez', 'luis.hernandez@correo.com', 'Calle 104'),
(6, 'Elena Garcia', 'elena.garcia@correo.com', 'Calle 103'),
(7, 'Javier Moreno', 'javier.moreno@correo.com', 'Calle 102'),
(8, 'Sofia Diaz', 'sofia.diaz@correo.com', 'Calle 101'),
(9, 'Alejandro Gomez', 'alejandro.gomez@correo.com', 'Calle 201'),
(10, 'Isabel Martin', 'isabel.martin@correo.com', 'Calle 202');

INSERT INTO pagos (ID_pago, ID_cliente, fecha, monto) 
VALUES (1, 1, '2022-01-01', 100.00),
(2, 2, '2022-01-02', 200.00),
(3, 3, '2022-01-03', 300.00),
(4, 4, '2022-01-04', 400.00),
(5, 5, '2022-01-05', 500.00),
(6, 6, '2022-01-06', 600.00),
(7, 7, '2022-01-07', 700.00),
(8, 8, '2022-01-08', 800.00),
(9, 9, '2022-01-09', 900.00),
(10, 10, '2022-01-10', 1000.00);



INSERT INTO categorias (ID_categoria, nombre)
VALUES (1, 'Acción'),
(2, 'Comedia'),
(3, 'Terror'),
(4, 'Romance'),
(5, 'Documental'),
(6, 'Infantil'),
(7, 'Deportes'),
(8, 'Música'),
(9, 'Historia'),
(10, 'Ciencia Ficción');

INSERT INTO peliculas (ID_pelicula, ID_categoria, titulo, director, año_lanzamiento, disponibilidad, precio_alquiler)
VALUES (1, 1, 'El Señor de los Anillos', 'Peter Jackson', '2001', TRUE, 10.00),
(2,2,'Batman','Buñuelo','2001', TRUE, 10.00),
(3, 3, 'El Exorcista', 'William Friedkin', '1973', TRUE, 12.00),
(4, 4, 'La La Land', 'Damien Chazelle', '2011', FALSE, 15.00),
(5, 5, 'El Padrino', 'Francis Ford Coppola', '1999', TRUE, 18.00),
(6, 6, 'Toy Story', 'John Lasseter', '1995', FALSE, 15.00),
(7, 7, 'Rocky', 'Sylvester Stallone', '1976', TRUE, 20.00),
(8, 8, 'La Bamba', 'Luis Valdez', '1987', TRUE, 18.00),
(9, 9, 'El Código Da Vinci', 'Ron Howard', '2006', FALSE, 27.00),
(10, 10, 'El Poderoso Thor', 'Kenneth Branagh', '2024', TRUE, 30.00),
(11, 1, 'El Señor de los Anillos 2', 'Peter Jackson', '2002', FALSE, 15.00),
(12, 2, 'El Señor de los Anillos 3', 'Peter Jackson', '2003', TRUE, 20.00),
(13, 3, 'El Exorcista 2', 'William Friedkin', '1978', TRUE, 25.00),
(14, 4, 'La La Land 2', 'Damien Chazelle','1800', FALSE, 60.00),
(15, 5, 'El Padrino 2', 'Francis Ford Coppola', '1990', TRUE, 20.00);


INSERT INTO alquileres (ID_alquiler, ID_cliente, ID_pelicula,fecha_alquiler, fecha_devolucion, monto_alquiler)
VALUES (1, 1, 1, '2022-01-01', '2022-01-15', 10.00 ),
(2, 2, 2, '2022-01-05', '2022-01-20', 20.00),
(3, 3, 3, '2022-01-10', '2022-01-25', 15.00),
(4, 4, 4, '2022-01-15', '2022-01-30', 10.00),
(5, 5, 5, '2022-01-20', '2022-02-01', 10.00),
(6, 6, 6, '2022-01-25', '2022-02-05', 13.00),
(7, 7, 7, '2022-01-30', '2022-02-10', 18.00),
(8, 8, 8, '2022-02-01', '2022-02-15', 12.00),
(9, 9, 9, '2022-02-05', '2022-02-20', 15.00),
(10, 10, 10, '2022-02-10', '2022-02-25', 10.00);


INSERT INTO alquiler_peliculas (ID_alquiler, ID_pelicula)
VALUES (1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15);

INSERT INTO sucursales (ID_sucursal, ID_inventario, nombre, direccion)
VALUES (1, 1, 'Sucursal 1', 'Calle 101'),
(2, 2, 'Sucursal 2', 'Calle 201'),
(3, 3, 'Sucursal 3', 'Calle 202'),
(4, 4, 'Sucursal 4', 'Calle 203'),
(5, 5, 'Sucursal 5', 'Calle 204');

INSERT INTO inventario (ID_inventario, ID_sucursal, ID_pelicula, cantidad)
VALUES (1, 1, 1, 10),
(2, 2, 2, 15),
(3, 3, 3, 20),
(4, 4, 4, 25),
(5, 5, 5, 30);




-- 1. Calcular los ingresos generados por cada sucursal en el último mes
SELECT s.nombre AS sucursal, 
       SUM(a.monto_alquiler) AS ingresos_totales
FROM alquileres a
JOIN sucursales s ON s.ID_sucursal = a.ID_sucursal
WHERE a.fecha_alquiler >= CURRENT_DATE - INTERVAL '1 month'
GROUP BY s.nombre;

-- 2.Consultar el cliente con el mayor monto total de pagos realizados
SELECT c.nombre, 
       SUM(p.monto) AS total_pagado
FROM pagos p
JOIN clientes c ON c.ID_cliente = p.ID_cliente
GROUP BY c.nombre
ORDER BY total_pagado DESC
LIMIT 1;

-- 3.Obtener el porcentaje de películas alquiladas por género
SELECT ca.nombre AS categoria,
       COUNT(ap.ID_pelicula) * 100.0 / (SELECT COUNT(*) FROM peliculas) AS porcentaje_alquilado
FROM alquiler_peliculas ap
JOIN peliculas p ON ap.ID_pelicula = p.ID_pelicula
JOIN categorias ca ON p.ID_categoria = ca.ID_categoria
GROUP BY ca.nombre;

-- 4.Identificar las sucursales con mayor número de transacciones de alquiler
SELECT s.nombre, 
       COUNT(a.ID_alquiler) AS num_transacciones
FROM alquileres a
JOIN sucursales s ON s.ID_sucursal = a.ID_sucursal
GROUP BY s.nombre
ORDER BY num_transacciones DESC
LIMIT 1;

-- 5.Listar todas las películas disponibles para alquiler, incluyendo detalles como título, género y precio
SELECT p.titulo, 
       ca.nombre AS genero, 
       p.precio_alquiler
FROM peliculas p
JOIN categorias ca ON p.ID_categoria = ca.ID_categoria
WHERE p.disponibilidad = TRUE;

-- 6.Obtener el historial de alquileres de un cliente específico, incluyendo las fechas y los títulos de las películas
SELECT c.nombre AS cliente, 
       p.titulo, 
       a.fecha_alquiler, 
       a.fecha_devolucion
FROM alquileres a
JOIN clientes c ON a.ID_cliente = c.ID_cliente
JOIN peliculas p ON a.ID_pelicula = p.ID_pelicula
WHERE c.ID_cliente = 1; 

-- 7.Consultar las películas con precios de alquiler superiores a un valor especificado
SELECT p.titulo, 
       p.precio_alquiler
FROM peliculas p
WHERE p.precio_alquiler > 20.00;  

-- 8.Listar las películas lanzadas en los últimos 5 años que están disponibles para alquiler
SELECT p.titulo, 
       p.año_lanzamiento, 
       p.precio_alquiler
FROM peliculas p
WHERE p.año_lanzamiento::INTEGER >= EXTRACT(YEAR FROM CURRENT_DATE) - 5
AND p.disponibilidad = TRUE;










