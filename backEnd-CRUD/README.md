# Grupo-1
Melina Figueroa - Celeste Demaria - Anicia Flores - Rocío (apellido?) Jazmin Araniti? - Berenice Bau? (creo que estas chicas no siguieron :( 



## Tabla de Contenido

- [Grupo-1](#grupo-1)
  - [Tabla de Contenido](#tabla-de-contenido)
- [Documentación de la API de Artículos de Computación](#documentación-de-la-api-de-artículos-de-computación)
  - [Descripción](#descripción)
  - [Endpoint Principal](#endpoint-principal)
  - [Uso](#uso)
  - [Endpoints](#endpoints)
    - [1. Obtener la página de inicio](#1-obtener-la-página-de-inicio)
    - [2. Obtener todos los artículos de computación](#2-obtener-todos-los-artículos-de-computación)
    - [3. Obtener todos los artículos de computación por nombre](#3-obtener-todos-los-artículos-de-computación-por-nombre)
    - [4. Obtener todos los artículos de computación por primera letra del nombre](#4-obtener-todos-los-artículos-de-computación-por-primera-letra-del-nombre)
    - [5. Crear un nuevo artículo de computación](#5-crear-un-nuevo-artículo-de-computación)
    - [6. Actualizar un artículo de computación por ID](#6-actualizar-un-artículo-de-computación-por-id)
    - [7. Actualizar un artículo de computación por código](#7-actualizar-un-artículo-de-computación-por-código)
    - [8. Eliminar un artículo de computación por código](#8-eliminar-un-artículo-de-computación-por-código)
  - [Manejo de Errores](#manejo-de-errores)
    - [Errores Comunes](#errores-comunes)
      - [Error 500 - Error en el Servidor](#error-500---error-en-el-servidor)
      - [Error 400 - Solicitud Incorrecta](#error-400---solicitud-incorrecta)
    - [Errores Específicos](#errores-específicos)
      - [Error 404 - Recurso No Encontrado](#error-404---recurso-no-encontrado)
  - [Pre Entrega 02:](#pre-entrega-02)
      - [Pasos:](#pasos)
      - [Documentación:](#documentación)
      - [Entrega del Trabajo:](#entrega-del-trabajo)




# Documentación de la API de Artículos de Computación

## Descripción
Bienvenidos a la API de Artículos de Computación. Esta API proporciona acceso a una base de datos de artículos relacionados con la computación.



## Endpoint Principal
- URL base de la API: `http://localhost:3008/`
***
## Uso
A continuación, se describen los principales endpoints disponibles y sus funcionalidades:

## Endpoints

### 1. Obtener la página de inicio
- Método: `GET`
- Ruta: `/`
- Descripción: Este endpoint devuelve un mensaje de bienvenida a la API.
- Ejemplo de solicitud:

http://localhost:3008/

- Ejemplo de respuesta (200 OK):
  
¡Bienvenido a la API de artículos de computación!


### 2. Obtener todos los artículos de computación
- Método: GET
- Ruta: /computacion
- Descripción: Este endpoint devuelve todos los artículos de computación en la base de datos.
- Ejemplo de solicitud:
  
http://localhost:3008/computacion

- Ejemplo de respuesta (200 OK):
  
[
  {
    "_id": "64fdfa8d947639a625010466",
    "codigo": 23,
    "nombre": "Altavoces 2.1",
    "precio": 89.99,
    "categoria": "Accesorios"
  },
  {
    "_id": "64fdfa8d947639a625010457",
    "codigo": 8,
    "nombre": "Disco Duro Externo",
    "precio": 99.99,
    "categoria": "Accesorios"
  },
  {
    "_id": "64fdfa8d947639a625010454",
    "codigo": 5,
    "nombre": "Memoria RAM",
    "precio": 79.99,
    "categoria": "Partes de computadoras"
  },
  {
    "_id": "64fdfa8d947639a625010453",
    "codigo": 4,
    "nombre": "Impresora Multifuncional",
    "precio": 199.99,
    "categoria": "Impresoras"
  },...]



### 3. Obtener todos los artículos de computación por nombre
- Método: GET
- Ruta: /computacion/nombre
- Descripción: Este endpoint devuelve los artículos de computación según sus nombres.
- Parámetros de URL: letra (string):  el nombre de los artículos.
- Ejemplo de solicitud:

http://localhost:3008/computacion/memoria ram


- Ejemplo de respuesta (200 OK):
  
{
  "_id": "64fdfa8d947639a625010454",
  "codigo": 5,
  "nombre": "Memoria RAM",
  "precio": 79.99,
  "categoria": "Partes de computadoras"
}


### 4. Obtener todos los artículos de computación por primera letra del nombre
- Método: GET
- Ruta: /computacion/nombre/:letra
- Descripción: Este endpoint devuelve los artículos de computación cuyos nombres comienzan con la letra especificada.
- Parámetros de URL: letra (string): La letra con la que comienza el nombre de los artículos.
- Ejemplo de solicitud:

http://localhost:3008/computacion/nombre/r

- Ejemplo de respuesta (200 OK):
  
[
  {
    "_id": "64fdfa8d947639a625010461",
    "codigo": 18,
    "nombre": "Router Gigabit",
    "precio": 79.99,
    "categoria": "Accesorios"
  },
  {
    "_id": "64fdfa8d947639a62501046b",
    "codigo": 28,
    "nombre": "Router Celes",
    "precio": 129.99,
    "categoria": "Accesorios"
  }
]

### 5. Crear un nuevo artículo de computación
- Método: POST
- Ruta: /computacion
- Descripción: Este endpoint permite agregar un nuevo artículo de computación a la base de datos.
- Ejemplo de solicitud:

http://localhost:3008/computacion

- Ejemplo de respuesta (201 Created):
  
{
      "codigo": 32,
      "nombre": "Laptop HP",
      "precio": 1200.00,
      "categoria": "Portátiles"
    }


### 6. Actualizar un artículo de computación por ID
- Método: PUT
- Ruta: /computacion/:id
- Descripción: Este endpoint permite actualizar los datos de un artículo de computación existente por su ID.
- Parámetros de URL: id (entero): El ID del artículo a actualizar.
- Ejemplo de solicitud:

¡AQUÍ va el ejemplo de la solicitud para actualizar un artículo por ID!

- Ejemplo de respuesta (200 OK):
  
¡AQUÍ va el ejemplo respuesta de la actualización por ID!


### 7. Actualizar un artículo de computación por código
- Método: PUT
- Ruta: /computacion/:codigo
- Descripción: Este endpoint permite actualizar los datos de un artículo de computación existente por su codigo.
- Parámetros de URL: codigo (entero): El codigo del artículo a actualizar.
- Ejemplo de solicitud:

¡AQUÍ va el ejemplo de la solicitud para actualizar un artículo por código!

- Ejemplo de respuesta (200 OK):
  
¡AQUÍ va el ejemplo respuesta de la actualización por código!

### 8. Eliminar un artículo de computación por código
- Método: DELETE
- Ruta: /computacion/:codigo
- Descripción: Este endpoint permite eliminar un artículo de computación por su código.
- Parámetros de URL: codigo (entero): El código del artículo a eliminar.
- Ejemplo de solicitud:

¡AQUÍ va el ejemplo de la solicitud para eliminar un artículo por código!

- Ejemplo de respuesta (204 No Content):  
  
'Articulo eliminado'

***

## Manejo de Errores

La API de Artículos de Computación implementa un sistema de manejo de errores para garantizar respuestas adecuadas en caso de problemas. A continuación, se describen los posibles errores que la API puede devolver y cómo deben ser manejados:

### Errores Comunes

#### Error 500 - Error en el Servidor

- Código de Estado: 500
- Descripción: Este error se produce cuando ocurre un problema al conectarse al servidor de MongoDB. Ha habido un fallo no especificado en la solicitud y se debe volver a intentar la operación.

Ejemplo de respuesta:

'Error al conectarse a MongoDB'


#### Error 400 - Solicitud Incorrecta

- Código de Estado: 400
- Descripción: Este error se produce cuando la solicitud del cliente es incorrecta o no cumple con los requisitos esperados por la API. Los clientes deben verificar la solicitud y corregirla antes de volver a intentarla.

Ejemplo de respuesta:

'Error en el formato de los datos recibidos'

### Errores Específicos

#### Error 404 - Recurso No Encontrado

- Código de Estado: 404
- Descripción: Este error se produce cuando el recurso solicitado no se encuentra en la base de datos. 

Ejemplo de respuesta:

'No encontré artículos que empiecen por la letra z'

***


## Pre Entrega 02: 

Desarrollar una API RESTful utilizando MongoDB como base de datos.

#### Pasos:

1-Definición de Datos: Elegir la estructura de datos de una de uno de los siguientes JSON que se encuentra en esta carpeta (puede ser computacion, eletronicos, etc)
2-Importación de Datos: Importar el archivo JSON a la base de datos MongoDB.
3-Endpoints Funcionales: Crear al menos dos endpoints que utilicen el método GET para consultar datos.
4-Funcionalidad de Escritura: Implementar un endpoint utilizando el método POST para agregar nuevos datos.
5-Actualización de Datos: Desarrollar un endpoint con el método PUT para actualizar información existente.
6-Eliminación de Datos: Diseñar un endpoint con el método DELETE para eliminar registros.
7-Trabajo en Equipo: Realizar la tarea en grupos de entre 3 y 5 participantes mínimo.
8-Manejo de Errores: Garantizar la gestión adecuada de errores y retornar códigos de estado correspondientes en cada endpoint.

#### Documentación:

1-Elaborar un archivo Markdown detallando el uso de la API.
2-Incluir ejemplos de código para consultas, inserciones y actualizaciones de datos.
3-Agregar un resumen de la documentación al comienzo del archivo.

#### Entrega del Trabajo:

1-Subir el proyecto al repositorio GitHub de grupo.
2-Asegurar que el trabajo esté claramente documentado y organizado. 
3-Enviar el enlace del repositorio a través del campus virtual.
