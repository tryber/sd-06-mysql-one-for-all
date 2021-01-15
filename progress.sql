-- DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE usuario(
usuario_id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL,
idade INT NOT NULL
)engine=InnoDB;

INSERT INTO usuario (nome, idade)
VALUES
  ('Thati', '23'),
  ('Cintia', '35'),
  ('Bill', '20'),
  ('Roger', '45');

CREATE TABLE planos(
plano_id INT PRIMARY KEY AUTO_INCREMENT,
nome_plano VARCHAR(50) NOT NULL,
valor_plano DECIMAL(4,2) NOT NULL
)engine=InnoDB;

INSERT INTO planos (nome_plano, valor_plano)
VALUES
  ('gratuito', 0),
  ('familiar', 7.99),
  ('universitário', 5.99);

CREATE TABLE artista(
artista_id INT PRIMARY KEY AUTO_INCREMENT,
nome_artista VARCHAR(50) NOT NULL
)engine=InnoDB;

INSERT INTO artista (nome_artista)
VALUES
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shanno');

CREATE TABLE album(
album_id INT PRIMARY KEY AUTO_INCREMENT,
nome_album VARCHAR(100) NOT NULL,
artista_id INT NOT NULL,
FOREIGN KEY (artista_id) REFERENCES artista(artista_id)
)engine=InnoDB;

INSERT INTO album (nome_album, artista_id)
VALUES
  ('Envious',1),
  ('Exuberant',1),
  ('Hallowed Steam',2),
  ('Incandescent',3),
  ('Temporary Culture',4);

CREATE TABLE musica(
musica_id INT PRIMARY KEY AUTO_INCREMENT,
nome_musica VARCHAR(100) NOT NULL,
album_id INT NOT NULL,
artista_id INT NOT NULL,
FOREIGN KEY (album_id) REFERENCES album(album_id),
FOREIGN KEY (artista_id) REFERENCES artista(artista_id)
)engine=InnoDB;

CREATE TABLE contratacoes(
usuario_id INT PRIMARY KEY AUTO_INCREMENT,
plano_id INT NOT NULL,
FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
FOREIGN KEY (plano_id) REFERENCES planos(plano_id)
)engine=InnoDB;

CREATE TABLE seguir_historico(
usuario_id INT PRIMARY KEY AUTO_INCREMENT,
artista_id INT NOT NULL,
FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
FOREIGN KEY (artista_id) REFERENCES artista(artista_id)
)engine=InnoDB;

CREATE TABLE historico_tocadas(
usuario_id INT NOT NULL,
musica_id INT NOT NULL,
FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
FOREIGN KEY (musica_id) REFERENCES musica(musica_id)
)engine=InnoDB;

INSERT INTO historico_tocadas (usuario_id, musica_id)
VALUES
  (1,1),
  (1,6),
  (1,14),
  (1,16),
  (2,13),
  (2,17),
  (2,2),
  (2,15),
  (3,4),
  (3,16),
  (3,6),
  (4,3),
  (4,18),
  (4,11);




SELECT * FROM hr.job_history;
