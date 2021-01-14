DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE cancoes(
    cancoes_id INT PRIMARY KEY auto_increment,
    cancoes varchar(255) NOT NULL,
    colunaN tipo restricoes,
) engine = InnoDB;

CREATE TABLE artistas(
    artista_id INT PRIMARY KEY auto_increment,
    artista varchar(255) NOT NULL
) engine = InnoDB;

CREATE TABLE album(
    album_id INT PRIMARY KEY auto_increment,
    album varchar(255) NOT NULL
) engine = InnoDB;

CREATE TABLE usuario(
    usuario_id INT PRIMARY KEY auto_increment,
    nome varchar(255) NOT NULL,
    idade int NOT NULL
) engine = InnoDB;

CREATE TABLE coluna_historico_de_reproducoes(
    historico_reproducoes_id INT PRIMARY KEY auto_increment,
    historico_reproducoes varchar(255) NOT NULL,
    FOREIGN KEY(usuario_id) REFERENCES usuario(usuario_id)
) engine = InnoDB;

CREATE TABLE seguindo_artistas(
    seguindo_artistas_id INT PRIMARY KEY auto_increment,
    seguindo_artistas varchar(255) NOT NULL,
    FOREIGN KEY(usuario_id) REFERENCES usuario(usuario_id)
) engine = InnoDB;

INSERT INTO cancoes (cancoes_id, cancoes)
VALUES
  (1, 'Soul For Us'),
  (2, 'Reflections  Of Magic'),
  (3, 'Dance With Her Own'),
  (4, 'Troubles Of My Inner Fire'),
  (5, 'Time Fireworks'),
  (6, 'Magic Circus'),
  (7, 'Honey, So Do I'),
  (8, 'Sweet,  Let’s Go Wild'),
  (9, 'She Knows'),
  (10, 'Fantasy For Me'),
  (11, 'Celebration Of More'),
  (12, 'Rock His Everything'),
  (13, 'Home Forever'),
  (14, 'Diamond Power'),
  (15, 'Honey, Let’s Be Silly'),
  (16, 'Thang Of  Thunder'),
  (17, 'Words Of Her Life'),
  (18, 'Without My  Streets');

INSERT INTO artistas (artista_id, artista)
VALUES
  (1, 'Walter Phoenix'),
  (2, 'Peter Strong'),
  (3, 'Lance Day'),
  (4, 'Freedie Shanno');

  INSERT INTO album (album_id, album)
VALUES
  (1, 'Envious'),
  (2, 'Exuberant'),
  (3, 'Hallowed Steam'),
  (4, 'Incandescent'),
  (5, 'Temporary Culture');

  INSERT INTO usuario (usuario_id, nome, idade)
VALUES
  (1, 'Thati', 23),
  (2, 'Cintia', 35),
  (3, 'Bill', 20),
  (4, 'Roger', 45);

  INSERT INTO historico_reproducoes (historico_reproducoes_id, historico_reproducoes, usuario_id)
VALUES
  (1, 'Soul For US', 1),
  (2, 'Magic Circus', 1),
  (3, 'Diamond Power', 1),
  (4, 'Thang of Thunder', 1),
  (5, 'Home Forever', 2),
  (6, 'Words Of Her Life', 2),
  (7, 'Reflections Of Magic', 2),
  (8, 'Honey, Let’s Be Silly', 2),
  (9, 'Troubles Of Inner Fire', 3),
  (10, 'Thang of Thunder', 3),
  (11, 'Magic Circus', 3),
  (12, 'Dance With Her Own', 4),
  (13, 'Without My Streets', 4),
  (14, 'Celebration Of More', 4);

  INSERT INTO seguindo_artistas (seguindo_artistas_id, seguindo_artistas, usuario_id)
VALUES
  (1, 'Walter Phoenix', 1),
  (2, 'Freedie Shanno', 1),
  (3, 'Lance Day', 1),
  (4, 'Walter Phoenix', 2),
  (5, 'Lance Day', 2),
  (6, 'Peter Strong', 3),
  (7, 'Walter Phoenix', 3),
  (8, 'Freedie Shanno', 4);
  