# Grupo-1
Melina Figueroa - Celeste Demaria - Anicia Flores - Rocío Albariño 

# Base de Datos Trailerflix

Este diseño de base de datos tiene como punto de partida el archivo JSON de Trailerflix y se ha realizado utilizando el Modelo Relacional. Cumple con la Tercera Forma Normal (3FN), asegurando que las tablas estén en 2FN y no tengan dependencias transitivas. En otras palabras, todos los atributos dependen de la clave primaria y no de otro atributo.

## Entidades y Tablas

Definimos 6 entidades y diseñamos 7 tablas:

1. **Cartelera/Catálogo:** Esta tabla contiene información sobre las películas y series disponibles en Trailerflix. Cada entrada tiene un ID único como clave primaria. Los atributos como "Título," "Resumen," "Temporadas," "Poster," y "Trailer" son dependientes de la clave primaria.

2. **Actores:** Representa a los actores que participan en las películas o series. Cada actor tiene un ID único como clave primaria.

3. **Categorías:** Almacena las categorías a las que pertenecen las películas y series. Aunque no se muestra una relación directa con otras tablas, la relación está implícita a través de las asignaciones de categorías a películas y series en la tabla "Cartelera/Catálogo."

4. **Género:** Almacena los géneros a los que pertenecen las películas y series. Cada género tiene un ID único como clave primaria.

5. **Tags:** Almacena etiquetas que pueden estar relacionadas con las películas y series. Cada etiqueta tiene un ID único como clave primaria, proporcionando información más detallada o características especiales.

6. **Reparto:** Se utiliza para establecer las relaciones entre las películas/series y los actores que participan en ellas.

7. **Peliculas_Tags:** Esta es una tabla de relación que se utiliza para asociar películas o series con etiquetas específicas. Cada entrada en esta tabla contiene un ID único, así como referencias a la película/serie relevante y a la etiqueta correspondiente.

## Estructura de las Tablas

- **Cartelera/Catálogo**
  - ID (Clave Primaria)
  - Título
  - Resumen
  - Temporadas (para series)
  - Poster (ruta del póster)
  - Trailer (URL del tráiler)
  - ID_Género (Clave Externa referenciando la tabla Género)
  - ID_Categoría (Clave Externa referenciando la tabla Categorías)
  - ID_Tags (Clave Externa referenciando la tabla Tags)

- **Actores**
  - ID (Clave Primaria)
  - Nombre del actor

- **Categorías**
  - ID (Clave Primaria)
  - Nombre de la categoría

- **Género**
  - ID (Clave Primaria)
  - Nombre del género

- **Tags**
  - ID (Clave Primaria)
  - Nombre del tag

- **Reparto**
  - ID (Clave Primaria)
  - ID_Película/Serie (Clave Externa referenciando la tabla Cartelera)
  - ID_Actor (Clave Externa referenciando la tabla Actores)

- **Peliculas_Tags**
  - ID (Clave Primaria)
  - ID_Película/Serie (Clave Externa referenciando la tabla Cartelera/Catálogo)
  - ID_Tag (Clave Externa referenciando la tabla Tags)

## Relaciones Clave

Hemos establecido relaciones clave entre las tablas:

- La tabla 'Cartelera/Catálogo' se relaciona con la tabla 'Género' mediante la columna 'ID_Género,' permitiendo asignar a cada película o serie un género específico.

- La tabla 'Cartelera/Catálogo' se relaciona con la tabla 'Categorías' mediante la columna 'ID_Categoría,' facilitando la clasificación de películas o series en categorías específicas.

- La tabla 'Peliculas_Tags' permite etiquetar películas/series con palabras clave específicas y asociar múltiples etiquetas con una película o serie.

- La tabla 'Reparto' establece relaciones entre películas/series y actores mediante las columnas 'ID_Película/Serie' e 'ID_Actor,' respectivamente.

Estas relaciones se han diseñado con el objetivo de cumplir rigurosamente con la Tercera Forma Normal (3FN), asegurando que no haya dependencias transitivas y que los datos estén organizados en tablas relacionales de manera óptima.

## Diagrama Entidad-Relación:
![DER de trailerflix](https://i.ibb.co/ryNCmNd/dertrailerflix.png)
