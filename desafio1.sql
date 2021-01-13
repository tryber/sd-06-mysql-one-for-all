DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE usuarios(
    usuario_id INT PK AUTO_INCREMENT,
    usuario VARCHAR(12) NOT_NULL,
    idade INT NOT_NULL,
    plano_id INT NOT_NULL FK,
) engine = InnoDB;

CREATE TABLE planos(
    plano_id INT PK AUTO_INCREMENT,
    plano VARCHAR(14) NOT_NULL,
    preco DECIMAL(3, 2) NOT_NULL,
) engine = InnoDB;

CREATE TABLE historico_de_reproducoes(
    usuario_id INT PK,
    cancao_id VARCHAR(14) NOT_NULL FK,
) engine = InnoDB;

CREATE TABLE seguindo_artistas(
    usuario_id INT PK,
    artista_id INT NOT_NULL FK,
) engine = InnoDB;

CREATE TABLE artistas(
    artista_id INT PK AUTO_INCREMENT,
    artista VARCHAR(16) NOT_NULL,
) engine = InnoDB;

CREATE TABLE albums(
    album_id INT PK AUTO_INCREMENT,
    album VARCHAR(18) NOT_NULL,
    artista_id INT NOT_NULL FK,
) engine = InnoDB;

CREATE TABLE cancoes(
    cancao_id INT PK AUTO_INCREMENT,
    cancao VARCHAR(26) NOT_NULL,
    artista_id INT NOT_NULL FK,
) engine = InnoDB;

INSERT INTO cancoes (usuario_id, usuario, idade, plano_id)
VALUES
  (1, 'Thati', 23, 2),
  (2, 'Cintia', 35, 1),
  (3, 'Bill', 20, 3),
  (4, 'Roger', 45, 2),

INSERT INTO planos (plano_id, plano, preco)
VALUES
  (1, 'familiar', 7.99),
  (2, 'familiar', 0),
  (3, 'universitário', 5.99),

INSERT INTO historico_de_reproducoes (usuario_id, cancao_id)
VALUES
  (1, 1),
  (1, 6),
  (1, 14),
  (1, 16),
  (2, 13),
  (2, 17),
  (2, 2),
  (2, 7),
  (3, 4),
  (3, 16),
  (3, 6),
  (4, 3),
  (4, 18),
  (4, 11),

INSERT INTO seguindo_artistas (usuario_id, artista_id)
VALUES
  (1, 1),
  (1, 4),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 2),
  (3, 1),
  (4, 4),

INSERT INTO artistas (artista_id, artista)
VALUES
  (1, 'Walter Phoenix'),
  (2, 'Peter Strong'),
  (3, 'Lance Day'),
  (4, 'Freedie Shannon'),

INSERT INTO albums (album_id, album, artista_id)
VALUES
  (1, 'Envious', 1),
  (2, 'Exuberant', 1),
  (3, 'Hallowed Steam', 2),
  (4, 'Incandescent', 3),
  (5, 'Temporary Culture', 4),

INSERT INTO cancoes (cancao_id, cancao, artista_id)
VALUES
  (1, 'Soul For Us', 1),
  (2, 'Reflections Of Magic', 1),
  (3, 'Dance With Her Own', 1),
  (4, 'Troubles Of My Inner Fire', 1),
  (5, 'Time Fireworks', 1),
  (6, 'Magic Circus', 2),
  (7, 'Honey, So Do I', 2),
  (8, "Sweetie, Let's Go Wild", 2),
  (9, 'She Knows', 2),
  (10, 'Fantasy For Me', 3),
  (11, 'Celebration Of More', 3),
  (12, 'Rock His Everything', 3),
  (13, 'Home Forever', 3),
  (14, 'Diamond Power', 3),
  (15, "Honey, Let's Be Silly", 3),
  (16, 'Thang Of Thunder', 4),
  (17, 'Words Of Her Life', 4),
  (18, 'Without My Streets', 4);