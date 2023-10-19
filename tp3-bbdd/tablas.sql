create database trailerflix;

use trailerflix;

create table if not exists genero(
id int primary key auto_increment not null
,nombre varchar(50)
);

create table if not exists categoria(
id int primary key auto_increment not null
,nombre varchar(50)
);

create table if not exists actores(
id int primary key auto_increment not null
,nombre varchar(100)
);

create table if not exists tag(
id int primary key auto_increment not null
,nombre varchar(255)
);

create table if not exists cartelera(
id int primary key auto_increment not null
,titulo varchar(150) not null
,resumen text default null
,poster varchar(255) default null
,temporadas int default null
,trailer varchar(255)
,tipo enum('pelicula','serie')
,id_genero int default null
,id_categoria int default null
,id_tags int default null
,FOREIGN KEY (id_genero) REFERENCES genero(id)
,FOREIGN KEY (id_categoria) REFERENCES categoria(id)
,FOREIGN KEY (id_tags) REFERENCES tag(id)
);

create table if not exists pelicula_tags(
id int primary key auto_increment not null
,id_pelicula_serie int
,id_tags int
,FOREIGN KEY (id_pelicula_serie) REFERENCES cartelera(id)
,FOREIGN KEY (id_tags) REFERENCES tag(id)
);

create table if not exists reparto(
id int primary key auto_increment not null
,id_pelicula_serie int
,id_actor int
,FOREIGN KEY (id_pelicula_serie) REFERENCES cartelera(id)
,FOREIGN KEY (id_actor) REFERENCES actores(id)
);