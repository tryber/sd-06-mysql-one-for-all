DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE planos(
  plano_id INT PRIMARY KEY auto_increment,
  plano varchar(30),
  valor_plano decimal(3,2)
) engine = InnoDB;

CREATE TABLE artistas(
  artista_id INT PRIMARY KEY auto_increment,
  artista varchar(80)
) engine = InnoDB;

CREATE TABLE albuns(
  album_id INT PRIMARY KEY auto_increment,
  album varchar(60),
  artista_id INT NOT NULL,
  FOREIGN KEY (artista_id) references artistas(artista_id)
) engine = InnoDB;

CREATE TABLE cancoes(
  cancao_id INT PRIMARY KEY auto_increment,
  cancao varchar(100),
  album_id INT NOT NULL,
  FOREIGN KEY (album_id) references albuns(album_id)
) engine = InnoDB;

CREATE TABLE usuarios(
  usuario_id INT PRIMARY KEY auto_increment,
  usuario varchar(20),
  idade INT NOT NULL,
  plano_id INT NOT NULL,
  FOREIGN KEY (plano_id) references planos(plano_id)
) engine = InnoDB;

CREATE TABLE seguindo(
  usuario_id INT NOT NULL,
  artista_id INT NOT NULL,
  PRIMARY KEY (usuario_id, artista_id),
  FOREIGN KEY (usuario_id) references usuarios(usuario_id),
	FOREIGN KEY (artista_id) references artistas(artista_id)
) engine = InnoDB;

CREATE TABLE historico(
  usuario_id INT NOT NULL,
  cancao_id INT NOT NULL,
  PRIMARY KEY (usuario_id, cancao_id),
  FOREIGN KEY (usuario_id) references usuarios(usuario_id),
	FOREIGN KEY (cancao_id) references cancoes(cancao_id)
) engine = InnoDB;

INSERT INTO planos(plano, valor_plano)
VALUES
  ('gratuito', 0),
  ('familiar', 7.99),
  ('universitário', 5.99);
  
INSERT INTO artistas(artista)
VALUES
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shannon');

INSERT INTO albuns(album, artista_id)
VALUES
  ('Envious', 1),
  ('Exuberant', 1),
  ('Hallowed Steam', 2),
  ('Incandescent', 3),
  ('Temporary Culture', 4);
  
INSERT INTO cancoes(cancao, album_id)
VALUES
  ("Soul For Us", 1),
  ("Magic Circus", 3),
  ("Diamond Power", 4),
  ("Thang Of Thunder", 5),
  ("Home Forever", 4),
  ("Words Of Her Life", 5),
  ("Reflections Of Magic", 1),
  ("Honey, Let's Be Silly", 4),
  ("Troubles Of My Inner Fire", 2),
  ("Dance With Her Own", 1),
  ("Celebration Of More", 4),
  ( "Without My Streets", 5),
  ("Time Fireworks", 2),
  ( "Honey, So Do I", 3),
  ("Sweetie, Let's Go Wild", 3),
  ("She Knows", 3),
  ("Fantasy For Me", 4),
  ("Fantasy For Me", 4);

INSERT INTO usuarios(usuario, idade, plano_id)
VALUES
  ('Thati', 23, 1),
  ('Cintia', 35, 2),
  ('Bill', 20, 3),
  ('Roger', 45, 1);

INSERT INTO seguindo(usuario_id, artista_id)
VALUES
  (1, 1),
  (1, 3),
  (1, 4),
  (2, 1),
  (2, 3),
  (3, 1),
  (3, 2),
  (4, 4);
  
INSERT INTO historico(usuario_id, cancao_id)
VALUES
  (1, 1),
  (1, 2),
  (1, 3),
  (1, 4),
  (2, 5),
  (2, 6),
  (2, 7),
  (2, 8),
  (3, 9),
  (3, 4),
  (3, 2),
  (4, 10),
  (4, 11),
  (4, 12);
