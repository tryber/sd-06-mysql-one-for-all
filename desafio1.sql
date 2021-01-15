DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE financeiro(
  financeiro_id INT PRIMARY KEY auto_increment,
  plano VARCHAR(100) NOT NULL,
  valor_plano DECIMAL(3, 2)
);

INSERT INTO financeiro (plano, valor_plano)
VALUES
  ('gratuito', 0),
  ('familiar', 7.99),
  ('universitario', 5.99);

CREATE TABLE usuario(
  usuario_id INT PRIMARY KEY auto_increment,
  nome varchar(255) NOT NULL,
  idade int NOT NULL,
  FOREIGN KEY(financeiro_id) REFERENCES financeiro(financeiro_id)
);

INSERT INTO usuario (nome, idade, financeiro_id)
VALUES
  ('Thati', 23, 1),
  ('Cintia', 35, 2),
  ('Bill', 20, 3),
  ('Roger', 45, 1);

CREATE TABLE artistas(
  artista_id INT PRIMARY KEY auto_increment,
  artista varchar(255) NOT NULL
);

INSERT INTO artistas (artista)
VALUES
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shanno');

CREATE TABLE seguindo_artistas(
  seguindo_artistas_id INT PRIMARY KEY auto_increment,
  seguindo_artistas varchar(255),
  FOREIGN KEY(usuario_id) REFERENCES usuario(usuario_id)
);

INSERT INTO seguindo_artistas (seguindo_artistas, usuario_id)
VALUES
  ('Walter Phoenix', 1),
  ('Freedie Shanno', 1),
  ('Lance Day', 1),
  ('Walter Phoenix', 2),
  ('Lance Day', 2),
  ('Peter Strong', 3),
  ('Walter Phoenix', 3),
  ('Freedie Shanno', 4);

CREATE TABLE album(
  album_id INT PRIMARY KEY auto_increment,
  album varchar(255) NOT NULL,
  FOREIGN KEY (artista_id) REFERENCES artistas(artista_id)
);

 INSERT INTO album (album, artista_id)
VALUES
  ('Envious', 1),
  ('Exuberant', 1),
  ('Hallowed Steam', 2),
  ('Incandescent', 3),
  ('Temporary Culture', 4);

CREATE TABLE cancoes(
  cancoes_id INT PRIMARY KEY auto_increment,
  cancoes varchar(255) NOT NULL,
  album_id INT NOT NULL,
  FOREIGN KEY (album_id) REFERENCES album(album_id)
);

INSERT INTO cancoes (cancoes, album_id)
VALUES
  ('Soul For Us', 1),
  ('Reflections  Of Magic', 1),
  ('Dance With Her Own', 1),
  ('Troubles Of My Inner Fire', 2),
  ('Time Fireworks', 2),
  ('Magic Circus', 3),
  ('Honey, So Do I', 3),
  ('Sweet,  Let’s Go Wild', 3),
  ('She Knows', 3),
  ('Fantasy For Me', 4),
  ('Celebration Of More', 4),
  ('Rock His Everything', 4),
  ('Home Forever', 4),
  ('Diamond Power', 4),
  ('Honey, Let’s Be Silly', 4),
  ('Thang Of  Thunder', 5),
  ('Words Of Her Life', 5),
  ('Without My  Streets', 5);

CREATE TABLE historico_de_reproducoes(
  historico_reproducoes_id INT PRIMARY KEY auto_increment,
  usuario_id INT NOT NULL,
  cancoes_id INT NOT NULL,
  FOREIGN KEY(usuario_id) REFERENCES usuario(usuario_id),
  FOREIGN KEY(cancoes_id) REFERENCES cancoes(cancoes_id)
);

 INSERT INTO historico_reproducoes (usuario_id, cancoes_id)
VALUES
  (1, 1),
  (1, 6),
  (1, 14),
  (1, 16),
  (2, 13),
  (2, 17),
  (2, 2),
  (2, 15),
  (3, 4),
  (3, 16),
  (3, 6),
  (4, 3),
  (4, 17),
  (4, 11);
  