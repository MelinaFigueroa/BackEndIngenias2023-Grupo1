# Grupo-1
Melina Figueroa - Celeste Demaria - Anicia Flores - Rocío Albariño 



Esta Base de Datos tiene como base el archivo JSON de Trailerflix. 

Se realizó utilizando el Modelo Relacional y cumple con la tercera forma normal, esto es: que la tabla está en 2FN y no tiene dependencias transitivas. Es decir, todos los atributos dependen de la clave primaria y no de otro atributo.

Para lograrlo, primero identificamos las entidades y sus relaciones y luego decidimos  y diseñamos las tablas correspondientes.

Definimos 6 entidades y diseñamos 7 tablas: 

1. Cartelera/Catálogo:  Esta tabla contiene información sobre las películas y series disponibles en Trailerflix. Cada entrada tiene un ID único como clave primaria. 

En este caso, los atributos como "Título," "Resumen," "Temporadas," "Poster," y "Trailer" solo son dependientes de la clave primaria.


2. Actores: Representa a los actores que participan en las películas o series.  Cada actor tiene un ID único como clave primaria.


3. Categorías: Almacena las categorías a las que pertenecen las películas y series. Cada categoría tiene un ID único como clave primaria.

Aunque en el diseño  no se muestre una relación directa de esta tabla con las otras, la relación está implícita a través de las asignaciones de categorías a películas y series en la tabla "Cartelera/Catálogo". 

Cada entrada en la tabla "Cartelera/Catálogo" puede tener un campo que especifique a qué categoría pertenece.

4. Género: Almacena los géneros a los que pertenecen las películas y series. Cada género tiene un ID único como clave primaria.

5. Tags: Almacena etiquetas que pueden estar relacionadas con las películas y series. Cada etiqueta tiene un ID único como clave primaria. Proporcionan información más detallada o características especiales.


6. Reparto: Se utiliza para establecer las relaciones entre las películas/series y los actores que participan en ellas.


7. Películas_Tags: Esta es una 'tabla de relación'. Se utiliza para asociar películas o series con etiquetas específicas. Cada entrada en esta tabla contiene un ID único, así como referencias a la película/serie relevante y a la etiqueta correspondiente.


Este es nuestro diseño de la Base de Datos Trailerflix:

Cartelera/Catálogo
- ID (Clave Primaria)
- Título
- Resumen
- Temporadas (para series)
- Poster (ruta del póster)
- Trailer (URL del tráiler)
- ID_Género (Clave Externa referenciando la tabla Género)
- ID_Categoría (Clave Externa referenciando la tabla Categorías)
- ID_Tags(Clave Externa referenciando la Tabla Tags)

Tabla Actores
- ID (Clave Primaria)
- Nombre del actor

Tabla Categorías
- ID (Clave Primaria)
- Nombre de la categoría

Tabla Género
- ID (Clave Primaria)
- Nombre del género

Tabla Tags
- ID (Clave Primaria)
- Nombre del tag

Tabla Reparto
- ID (Clave Primaria)
- ID_Película/Serie (Clave Externa referenciando la tabla Cartelera)
- ID_Actor (Clave Externa referenciando la tabla Actores)

Tabla "Peliculas_Tags":
-ID (Clave Primaria)
-ID_Película/Serie (Clave Externa referenciando la tabla "Cartelera/Catálogo")
-ID_Tag (Clave Externa referenciando la tabla "Tags")

En este diseño, hemos creado 6 tablas, cada una corresponde a una entidad y una tabla que establece una relación: (Cartelera/Catálogo, Actores, Catergoría, Género, Tags y Reparto, Peliculas_Tags).

Utilizamos claves primarias y claves externas para establecer relaciones significativas entre las tablas. 

En cada tabla, el campo de ID se utiliza como clave primaria para identificar de manera única cada entrada. Además, hemos introducido relaciones clave entre las tablas para enlazar la información de manera coherente.

Tomando como referencia estas entidades y relaciones, hemos establecido los siguientes vínculos:

La tabla 'Cartelera/Catálogo' está relacionada con la tabla 'Género' a través de la columna 'ID_Género,' lo que permite asignar a cada película o serie un género específico.

La tabla 'Cartelera/Catálogo' se relaciona con la tabla 'Categorías' mediante la columna 'ID_Categoría,' lo que facilita la clasificación de películas o series en categorías específicas.

La tabla 'Cartelera/Catálogo' también se vincula con la tabla 'Tags' mediante la columna 'ID_Tag,' lo que posibilita la asociación de etiquetas particulares con cada película o serie.

La tabla 'Peliculas_Tags' permite etiquetar películas o series con palabras clave específicas que describan su contenido o características, y luego asociar múltiples etiquetas con una película o serie. En lugar de almacenar todas las etiquetas directamente en la tabla "Cartelera/Catálogo," lo que podría llevar a la duplicación de datos, la tabla "Peliculas_Tags" actúa como un intermediario que facilita la asignación de etiquetas a películas/series de manera ordenada y sin redundancias.

La tabla 'Reparto' se encarga de establecer relaciones entre películas/series y actores mediante las columnas 'ID_Película/Serie' e 'ID_Actor,' respectivamente.

Estas relaciones se han diseñado con el objetivo de cumplir rigurosamente con la Tercera Forma Normal (3FN), lo que asegura que no haya dependencias transitivas y que los datos estén organizados en tablas relacionales de manera óptima."


Finalmente y resumiendo, el diseño gráfico de la Base de Datos Netflix quedó así: 


La relación entre "Cartelera/Catálogo" y "Género":

La tabla "Cartelera/Catálogo" está relacionada con la tabla "Género" mediante la columna "ID_Género."
La relación entre "Cartelera/Catálogo" y "Categorías":

La tabla "Cartelera/Catálogo" se relaciona con la tabla "Categorías" mediante la columna "ID_Categoría."
La relación entre "Cartelera/Catálogo" y "Tags":

La tabla "Cartelera/Catálogo" se relaciona con la tabla "Tags" mediante la columna "ID_Tag."
La relación entre "Peliculas_Tags" y "Cartelera/Catálogo":

La tabla "Peliculas_Tags" establece una relación entre "Cartelera/Catálogo" y "Tags" permitiendo la asignación de etiquetas a películas/series.

La relación entre "Reparto" y "Cartelera/Catálogo":

La tabla "Reparto" establece una relación entre "Cartelera/Catálogo" y "Actores" mediante las columnas "ID_Película/Serie" e "ID_Actor," permitiendo relacionar películas/series con actores.
Por lo tanto, el diseño gráfico debe reflejar estas relaciones adicionales para representar con precisión la estructura de tu base de datos actualizada.

...............................................................................................................................................................................

DOCUMENTO EN MARKDOWN

# Base de Datos Trailerflix

Este diseño de base de datos tiene como base el archivo JSON de Trailerflix y se ha realizado utilizando el Modelo Relacional. Cumple con la Tercera Forma Normal (3FN), asegurando que las tablas estén en 2FN y no tengan dependencias transitivas. En otras palabras, todos los atributos dependen de la clave primaria y no de otro atributo.

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

- La tabla 'Cartelera/Catálogo' se vincula con la tabla 'Tags' mediante la columna 'ID_Tags,' permitiendo la asociación de etiquetas particulares con cada película o serie.

- La tabla 'Peliculas_Tags' permite etiquetar películas/series con palabras clave específicas y asociar múltiples etiquetas con una película o serie.

- La tabla 'Reparto' establece relaciones entre películas/series y actores mediante las columnas 'ID_Película/Serie' e 'ID_Actor,' respectivamente.

Estas relaciones se han diseñado con el objetivo de cumplir rigurosamente con la Tercera Forma Normal (3FN), asegurando que no haya dependencias transitivas y que los datos estén organizados en tablas relacionales de manera óptima.

## Diagrama Entidad-Relación:
![DER de trailerflix](https://drive.google.com/file/d/11QPMk7JawOEpthEKagq9lj5rXS6xph4v/view?usp=sharing)