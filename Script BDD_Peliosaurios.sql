DROP SCHEMA IF EXISTS bdd_peliosaurios;
CREATE SCHEMA bdd_peliosaurios;
USE bdd_peliosaurios;

CREATE TABLE pelicula(
	ID_pelicula SMALLINT NOT NULL AUTO_INCREMENT,
	titulo VARCHAR(100) NOT NULL,
	sinopsis TEXT DEFAULT NULL,
	año YEAR DEFAULT NULL,
	valor_puntos SMALLINT NOT NULL,
	ID_actor SMALLINT NOT NULL,
	ID_lenguaje SMALLINT NOT NULL,
	ID_genero SMALLINT NOT NULL,
	ID_director SMALLINT NOT NULL,
	PRIMARY KEY (ID_pelicula)
)

CREATE TABLE direccion(
	ID_director SMALLINT NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(40) NOT NULL,
	apellido_pat VARCHAR(40) NOT NULL,
	apellido_mat VARCHAR(40) NOT NULL,
	ID_pelicula SMALLINT NOT NULL,
	PRIMARY KEY(ID_director)
)

CREATE TABLE actores(
	ID_actor SMALLINT NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(40) NOT NULL,
	apellido_pat VARCHAR(40) NOT NULL,
	apellido_mat VARCHAR(40) NOT NULL,
	ID_pelicula SMALLINT NOT NULL,
	PRIMARY KEY(ID_actor)
)

CREATE TABLE lenguaje(
	ID_lenguaje SMALLINT NOT NULL AUTO_INCREMENT,
	idioma varchar(30) NOT NULL,
	ID_pelicula SMALLINT NOT NULL,
	PRIMARY KEY(ID_lenguaje)
)

CREATE TABLE genero(
	ID_genero SMALLINT NOT NULL AUTO_INCREMENT,
	tipo_genero varchar(30) NOT NULL,
	ID_pelicula SMALLINT NOT NULL,
	PRIMARY KEY(ID_lenguaje)
)