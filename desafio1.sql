DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE financeiro(
  financeiro_id INT PRIMARY KEY auto_increment,
  plano VARCHAR(100) NOT NULL,
  valor_plano DECIMAL(3, 2)
)engine=InnoDB;

INSERT INTO financeiro(plano, valor_plano)
VALUES
  ('gratuito', 0),
  ('familiar', 7.99),
  ('universitario', 5.99);

CREATE TABLE usuario(
  usuario_id INT PRIMARY KEY auto_increment,
  nome varchar(255) NOT NULL,
  idade int NOT NULL,
  financeiro_id INT NOT NULL,
  FOREIGN KEY(financeiro_id) REFERENCES financeiro(financeiro_id)
)engine=InnoDB;

INSERT INTO usuario(nome, idade, financeiro_id)
VALUES
  ('Thati', 23, 1, 1),
  ('Cintia', 35, 2, 2),
  ('Bill', 20, 3, 3),
  ('Roger', 45, 1, 4);

CREATE TABLE artistas(
  artista_id INT PRIMARY KEY auto_increment,
  artista varchar(255) NOT NULL
)engine=InnoDB;

INSERT INTO artistas(artista)
VALUES
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shanno');

CREATE TABLE seguindo_artistas(
  artista_id INT NOT NULL,
  usuario_id INT NOT NULL,
  PRIMARY KEY(artista_id, usuario_id),
  FOREIGN KEY(artista_id) REFERENCES artistas(artista_id),
  FOREIGN KEY(usuario_id) REFERENCES usuario(usuario_id)
)engine=InnoDB;

INSERT INTO seguindo_artistas(artista_id, usuario_id)
VALUES
  (1, 1),
  (4, 1),
  (3, 1),
  (1, 2),
  (3, 2),
  (2, 3),
  (1, 3),
  (4, 4);

CREATE TABLE album(
  album_id INT PRIMARY KEY auto_increment,
  album varchar(255) NOT NULL,
  artista_id INT NOT NULL,
  FOREIGN KEY (artista_id) REFERENCES artistas(artista_id)
)engine=InnoDB;

  INSERT INTO album(album, artista_id)
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
)engine=InnoDB;

INSERT INTO cancoes(cancoes, album_id)
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
  historico_reproducoes_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  historico_reproducoes VARCHAR(255) NOT NULL,
  usuario_id INT NOT NULL,
  FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id)
)engine=InnoDB;

  INSERT INTO historico_de_reproducoes(historico_reproducoes)
VALUES
  ('Soul For Us', 1),
  ('Magic Circus', 1),
  ('Diamond Power', 1),
  ('Thang of Thunder', 1),
  ('Home Forever', 2),
  ('Words Of Her Life', 2),
  ('Reflections Of Magic', 2),
  ('Honey, Let’s Be Silly', 2),
  ('Troubles Of Inner Fire', 3),
  ('Thang of Thunder', 3),
  ('Magic Circus', 3),
  ('Dance With Her Own', 4),
  ('Without My Streets', 4),
  ('Celebration Of More', 4);
