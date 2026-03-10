-- Ver las tablas
select * from my_brick_collection;

select * from your_brick_collection;


-- UNION usando columnas en común
select colour, shape
from my_brick_collection
union
select colour, shape
from your_brick_collection;


-- DISTINCT ejemplos
select distinct *
from my_brick_collection;

select distinct shape
from your_brick_collection;


-- UNION ALL (incluye duplicados)
select colour, shape
from my_brick_collection
union all
select colour, shape
from your_brick_collection;


-- Ejercicio: mostrar todas las shapes incluyendo duplicados
select shape from my_brick_collection
union all
select shape from your_brick_collection
order by shape;


-- MINUS ejemplo
select colour, shape
from your_brick_collection
minus
select colour, shape
from my_brick_collection;


-- INTERSECT ejemplo
select colour, shape
from your_brick_collection
intersect
select colour, shape
from my_brick_collection;


-- Ejercicio: shapes que están en mi tabla pero no en la tuya
select shape from my_brick_collection
minus
select shape from your_brick_collection;


-- Ejercicio: colores que están en ambas tablas
select colour from my_brick_collection
intersect
select colour from your_brick_collection
order by colour;