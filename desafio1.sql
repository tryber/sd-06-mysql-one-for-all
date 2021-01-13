DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE plano(
plano_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
tipo VARCHAR(20) NOT NULL,
valor DECIMAL(4,2) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE artistas(
artista_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nome_artista VARCHAR(30) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE albuns(
album_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nome_album VARCHAR(30) NOT NULL,
artista INT NOT NULL,
CONSTRAINT `fk_artista` FOREIGN KEY (artista) REFERENCES artistas(artista_id)
) ENGINE = InnoDB;

CREATE TABLE musicas(
musica_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
musica VARCHAR(30) NOT NULL,
album INT NOT NULL,
CONSTRAINT `fk_album` FOREIGN KEY (album) REFERENCES albuns(album_id)
) ENGINE = InnoDB;

CREATE TABLE usuarios(
usuario_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nome VARCHAR(30) NOT NULL,
idade INT NOT NULL,
plano INT NOT NULL,
CONSTRAINT `fk_plano` FOREIGN KEY (plano) REFERENCES plano(plano_id)
) ENGINE = InnoDB;

CREATE TABLE historico(
usuario INT NOT NULL,
musica INT NOT NULL,
CONSTRAINT `fk_usuario` FOREIGN KEY (usuario) REFERENCES usuarios(usuario_id),
CONSTRAINT `fk_musica`  FOREIGN KEY (musica) REFERENCES musicas(musica_id)
) ENGINE = InnoDB;

CREATE TABLE seguindo(
usuario INT NOT NULL,
artista INT NOT NULL,
CONSTRAINT `fk_usuario_seguindo` FOREIGN KEY (usuario) REFERENCES usuarios(usuario_id),
CONSTRAINT `fk_artista_seguido` FOREIGN KEY (artista) REFERENCES artistas(artista_id)
) ENGINE = InnoDB;

INSERT INTO plano(tipo, valor) VALUES
('gratuito', 0),
('familiar', 7.99),
('universitário', 5.99);

INSERT INTO artistas(nome_artista) VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO albuns(nome_album, artista) VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO musicas(musica, album) VALUES
('Soul For Us', 1),
('Reflections Of Magic', 1),
('Dance With Her Own', 1),
('Troubles Of My Inner Fire', 2),
('Time Fireworks', 2),
('Magic Circus', 3),
('Honey, So Do I', 3),
("Sweetie, Let's Go Wild", 3),
('She Knows', 3),
('Fantasy For Me', 4),
('Celebration Of More', 4),
('Rock His Everything', 4),
('Home Forever', 4),
('Diamond Power', 4),
("Honey, Let's Be Silly", 4),
('Thang Of Thunder', 5),
('Words Of Her Life', 5),
('Without My Streets', 5);

INSERT INTO usuarios(nome, idade, plano) VALUES
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

INSERT INTO historico (usuario, musica) VALUES
('1', 1),
('1', 6),
('1', 14),
('1', 16),
('2', 13),
('2', 17),
('2', 2),
('2', 15),
('3', 4),
('3', 16),
('3', 6),
('4', 3),
('4', 18),
('4', 11);

INSERT INTO seguindo (usuario, artista) VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);
