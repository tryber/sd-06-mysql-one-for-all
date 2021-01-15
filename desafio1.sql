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
    seguindo_artistas varchar(255),
    FOREIGN KEY(usuario_id) REFERENCES usuario(usuario_id)
) engine = InnoDB;

CREATE TABLE financeiro(
    financeiro_id INT PRIMARY KEY auto_increment,
    plano varchar(255) NOT NULL,
    valor_plano decimal(10,2) NOT NULL,
    FOREIGN KEY(usuario_id) REFERENCES usuario(usuario_id)
) engine = InnoDB;

CREATE TABLE info_artistas(
    info_artistas_id INT PRIMARY KEY auto_increment,
    FOREIGN KEY(artista_id) REFERENCES artista(artista_id),
    FOREIGN KEY(album_id) REFERENCES album(album_id)
) engine = InnoDB;

CREATE TABLE info_album(
    info_album_id INT PRIMARY KEY auto_increment,
    FOREIGN KEY(album_id) REFERENCES album(album_id),
    FOREIGN KEY(cancoes_id) REFERENCES cancoes(cancoes_id)
) engine = InnoDB;

CREATE TABLE pesquisa(
    pesquisa_id INT PRIMARY KEY auto_increment,
    FOREIGN KEY(cancoes_id) REFERENCES cancoes(cancoes_id),
    FOREIGN KEY(album_id) REFERENCES album(album_id),
    FOREIGN KEY(artista_id) REFERENCES artista(artista_id)
) engine = InnoDB;

CREATE TABLE central(
    central_id INT PRIMARY KEY auto_increment,
    FOREIGN KEY(cancoes_id) REFERENCES cancoes(cancoes_id),
    FOREIGN KEY(usuario_id) REFERENCES usuario(usuario_id),
    FOREIGN KEY(financeiro_id) REFERENCES financeiro(financeiro_id),
    FOREIGN KEY(album_id) REFERENCES album(album_id),
    FOREIGN KEY(artista_id) REFERENCES artista(artista_id),
    FOREIGN KEY(seguindo_artistas) REFERENCES seguindo_artistas(seguindo_artistas)
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

  INSERT INTO financeiro (financeiro_id, plano, valor_plano, usuario_id)
VALUES
  (1, 'gratuito', 0.00, 1),
  (2, 'familiar', 7.99, 2),
  (3, 'universitario', 5.99, 3),
  (4, 'gratuito', 0.00, 4);

INSERT INTO info_artistas (info_artistas_id, artista_id, album_id)
VALUES
  (1, 1, 1),
  (2, 1, 2),
  (3, 2, 3),
  (4, 3, 4),
  (5, 4, 5);

  INSERT INTO info_album (info_album_id, album_id, cancoes_id)
VALUES
  (1, 1, 1),
  (2, 1, 2),
  (3, 1, 3),
  (4, 2, 4),
  (5, 2, 5),
  (6, 3, 6),
  (7, 3, 7),
  (8, 3, 8),
  (9, 3, 9),
  (10, 4, 10),
  (11, 4, 11),
  (12, 4, 12),
  (13, 4, 13),
  (14, 4, 14),
  (15, 4, 15),
  (16, 5, 16),
  (17, 5, 17),
  (18, 5, 18);

  INSERT INTO pesquisa (pesquisa_id, cancoes_id, album_id, artista_id)
VALUES
  (1, 1, 1, 1),
  (2, 2, 1, 1),
  (3, 3, 1, 1),
  (4, 4, 2, 1),
  (5, 5, 2, 1),
  (6, 6, 3, 2),
  (7, 7, 3, 2),
  (8, 8, 3, 2),
  (9, 9, 3, 2),
  (10, 10, 4, 3),
  (11, 11, 4, 3),
  (12, 12, 4, 3),
  (13, 13, 4, 3),
  (14, 14, 4, 3),
  (15, 15, 4, 3),
  (16, 16, 5, 4),
  (17, 17, 5, 4),
  (18, 18, 5, 4);

  INSERT INTO central (central_id, cancoes_id, usuario_id, financeiro_id, album_id, artista_id, seguindo_artistas_id)
VALUES
  (1, 1, 1, 1, 1, 1, 1),
  (2, 6, 1, 1, 3, 2, null),
  (3, 14, 1, 1, 4, 3, 3),
  (4, 16, 1, 1, 5, 4, 2),
  (5, 13, 2, 2, 4, 3, 5),
  (6, 17, 2, 2, 5, 4, null),
  (7, 2, 2, 2, 1, 1, 4),
  (8, 15, 2, 2, 4, 3, 5),
  (9, 4, 3, 3, 2, 1, 6),
  (10, 16, 3, 3, 5, 4, null),
  (11, 6, 3, 3, 3, 2, 7),
  (12, 3, 4, 4, 1, 1, null),
  (13, 18, 4, 4, 5, 4, 8),
  (14, 11, 4, 4, 4, 3, null);
