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
(10, 10);


INSERT INTO inventario (ID_inventario, ID_sucursal, ID_pelicula, cantidad)
VALUES (1, 1, 1, 10),
(2, 2, 2, 15),
(3, 3, 3, 20),
(4, 4, 4, 25),
(5, 5, 5, 30);

INSERT INTO sucursales (ID_sucursal, ID_inventario, nombre, direccion)
VALUES (1, 1, 'Sucursal 1', 'Calle 101'),
(2, 2, 'Sucursal 2', 'Calle 201'),
(3, 3, 'Sucursal 3', 'Calle 202'),
(4, 4, 'Sucursal 4', 'Calle 203'),
(5, 5, 'Sucursal 5', 'Calle 204');








