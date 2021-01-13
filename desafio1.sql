DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE tabela_plano(
  plano_id INT UNIQUE PRIMARY KEY NOT NULL AUTO_INCREMENT,
  nome_plano VARCHAR(50) NOT NULL,
  valor_plano DECIMAL(10,2) NOT NULL
) engine = InnoDB;

CREATE TABLE tabela_usuario(
  usuario_id INT UNIQUE PRIMARY KEY NOT NULL AUTO_INCREMENT,
  nome_usuario VARCHAR(200) NOT NULL,
  idade INT NOT NULL,
  fk_plano_id INT NOT NULL,
  FOREIGN KEY (fk_plano_id) REFERENCES tabela_plano(plano_id)
) engine = InnoDB;

CREATE TABLE tabela_artista(
  artista_id INT UNIQUE PRIMARY KEY NOT NULL AUTO_INCREMENT,
  nome_artista VARCHAR(200) NOT NULL
) engine = InnoDB;

CREATE TABLE tabela_album(
  album_id INT UNIQUE PRIMARY KEY NOT NULL AUTO_INCREMENT,
  nome_album VARCHAR(200) NOT NULL,
  fk_artista_id INT NOT NULL,
  FOREIGN KEY (fk_artista_id) REFERENCES tabela_artista(artista_id)
) engine = InnoDB;

CREATE TABLE tabela_cancao(
  cancao_id INT UNIQUE PRIMARY KEY NOT NULL AUTO_INCREMENT,
  nome_cancao VARCHAR(200) NOT NULL,
  fk_album_id INT NOT NULL,
  FOREIGN KEY (fk_album_id) REFERENCES tabela_album(album_id)
) engine = InnoDB;

CREATE TABLE tabela_reproducoes(
  fk_usuario_id INT NOT NULL,
  fk_cancao_id INT NOT NULL,
  data_reproducao DATETIME NOT NULL,
  PRIMARY KEY (fk_usuario_id, fk_cancao_id),
  FOREIGN KEY (fk_usuario_id) REFERENCES tabela_usuario(usuario_id),
  FOREIGN KEY (fk_cancao_id) REFERENCES tabela_cancao(cancao_id)
) engine = InnoDB;

CREATE TABLE tabela_seguindo_artistas(
  fk_usuario_id INT NOT NULL,
  fk_artista_id INT NOT NULL,
  PRIMARY KEY (fk_usuario_id, fk_artista_id),
  FOREIGN KEY (fk_usuario_id) REFERENCES tabela_usuario(usuario_id),
  FOREIGN KEY (fk_artista_id) REFERENCES tabela_artista(artista_id)
) engine = InnoDB;

INSERT INTO tabela_plano (nome_plano, valor_plano)
VALUES
  ('gratuito', '0'),
  ('universitário', '5.99'),
  ('familiar', '7.99');

INSERT INTO tabela_usuario (nome_usuario, idade, fk_plano_id)
VALUES
  ('Thati', '23', '1'),
  ('Cintia', '35', '3'),
  ('Bill', '20', '2'),
  ('Roger', '45', '1');

INSERT INTO tabela_artista (nome_artista)
VALUES
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shannon');

INSERT INTO tabela_album (nome_album, fk_artista_id)
VALUES
  ('Envious', '1'),
  ('Exuberant', '1'),
  ('Hallowed Steam', '2'),
  ('Incandescent', '3'),
  ('Temporary Culture', '4');

  INSERT INTO tabela_cancao (nome_cancao, fk_album_id)
VALUES
  ('Soul For Us', '1'),
  ('Reflections Of Magic', '1'),
  ('Dance With Her Own', '1'),
  ('Troubles Of My Inner Fire', '2'),
  ('Time Fireworks', '2'),
  ('Magic Circus', '3'),
  ('Honey, So Do I', '3'),
  ("Sweetie, Let's Go Wild", '3'),
  ('She Knows', '3'),
  ('Fantasy For Me', '4'),
  ('Celebration Of More', '4'),
  ('Rock His Everything', '4'),
  ('Home Forever', '4'),
  ('Diamond Power', '4'),
  ("Honey, Let's Be Silly", '4'),
  ('Thang Of Thunder', '5'),
  ('Words Of Her Life', '5'),
  ('Without My Streets', '5');

INSERT INTO tabela_reproducoes (fk_usuario_id, fk_cancao_id, data_reproducao)
VALUES
  ('1', '1', now()),
  ('1', '6', now()),
  ('1', '14', now()),
  ('1', '16', now()),
  ('2', '13', now()),
  ('2', '17', now()),
  ('2', '2', now()),
  ('2', '15', now()),
  ('3', '4', now()),
  ('3', '16', now()),
  ('3', '6', now()),
  ('4', '3', now()),
  ('4', '18', now()),
  ('4', '11', now());

INSERT INTO tabela_seguindo_artistas (fk_usuario_id, fk_artista_id)
VALUES
  ('1', '1'),
  ('1', '4'),
  ('1', '3'),
  ('2', '1'),
  ('2', '3'),
  ('3', '2'),
  ('3', '1'),
  ('4', '4');
