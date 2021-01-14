DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE planos(
  plano_id INT PRIMARY KEY auto_increment NOT NULL,
  plano varchar(20) NOT NULL,
  valor_plano DECIMAL(3,2)
) engine = InnoDB;

CREATE TABLE usuarios(
  usuario_id INT PRIMARY KEY auto_increment,
  usuario varchar(20) NOT NULL,
  idade INT NOT NULL,
  plano_id INT NOT NULL,
  FOREIGN KEY (plano_id) references planos(plano_id)
) engine = InnoDB;

CREATE TABLE artistas(
  artista_id INT PRIMARY KEY auto_increment,
  artista varchar(20) NOT NULL
) engine = InnoDB;

CREATE TABLE seguindo(
  usuario_id INT NOT NULL,
  artista_id INT NOT NULL,
  PRIMARY KEY (usuario_id, artista_id),
  FOREIGN KEY (artista_id) references artistas(artista_id),
  FOREIGN KEY (usuario_id) references usuarios(usuario_id)
) engine = InnoDB;

CREATE TABLE album(
  album_id INT PRIMARY KEY auto_increment,
  album varchar(20) NOT NULL,
  artista_id INT NOT NULL,
  FOREIGN KEY (artista_id) references artistas(artista_id)
) engine = InnoDB;

CREATE TABLE cancoes(
  cancao_id INT PRIMARY KEY auto_increment,
  cancoes varchar(50) NOT NULL,
  album_id INT NOT NULL,
  FOREIGN KEY (album_id) references album(album_id)
) engine = InnoDB;

CREATE TABLE reproducoes(
  usuario_id INT NOT NULL,
  cancao_id INT NOT NULL,
  PRIMARY KEY (usuario_id, cancao_id),
  FOREIGN KEY (cancao_id) references cancoes(cancao_id),
  FOREIGN KEY (usuario_id) references usuarios(usuario_id)
) engine = InnoDB;

INSERT INTO planos (plano, valor_plano)
VALUES
  ('gratuito', '0'),
  ('universitário', '5.99'),
  ('familiar', '7.99');

INSERT INTO usuarios (usuario, idade, plano_id)
VALUES
  ('Thati', '23', '1'),
  ('Cintia', '35', '3'),
  ('Bill', '20', '2'),
  ('Roger', '45', '1');

INSERT INTO artistas (artista)
VALUES
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Freedie Shannon'),
  ('Lance Day');
  
INSERT INTO seguindo (usuario_id, artista_id)
VALUES
  ('1', '1'), 
  ('1', '3'),
  ('1', '4'),
  ('2', '1'),
  ('2', '2'),
  ('3', '3'),
  ('3', '3'),
  ('4', '4');

INSERT INTO album (album, artista_id)
VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);
  
INSERT INTO cancoes (cancoes, album_id)
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
  
  INSERT INTO reproducoes (usuario_id, cancao_id)
VALUES
  ('1', '1'),
  ('1', '6'),
  ('1', '14'),
  ('1', '16'),
  ('2', '13'),
  ('2', '17'),
  ('2', '2'),
  ('2', '15'),
  ('3', '4'),
  ('3', '16'),
  ('3', '6'),
  ('4', '3'),
  ('4', '18'),
  ('4', '11');
