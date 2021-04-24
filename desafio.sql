DROP DATABASE IF EXISTS SpotifyClone; CREATE DATABASE SpotifyClone; USE SpotifyClone; 

CREATE TABLE plano (
  plano_id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  valor DOUBLE NOT NULL,
  PRIMARY KEY (plano_id)) 
ENGINE = InnoDB;

CREATE TABLE usuario (
  usuario_id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  idade INT NOT NULL,
  plano_id INT NOT NULL,
  PRIMARY KEY (usuario_id),
  FOREIGN KEY (plano_id) REFERENCES plano (plano_id)) 
ENGINE = InnoDB;

CREATE TABLE artista (
  artista_id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  PRIMARY KEY (artista_id)) 
ENGINE = InnoDB;

CREATE TABLE album (
  album_id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  artista_id INT NOT NULL,
  PRIMARY KEY (album_id),
  FOREIGN KEY (artista_id) REFERENCES artista (artista_id)) 
ENGINE = InnoDB;

CREATE TABLE cancoes (
  cancoes_id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  album_id INT NOT NULL,
  PRIMARY KEY (cancoes_id),
  FOREIGN KEY (album_id)
  REFERENCES album (album_id)) 
ENGINE = InnoDB;

CREATE TABLE historico_de_reproducoes (
  usuario_id INT NOT NULL,
  cancoes_id INT NOT NULL,
  PRIMARY KEY (usuario_id, cancoes_id),
  FOREIGN KEY (usuario_id) REFERENCES usuario (usuario_id),
  FOREIGN KEY (cancoes_id) REFERENCES cancoes (cancoes_id)) 
ENGINE = InnoDB;

CREATE TABLE seguindo_artistas (
  usuario_id INT NOT NULL,
  artista_id INT NOT NULL,
  PRIMARY KEY (usuario_id, artista_id),
  FOREIGN KEY (usuario_id) REFERENCES usuario (usuario_id),
  FOREIGN KEY (artista_id) REFERENCES artista (artista_id)) 
ENGINE = InnoDB;

INSERT INTO plano(nome, valor) VALUES
('gratuito', 0.00),
('universitário', 5.99),
('familiar', 7.99);

INSERT INTO usuario(nome, idade, plano_id) VALUES
('Thati', 23, 1),
('Cintia', 35, 3),
('Bill', 20, 2),
('Roger', 45, 1);

INSERT INTO artista(nome) VALUES 
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO album(nome, artista_id) VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO cancoes(nome, album_id) VALUES
('Soul For Us', 1),
('Reflections Of Magic', 1),
('Dance With Her Own', 1),
('Troubles Of My Inner Fire', 2),
('Time Fireworks', 2),
('Magic Circus', 3),
('Honey, So Do I', 3),
("Sweetie, Let's Go Wild", 3),
('She Knows', 3),
('Fantasy For Me', 4),
('Celebration Of More', 4),
('Rock His Everything', 4),
('Home Forever', 4),
('Diamond Power', 4),
("Honey, Let's Be Silly", 4),
('Thang Of Thunder', 5),
('Words Of Her Life', 5),
('Without My Streets', 5);

INSERT INTO historico_de_reproducoes(usuario_id, cancoes_id) VALUES
(1, 1),
(1, 6),
(1, 14),
(1, 16),
(2, 2),
(2, 13),
(2, 15),
(2, 17),
(3, 4),
(3, 6),
(3, 16),
(4, 3),
(4, 11),
(4, 18);

INSERT INTO seguindo_artistas(usuario_id, artista_id) VALUES
(1, 1),
(1, 3),
(1, 4),
(2, 1),
(2, 3),
(3, 1),
(3, 2),
(4, 4);
