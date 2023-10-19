-- Para la tabla genero:
INSERT INTO genero (nombre_genero)
VALUES ('Suceso Real'),
       ('Drama'),
       ('Ciencia Ficción');

-- Para la tabla categoria:
INSERT INTO categoria (nombre_categoria)
VALUES ('Serie'),
       ('Película');
       
-- Para la tabla actores:
INSERT INTO actores (nombre_actor)
VALUES ('Claire Fox'),
       ('Olivia Colman'),
       ('Matt Smith'),
       ('Tobias Menzies'),
       ('Vanesa Kirby'),
       ('Helena Bonham Carter'),
       ('Lili Reinhart'),
       ('Casey Cott'),
       ('Camila Mendes'),
       ('Marisol Nichols'),
       ('Madelaine Petsch'),
       ('Mädchen Amick'),
       ('Pedro Pascal'),
       ('Carl Weathers'),
       ('Misty Rosas'),
       ('Chris Bartlett'),
       ('Rio Hackford'),
       ('Giancarlo Esposito');

-- Para la tabla tag:
INSERT INTO tag (nombre_tag)
VALUES ('Drama'),
       ('Suceso Real'),
       ('Misterio'),
       ('Ficción'),
       ('Sci-Fi'),
       ('Fantasía'),
       ('Acción');


-- Para la tabla cartelera
INSERT INTO cartelera (titulo, resumen, poster, temporadas, trailer, tipo, id_genero, id_categoria, id_tag)
VALUES ('The Crown', 'Este drama narra las rivalidades políticas...', './posters/1.jpg', 4, 'https://www.youtube.com/embed/JWtnJjn6ng0', 'serie', 2, 1, 1),
       ('Riverdale', 'El paso a la edad adulta incluye sexo, romance, escuela y familia...', './posters/2.jpg', 5, 'https://www.youtube.com/embed/HxtLlByaYTc', 'serie', 3, 1, 1),
       ('The Mandalorian', 'Ambientada tras la caída del Imperio...', './posters/3.jpg', 2, 'https://www.youtube.com/embed/aOC8E8z_ifw', 'serie', 1, 1, 3),;


-- Para la tabla pelicula_tags
INSERT INTO peliculas_tags (id_pelicula_serie, id_tags)
VALUES (1, 1),
       (1, 2),
       (2, 1),
       (2, 3),
       (2, 4),
       (3, 5),
       (3, 6),
       (3, 7);


-- Para la tabla reparto
INSERT INTO reparto (id_pelicula_serie, id_actor)
VALUES (1, 1),
       (1, 2),
       (1, 3),
       (1, 4),
       (1, 5),
       (1, 6),
       (2, 7),
       (2, 8),
       (2, 9),
       (2, 10),
       (2, 11),
       (2, 12),
       (3, 13),
       (3, 14),
       (3, 15),
       (3, 16),
       (3, 17),
       (3, 18);