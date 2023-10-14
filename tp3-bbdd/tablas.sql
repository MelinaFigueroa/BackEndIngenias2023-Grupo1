-- Usar la Base de Datos Trailerflix
USE Trailerflix;

CREATE TABLE Actores (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre_Actor VARCHAR(255) NOT NULL
);

CREATE TABLE Categorias (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre_Categoria VARCHAR(255) NOT NULL
);

CREATE TABLE Genero (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre_Genero VARCHAR(255) NOT NULL
);

CREATE TABLE Tags (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre_Tag VARCHAR(255) NOT NULL
);

CREATE TABLE Reparto (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    ID_Pelicula_Serie INT,
    ID_Actor INT,
    FOREIGN KEY (ID_Pelicula_Serie) REFERENCES Cartelera_Catalogo(ID),
    FOREIGN KEY (ID_Actor) REFERENCES Actores(ID)
);

CREATE TABLE Peliculas_Tags (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    ID_Pelicula_Serie INT,
    ID_Tag INT,
    FOREIGN KEY (ID_Pelicula_Serie) REFERENCES Cartelera_Catalogo(ID),
    FOREIGN KEY (ID_Tag) REFERENCES Tags(ID)
);

CREATE TABLE Cartelera_Catalogo (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Titulo VARCHAR(255) NOT NULL,
    Resumen TEXT,
    Temporadas INT,
    Poster VARCHAR(255),
    Trailer VARCHAR(255),
    ID_Genero INT,
    ID_Categoria INT,
    ID_Tag INT,
    FOREIGN KEY (ID_Genero) REFERENCES Genero(ID),
    FOREIGN KEY (ID_Categoria) REFERENCES Categorias(ID),
    FOREIGN KEY (ID_Tag) REFERENCES Tags(ID)
);
