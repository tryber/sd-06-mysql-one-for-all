CREATE DATABASE SpotifyClone;
USE SpotifyClone;

CREATE TABLE planos (
plano_id INT PRIMARY KEY AUTO_INCREMENT,
nome_plano VARCHAR(40) UNIQUE NOT NULL,
valor_plano VARCHAR(10) NOT NULL
);

CREATE TABLE usuarios (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(40) NOT NULL,
idade INT NOT NULL,
plano_id INT NOT NULL,
FOREIGN KEY (plano_id) REFERENCES planos(plano_id)
);

CREATE TABLE artistas (
artista_id INT PRIMARY KEY AUTO_INCREMENT,
nome_artista VARCHAR(40) NOT NULL
);

CREATE TABLE albums (
album_id INT PRIMARY KEY AUTO_INCREMENT,
nome_album VARCHAR (40) NOT NULL,
artista_id INT NOT NULL,
FOREIGN KEY (artista_id) REFERENCES artistas(artista_id)
);

CREATE TABLE cancoes (
cancao_id INT PRIMARY KEY AUTO_INCREMENT,
nome_cancao VARCHAR(40) NOT NULL,
album_id INT NOT NULL,
FOREIGN KEY (album_id) REFERENCES albums(album_id)
);

CREATE TABLE seguindo (
usuario_id INT NOT NULL,
FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
artista_id INT NOT NULL,
FOREIGN KEY (artista_id) REFERENCES artistas(artista_id),
PRIMARY KEY (usuario_id, artista_id)
);

CREATE TABLE historico (
usuario_id INT NOT NULL,
FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
cancao_id INT NOT NULL,
FOREIGN KEY (cancao_id) REFERENCES cancoes(cancao_id),
PRIMARY KEY (usuario_id, cancao_id)
);
