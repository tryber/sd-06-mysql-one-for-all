DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

DROP TABLE IF EXISTS plano;

CREATE TABLE plano(
    plano_id int(11) PRIMARY KEY AUTO_INCREMENT,
    plano_nome varchar(20) NOT NULL,
    valor_plano decimal(4,2) NOT NULL
) engine = InnoDB;

INSERT INTO plano (plano_nome, valor_plano)
VALUES
  ('gratuito', '0'),
  ('universitário', '5,99'),
  ('familiar', '7,99');

DROP TABLE IF EXISTS usuario;

CREATE TABLE usuario(
    usuario_id int(11) PRIMARY KEY AUTO_INCREMENT,
    usuario_nome varchar(80) NOT NULL,
    idade int NOT NULL,
    plano_id decimal(4,2) NOT NULL,
    PRIMARY KEY (plano_id) REFERENCES plano (plano_id)
) engine = InnoDB;

INSERT INTO usuario (usuario, idade, plano_id)
VALUES
  ('Thati', '23', '1'),
  ('Cintia', '35', '3'),
  ('Bill', '20', '2'),
  ('Roger', '45', '1');

DROP TABLE IF EXISTS artistas;

CREATE TABLE artistas(
    artista_id int(11) PRIMARY KEY AUTO_INCREMENT,
    artista_nome varchar(80) NOT NULL,
) engine = InnoDB;

  INSERT INTO artistas (artista_nome)
VALUES
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shannon');

DROP TABLE IF EXISTS album;

CREATE TABLE album(
    album_id int(11) PRIMARY KEY AUTO_INCREMENT,
    album_nome varchar(20) NOT NULL,
    artista_id int(11) NOT NULL
) engine = InnoDB;

INSERT INTO album (album_nome, artista)
VALUES
  ('Envious',	'1'),
  ('Exuberant',	'1'),
  ('Hallowed Steam'	'2'),
  ('Incandescent'	'3'),
  ('Temporary Culture', '4');

DROP TABLE IF EXISTS cancoes;

CREATE TABLE cancoes(
    cancao_id int(11) PRIMARY KEY AUTO_INCREMENT,
    cancao_nome varchar(120) NOT NULL,
    artista_id int(11) NOT NULL,
    album_id int(11) NOT NULL,
    FOREIGN KEY (album_id) REFERENCES album (album_id)
) engine = InnoDB;

INSERT INTO cancoes(cancao_nome,	artista_id,	album_id)
VALUES
  ('Soul For Us',	'1',	'1'),
  ('Reflections Of Magic',	'1',	'1'),
  ('Dance With Her Own',	'1',	'1'),
  ('Troubles Of My Inner Fire',	'1',	'2'),
  ('Time Fireworks',	'1',	'2'),
  ('Magic Circus',	'2',	'3'),
  ('Honey, So Do I',	'2',	'3'),
  ('Sweetie, Lets Go Wild',	'2',	'3'),
  ('She Knows',	'2',	'3'),
  ('Fantasy For Me',	'3',	'4'),
  ('Celebration Of More',	'3',	'4'),
  ('Rock His Everything',	'3',	'4'),
  ('Home Forever',	'3',	'4'),
  ('Diamond Power',	'3',	'4'),
  ('Honey, Lets Be Silly', '3'	'4'),
  ('Thang Of Thunder', '4',	'5'),
  ('Words Of Her Life',	'4',	'5'),
  ('Without My Streets'	'4'	'5');

DROP TABLE IF EXISTS historico_de_reproducoes;

CREATE TABLE historico_de_reproducoes(
    reproducao_id int(11) PRIMARY KEY AUTO_INCREMENT,
    cancao_nome varchar(80) NOT NULL,
    usuario_id int(11) NOT NULL,
    album_id int(11) NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES usuario (usuario_id),
    FOREIGN KEY (album_id) REFERENCES album (album_id),
    FOREIGN KEY (cancao_nome) REFERENCES cancoes (cancao_nome)
) engine = InnoDB;

INSERT INTO historico_de_reproducoes (cancao_nome,	usuario_id,	album_id)
VALUES
  ('Soul For Us',	'1',	'1'),
  ('Magic Circus',	'1',	'3'),
  ('Diamond Power',	'1',	'4'),
  ('Thang Of Thunder', '1',	'5'),
  ('Home Forever', '2',	'4'),
  ('Words Of Her Life',	'2',	'5'),
  ('Reflections Of Magic',	'2',	'1'),
  ('Honey, Lets Be Silly',	'2',	'3'), 
  ('Troubles Of My Inner Fire',	'3',	'2'),
  ('Thang Of Thunder',	'3',	'5'),
  ('Magic Circus', '3',	'3'),
  ('Dance With Her Own',	'4',	'1'),
  ('Without My Streets',	'4',	'5'),
  ('Celebration Of More',	'4',	'4');

DROP TABLE IF EXISTS seguindo_artista;

CREATE TABLE seguindo_artista(
    usuario_id int(11) NOT NULL,
    artista_id int(11) NOT NULL,
    PRIMARY KEY (usuario_id, artista_id),
    FOREIGN KEY (usuario_id) REFERENCES usuario (usuario_id),
    FOREIGN KEY (artista_id) REFERENCES artistas (artista_id)
) engine = InnoDB;

INSERT INTO seguindo_artista(usuario_id,	artista_id)
VALUES
  ('1',	'1'),
  ('1',	'4'),
  ('1',	'3'),
  ('2',	'1'),
  ('2', '3'),
  ('3'	'2'),
  ('3',	'1'),
  ('4',	'4');
