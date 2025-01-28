-- Active: 1738092801618@@127.0.0.1@5432@movierental

CREATE DATABASE IF NOT EXISTS movierental;

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

CREATE Table alquiler_peliculas (
    ID_alquiler INT,
    ID_pelicula INT,
    foreign key (ID_alquiler) references alquileres(ID_alquiler),
    foreign key (ID_pelicula) references peliculas(ID_pelicula)
)

CREATE Table inventario (
    ID_inventario INT PRIMARY KEY NOT NULL,
    ID_pelicula INT,
    ID_sucursal INT,
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
















