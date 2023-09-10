# Grupo-1

:computer: Grupo 1 Backend Ingenias:
Melina Figueroa - Celeste Demaria - Anicia Flores - Jazmin Araniti - Berenice Bau

:movie_camera: Proyecto: Crear la aplicación de Backend para el sitio web de Trailerflix.



:small_blue_diamond: Pre-entrega 1:

* Crear la estructura básica de un servidor web utilizando Express JS.
* Incluye el archivo .ENV donde debes almacenar en una variable de entorno con la ruta parcial + nombre del archivo de datos JSON, además del puerto de ejecución del servidor web.
* El archivo JSON debes guardarlo en una subcarpeta del proyecto llamada /database/
* El número de puerto del servidor web debe ser 3008
* Carga en una constante llamada TRAILERFLIX el contenido del archivo JSON en formato Array de objetos (usando fileSystem API + JSON.parse para obtener y transformar los datos)
* Crea un contenido en formato texto de bienvenida para la ruta raíz del proyecto “/”. El mensaje a mostrar puede ser texto plano, o contenido HTML. (Mejor si es este último)

Con la estructura base del proyecto ya desarrollada, deberás crear los endpoints necesarios para listar el catálogo de películas y series por diferentes posibles búsquedas.

Endpoints:

* /catalogo que liste todo el contenido de trailerflix JSON
* /titulo/:title que liste el catálogo de películas y/o series que se
aproxime al título enviado. (la búsqueda del nombre debe ser parcial)
* /categoria/:cat que liste todo el contenido del archivo JSON de acuerdo a la categoría enviada como parámetro (serie o película)
* /reparto/:act que liste el catálogo que incluya a la actriz o actor indicado por el nombre. (la búsqueda del nombre debe ser parcial)
* /trailer/:id que retorne la URL del trailer de la película o serie. Si ésta no posee video asociado, que retorne un mensaje en formato JSON notificando la no disponibilidad del mismo.


1. Para el endpoint /catalogo debes retornar todo el contenido del archivo
2. Para el endpoint /titulo/:title deberás utilizar rutas dinámicas recibiendo como parámetro el título o parte de este, aplicando la función de orden superior .filter() junto al método .includes() y el método toUpperCase() o toLowerCase() para normalizar los textos de búsqueda correspondiente
3. Para el endpoint /categoria/:cat utiliza también .filter() y retorna todos los resultados encontrados. (Aquí son dos posibles valores solamente)
4. Para el endpoint /reparto/:act aplica también la misma lógica utilizada en el endpoint /titulo/:title. (Como resultado, retorna solo un array con la propiedad “reparto” y la propiedad “titulo” y sus respectivos datos (no devuelvas todo el contenido)) ¿recuerdas a .map()?
5. Para el endpoint /trailer/:id debes retornar las propiedades “id”, “titulo”, “trailer”. (cuidado,
porque no todas las películas/series poseen la propiedad tráiler, por lo tanto debes aplicar el operador de acceso condicional {objeto?.trailer})

:small_blue_diamond: Pre Entrega 02: Desarrollar una API RESTful utilizando MongoDB como base de datos.

Pasos:
1-Definición de Datos: Elegir la estructura de datos de una de uno de los siguientes JSON que se encuentra en esta carpeta (puede ser computacion, eletronicos, etc)
2-Importación de Datos: Importar el archivo JSON a la base de datos MongoDB.
3-Endpoints Funcionales: Crear al menos dos endpoints que utilicen el método GET para consultar datos.
4-Funcionalidad de Escritura: Implementar un endpoint utilizando el método POST para agregar nuevos datos.
5-Actualización de Datos: Desarrollar un endpoint con el método PUT para actualizar información existente.
6-Eliminación de Datos: Diseñar un endpoint con el método DELETE para eliminar registros.
7-Trabajo en Equipo: Realizar la tarea en grupos de entre 3 y 5 participantes mínimo.
8-Manejo de Errores: Garantizar la gestión adecuada de errores y retornar códigos de estado correspondientes en cada endpoint.
Documentación:
1-Elaborar un archivo Markdown detallando el uso de la API.
2-Incluir ejemplos de código para consultas, inserciones y actualizaciones de datos.
3-Agregar un resumen de la documentación al comienzo del archivo.

Entrega del Trabajo:
1-Subir el proyecto al repositorio GitHub de grupo.
2-Asegurar que el trabajo esté claramente documentado y organizado. 
3-Enviar el enlace del repositorio a través del campus virtual.
