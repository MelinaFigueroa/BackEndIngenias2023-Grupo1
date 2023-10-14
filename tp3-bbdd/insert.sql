/*
El modelo de tablas que has creado se encuentra en la Tercera Forma Normal (3NF).
La Tercera Forma Normal (3NF) se cumple cuando se cumplen las siguientes condiciones:
    - La tabla está en Segunda Forma Normal (2NF).
    - No existen dependencias transitivas en la tabla.
    - En tu modelo de tablas, cada tabla tiene su clave primaria correctamente definida 
    y no existen dependencias transitivas entre los campos. 
Por lo tanto, cumple con la Tercera Forma Normal (3NF).
*/
-- Para la tabla Actores:

INSERT INTO Actores (Nombre_Actor)
VALUES ('Claire Fox, Olivia Colman, Matt Smith, Tobias Menzies, Vanesa Kirby, Helena Bonham Carter'),
       ('Lili Reinhart, Casey Cott, Camila Mendes, Marisol Nichols, Madelaine Petsch, Mädchen Amick'),
       ('Pedro Pascal, Carl Weathers, Misty Rosas, Chris Bartlett, Rio Hackford, Giancarlo Esposito');

-- Para la tabla Categorias:

INSERT INTO Categorias (Nombre_Categoria)
VALUES ('Serie'),
       ('Serie'),
       ('Serie');

-- Para la tabla Genero:
INSERT INTO Genero (Nombre_Genero)
VALUES ('Suceso Real'),
       ('Drama'),
       ('Ciencia Ficción');

-- Para la tabla Tag:
INSERT INTO Tags (Nombre_Tag)
VALUES ('Drama, Suceso Real'),
       ('Drama, Misterio, Ficción'),
       ('Sci-Fi, Fantasía, Acción');




-- Insertar datos en la tabla Cartelera_Catalogo
INSERT INTO Cartelera_Catalogo (Titulo, Resumen, Temporadas, Poster, Trailer, ID_Genero, ID_Categoria, ID_Tag)
VALUES ('The Crown', 'Este drama narra las rivalidades políticas...', 4, './posters/1.jpg', 'https://www.youtube.com/embed/JWtnJjn6ng0', 2, 1, 4),
       ('Riverdale', 'El paso a la edad adulta incluye sexo, romance, escuela y familia...', 5, './posters/2.jpg', 'https://www.youtube.com/embed/HxtLlByaYTc', 3, 1, 7),
       ('The Mandalorian', 'Ambientada tras la caída del Imperio...', 2, './posters/3.jpg', 'https://www.youtube.com/embed/aOC8E8z_ifw', 1, 3, 1),;






*Reparto:*

sql
-- Asegúrate de que existan valores válidos para ID_Pelicula_Serie e ID_Actor
INSERT INTO Reparto (ID_Pelicula_Serie, ID_Actor)
VALUES (1, 1),
       (1, 2),
       (2, 3);


*Peliculas_Tags:*

sql
-- Asegúrate de que existan valores válidos para ID_Pelicula_Serie e ID_Tag
INSERT INTO Peliculas_Tags (ID_Pelicula_Serie, ID_Tag)
VALUES (1, 1),
       (1, 2),
       (2, 3);


*Tabla ID_Genero:*


ID | Nombre_Genero
1  | Ciencia Ficción
2  | Drama


*Tabla Categorias:*


ID | Nombre_Categoria
1  | Serie
2  | Película


*Tabla Tags:*


ID | Nombre_Tag
1  | Sci-Fi
2  | Fantasía
3  | Acción
4  | Drama