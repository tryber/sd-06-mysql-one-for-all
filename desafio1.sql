DROP DATABASE IF EXISTS `SpotifyClone`;
CREATE DATABASE `SpotifyClone`;
USE `SpotifyClone`;

CREATE TABLE planos(
id_plano INT PRIMARY KEY,
plano VARCHAR(100) NOT NULL,
valor DECIMAL(10,2) NOT NULL
)engine = InnoDB;

CREATE TABLE usuarios(
id_usuario INT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
idade INT NOT NULL,
id_plano INT NOT NULL,
FOREIGN KEY(id_plano) references planos(id_plano)
)engine = InnoDB;

CREATE TABLE artistas(
id_artista INT PRIMARY KEY,
artista VARCHAR(100) NOT NULL
)engine = InnoDB;

CREATE TABLE albuns(
id_album INT PRIMARY KEY,
album VARCHAR(100) NOT NULL,
id_artista INT NOT NULL,
FOREIGN KEY(id_artista) references artistas(id_artista)
)engine = InnoDB;

CREATE TABLE cancoes(
id_cancao INT PRIMARY KEY,
cancao VARCHAR(100) NOT NULL,
id_album INT NOT NULL,
FOREIGN KEY(id_album) references albuns(id_album)
)engine = InnoDB;

CREATE TABLE historico_de_reproducoes(
id_usuario INT NOT NULL,
id_cancao INT NOT NULL,
FOREIGN KEY(id_usuario) references usuarios(id_usuario),
FOREIGN KEY(id_cancao) references cancoes(id_cancao),
PRIMARY KEY(id_usuario, id_cancao)
)engine = InnoDB;

CREATE TABLE seguindo_artistas(
id_usuario INT NOT NULL,
id_artista INT NOT NULL,
FOREIGN KEY (id_usuario) references usuarios(id_usuario),
FOREIGN KEY (id_artista) references artistas(id_artista),
PRIMARY KEY(id_usuario, id_artista)
)engine = InnoDB;

INSERT INTO planos(id_plano, plano, valor)
VALUES (1, 'gratuito', 0), (2, 'familiar', 7.99), (3, 'universitario', 5.99);

INSERT INTO usuarios(id_usuario, nome, idade, id_plano)
VALUES (1, 'Thati', 23, 1), (2, 'Cintia', 35, 2), (3, 'Bill', 20, 3), (4, 'Roger', 45, 1);

INSERT INTO artistas(id_artista, artista)
VALUES (1, 'Walter Phoenix'), (2, 'Peter Strong'), (3, 'Lance Day'), (4, 'Freedie Shannon');

INSERT INTO albuns(id_album, album, id_artista)
VALUES (1, 'Envious', 1), (2, 'Exuberant', 1), (3, 'Hallowed Steam', 2), (4, 'Incandescent', 3), (5, 'Temporary Culture', 4);

INSERT INTO cancoes(id_cancao, cancao, id_album)
VALUES
(1, 'Soul For Us', 1),
(2, 'Reflections Of Magic', 1),
(3, 'Dance With Her Own', 1),
(4, 'Troubles Of My Inner Fire', 2),
(5, 'Time Fireworks', 2),
(6, 'Magic Circus', 3),
(7, 'Honey, So Do I', 3),
(8, "Sweetie, Let's Go Wild", 3),
(9, 'She Knows', 3),
(10, 'Fantasy For Me', 4),
(11, 'Celebration Of More', 4),
(12, 'Rock His Everything', 4),
(13, 'Home Forever', 4),
(14, 'Diamond Power', 4),
(15, "Honey, Let's Be Silly", 4),
(16, 'Thang Of Thunder', 5),
(17, 'Words Of Her Life', 5),
(18, 'Without My Streets', 5);

INSERT INTO seguindo_artistas(id_usuario, id_artista)
VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);

INSERT INTO historico_de_reproducoes(id_usuario, id_cancao)
VALUES
(1, 1),
(1, 6),
(1, 14),
(1, 16),
(2, 13),
(2, 17),
(2, 2),
(2, 15),
(3, 4),
(3, 16),
(3, 6),
(4, 3),
(4, 18),
(4, 11);
