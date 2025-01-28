-- 1. Calcular los ingresos generados por cada sucursal en el último mes
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




