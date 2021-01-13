DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;
DROP TABLE IF EXISTS plano;
DROP TABLE IF EXISTS usuario;
DROP TABLE IF EXISTS artista;
DROP TABLE IF EXISTS album;
DROP TABLE IF EXISTS cancao;
DROP TABLE IF EXISTS seguindo;
DROP TABLE IF EXISTS reproducao;

CREATE TABLE plano(
	plano_id INT PRIMARY KEY,
  nome VARCHAR(50) NOT NULL,
  preco DECIMAL(5,2) NOT NULL
) engine = InnoDB;

CREATE TABLE usuario(
	usuario_id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  plano_id INT NOT NULL,
  FOREIGN KEY (plano_id) REFERENCES plano(plano_id) 
) engine = InnoDB;

CREATE TABLE artista(
	artista_id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL
) engine = InnoDB;

CREATE TABLE album(
	album_id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL
) engine = InnoDB;

CREATE TABLE cancao(
	cancao_id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  album_id INT NOT NULL,
  FOREIGN KEY (album_id) REFERENCES album(album_id)
) engine = InnoDB;

CREATE TABLE reproducao(
	reproducao_id INT PRIMARY KEY,
  cancao_id INT NOT NULL,
  usuario_id INT NOT NULL,
  FOREIGN KEY (cancao_id) REFERENCES cancao(cancao_id),
  FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id)
) engine = InnoDB;

CREATE TABLE seguindo(
	seguindo_id INT PRIMARY KEY,
  artista_id INT NOT NULL,
  usuario_id INT NOT NULL,
  FOREIGN KEY (artista_id) REFERENCES artista(artista_id),
  FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id)
) engine = InnoDB;
