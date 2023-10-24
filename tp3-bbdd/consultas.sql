-- 1. Obtener una lista de películas por género. Realizar una consulta que devuelva todas las películas de un género específico. Por ejemplo, mostrar todas las películas de género "Acción", "Terror" o "Suspenso".
select c.titulo
from cartelera as c
join genero as g 
on c.id_genero = g.id
where g.nombre in ('Acción','Terror','Suspenso');

-- 2. Obtener una lista de películas por tags. Realizar una consulta que devuelva todas las películas con los tags "Aventura" y "Ciencia Ficción" o "Aventura" y "Fantasía".
SELECT c.titulo
FROM cartelera c
JOIN pelicula_tags pt1 ON c.id = pt1.id_pelicula_serie
JOIN pelicula_tags pt2 ON c.id = pt2.id_pelicula_serie
JOIN tag t1 ON pt1.id_tags = t1.id
JOIN tag t2 ON pt2.id_tags = t2.id
WHERE (t1.nombre = 'Aventura' AND t2.nombre = 'Ciencia Ficción')
   OR (t1.nombre = 'Aventura' AND t2.nombre = 'Fantasía');

-- 3. Generar un informe donde se visualicen todos los títulos y categorías que en su resumen contengan la palabra "misión".
SELECT c.titulo, ca.nombre AS categoria
FROM cartelera c
JOIN categoria ca ON c.id_categoria = ca.id
WHERE c.resumen LIKE '%misión%';

-- 4. Generar un informe donde se visualicen las series con al menos 3 temporadas.
SELECT titulo, temporadas
FROM cartelera
WHERE tipo = 'serie' AND temporadas >= 3;

-- 5. Encontrar cuántas películas/series trabajó el actor 'Chris Pratt'.
SELECT COUNT(*) AS cantidad
FROM cartelera c
JOIN reparto r ON c.id = r.id_pelicula_serie
JOIN actores a ON r.id_actor = a.id
WHERE a.nombre = 'Chris Pratt';

-- 6. Informar actrices/actores y sus trabajos fílmicos. Mostrar el nombre completo de actrices/actores, el título de sus trabajos fílmicos, la categoría y el género.
SELECT 
    CONCAT(a.nombre, ' ', a.apellido) AS nombre_completo,
    c.titulo AS trabajo_filmico,
    ca.nombre AS categoria,
    g.nombre AS genero
FROM reparto r
JOIN actores a ON r.id_actor = a.id
JOIN cartelera c ON r.id_pelicula_serie = c.id
LEFT JOIN categoria ca ON c.id_categoria = ca.id
LEFT JOIN genero g ON c.id_genero = g.id;

-- 7. Ver solo la categoría "películas". Mostrar el título en mayúscula, el género (en mayúscula), los tags (separados por coma en la misma columna, usando concat o group_concat), duración y el enlace al trailer.
SELECT
    UPPER(c.titulo) AS TituloEnMayuscula,
    UPPER(g.nombre) AS GeneroEnMayuscula,
    GROUP_CONCAT(DISTINCT t.nombre SEPARATOR ', ') AS Tags,
    c.duracion,
    c.trailer
FROM cartelera c
JOIN genero g ON c.id_genero = g.id
LEFT JOIN pelicula_tags pt ON c.id = pt.id_pelicula_serie
LEFT JOIN tag t ON pt.id_tags = t.id
WHERE c.tipo = 'pelicula' AND c.id_categoria = 1
GROUP BY c.id;

-- 8. Ver solo la categoría "series". Mostrar el título en mayúscula, el género (en mayúscula), los tags (separados por coma en la misma columna, usando concat o group_concat), la cantidad de temporadas, el enlace al trailer y el resumen.
SELECT
    UPPER(c.titulo) AS TituloEnMayuscula,
    UPPER(g.nombre) AS GeneroEnMayuscula,
    GROUP_CONCAT(DISTINCT t.nombre SEPARATOR ', ') AS Tags,
    c.temporadas AS CantidadDeTemporadas,
    c.trailer AS EnlaceAlTrailer,
    c.resumen
FROM cartelera c
JOIN genero g ON c.id_genero = g.id
LEFT JOIN pelicula_tags pt ON c.id = pt.id_pelicula_serie
LEFT JOIN tag t ON pt.id_tags = t.id
WHERE c.tipo = 'serie' AND c.id_categoria = 1;

-- 9. Identificar la película/serie con más actores y la que posee menos actores (indicar la cantidad de actores en ambos casos).
SELECT
    MAX(num_actores) AS MaxActores,
    MIN(num_actores) AS MinActores,
    (
        SELECT c_max.titulo
        FROM cartelera c_max
        WHERE c_max.id = actores_max.id_pelicula_serie
    ) AS TituloMaxActores,
    (
        SELECT c_min.titulo
        FROM cartelera c_min
        WHERE c_min.id = actores_min.id_pelicula_serie
    ) AS TituloMinActores
FROM (
    SELECT
        c.id AS id_pelicula_serie,
        COUNT(r.id_actor) AS num_actores
    FROM cartelera c
    LEFT JOIN reparto r ON c.id = r.id_pelicula_serie
    GROUP BY c.id
) AS actores_por_pelicula_serie
ORDER BY MaxActores DESC
LIMIT 1


-- 10. Contar la cantidad total de películas registradas.
SELECT COUNT(*) AS CantidadTotalPeliculas
FROM cartelera
WHERE tipo = 'pelicula';

-- 11. Contar la cantidad total de series registradas.
SELECT COUNT(*) AS CantidadTotalSeries
FROM cartelera
WHERE tipo = 'serie';

-- 12. Obtener una lista de series en orden descendente basado en la cantidad de temporadas.
SELECT titulo, temporadas
FROM cartelera
WHERE tipo = 'serie'
ORDER BY temporadas DESC;

-- 13. Agregar el campo "Fecha de lanzamiento" a la tabla de trabajos fílmicos como tipo Date y realizar la actualización con las fechas de películas/series del género "Aventura".
ALTER TABLE cartelera
ADD fecha_lanzamiento DATE;

UPDATE cartelera
SET fecha_lanzamiento = '2022-01-01' 
WHERE tipo = 'serie'  
AND id_genero = (SELECT id FROM genero WHERE nombre = 'Aventura');

UPDATE cartelera
SET fecha_lanzamiento = '2022-01-01'  
WHERE tipo = 'peliculas'  
AND id_genero = (SELECT id FROM genero WHERE nombre = 'Aventura');


-- 14. Buscar películas por palabra clave. Realizar una consulta que permita a los usuarios buscar películas utilizando palabras clave en el título o la descripción (por ejemplo, palabras clave como "Aventura", "madre" o "Ambientada").
SELECT titulo, resumen
FROM cartelera
WHERE titulo LIKE '%Aventura%' OR resumen LIKE '%Aventura%'
   OR titulo LIKE '%madre%' OR resumen LIKE '%madre%'
   OR titulo LIKE '%Ambientada%' OR resumen LIKE '%Ambientada%';

-- 15. Sumar la tabla "Ranking" que incluye el ID de la película/serie, calificación y comentarios. Utilizar operaciones SQL como joins, unions, concat, count, group by, etc.
SELECT c.id AS id_pelicula_serie,
       AVG(r.calificacion) AS promedio_calificacion
FROM cartelera c
JOIN ranking r ON c.id = r.id_pelicula_serie
GROUP BY c.id;


SELECT COUNT(*) AS total_registros
FROM ranking;

