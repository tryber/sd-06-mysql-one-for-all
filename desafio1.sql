DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE SpotifyClone.usuarios (
usuario_id INT PRIMARY KEY AUTO_INCREMENT,
usuario VARCHAR(100) NOT NULL,
idade INT NOT NULL,
plano_id INT NOT NULL,
FOREIGN KEY (plano_id) REFERENCES planos(plano_id)
)

INSERT INTO SpotifyClone.usuarios(usuario_id, usuario, idade, plano_id)
VALUES (1, 'Thati', 23, 1);
INSERT INTO SpotifyClone.usuarios(usuario_id, usuario, idade, plano_id)
VALUES (2, 'Cintia', 35, 3);
INSERT INTO SpotifyClone.usuarios(usuario_id, usuario, idade, plano_id)
VALUES (3, 'Bill', 20, 2);
INSERT INTO SpotifyClone.usuarios(usuario_id, usuario, idade, plano_id)
VALUES (4, 'Roger', 45, 1);

CREATE TABLE SpotifyClone.planos (
plano_id INT PRIMARY KEY AUTO_INCREMENT,
plano VARCHAR(50) NOT NULL,
valor_plano DECIMAL(5,2)
)

INSERT INTO SpotifyClone.planos(plano_id, plano, valor_plano)
VALUES (1, 'gratuito', 0);
INSERT INTO SpotifyClone.planos(plano_id, plano, valor_plano)
VALUES (2, 'universitário', 5.99);
INSERT INTO SpotifyClone.planos(plano_id, plano, valor_plano)
VALUES (3, 'familiar', 7.99);

CREATE TABLE SpotifyClone.historico_de_reproducoes(
usuario_id INT NOT NULL,
cancao_id INT NOT NULL,
PRIMARY KEY (usuario_id, cancao_id)
FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
FOREIGN KEY (cancao_id) REFERENCES cancoes(cancao_id),
)

INSERT INTO SpotifyClone.historico_de_reproducoes(usuario_id, cancoes_id)
VALUES (1, 1);
INSERT INTO SpotifyClone.historico_de_reproducoes(usuario_id, cancoes_id)
VALUES (1, 6);
INSERT INTO SpotifyClone.historico_de_reproducoes(usuario_id, cancoes_id)
VALUES (1, 14);
INSERT INTO SpotifyClone.historico_de_reproducoes(usuario_id, cancoes_id)
VALUES (1, 16);
INSERT INTO SpotifyClone.historico_de_reproducoes(usuario_id, cancoes_id)
VALUES (2, 13);
INSERT INTO SpotifyClone.historico_de_reproducoes(usuario_id, cancoes_id)
VALUES (2, 17);
INSERT INTO SpotifyClone.historico_de_reproducoes(usuario_id, cancoes_id)
VALUES (2, 2);
INSERT INTO SpotifyClone.historico_de_reproducoes(usuario_id, cancoes_id)
VALUES (2, 15);
INSERT INTO SpotifyClone.historico_de_reproducoes(usuario_id, cancoes_id)
VALUES (3, 4);
INSERT INTO SpotifyClone.historico_de_reproducoes(usuario_id, cancoes_id)
VALUES (3, 16);
INSERT INTO SpotifyClone.historico_de_reproducoes(usuario_id, cancoes_id)
VALUES (3, 6);
INSERT INTO SpotifyClone.historico_de_reproducoes(usuario_id, cancoes_id)
VALUES (4, 3);
INSERT INTO SpotifyClone.historico_de_reproducoes(usuario_id, cancoes_id)
VALUES (4, 18);
INSERT INTO SpotifyClone.historico_de_reproducoes(usuario_id, cancoes_id)
VALUES (4, 11);

CREATE TABLE SpotifyClone.seguindo_artistas (
usuario_id INT NOT NULL,
artista_id INT NOT NULL,
PRIMARY KEY (usuario_id, artista_id),
FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
FOREIGN KEY (artista_id) REFERENCES artistas(artista_id)
)

INSERT INTO SpotifyClone.seguindo_artistas(usuario_id, artista_id)
VALUES (1, 1);
INSERT INTO SpotifyClone.seguindo_artistas(usuario_id, artista_id)
VALUES (1, 4);
INSERT INTO SpotifyClone.seguindo_artistas(usuario_id, artista_id)
VALUES (1, 3);
INSERT INTO SpotifyClone.seguindo_artistas(usuario_id, artista_id)
VALUES (2, 1);
INSERT INTO SpotifyClone.seguindo_artistas(usuario_id, artista_id)
VALUES (2, 3);
INSERT INTO SpotifyClone.seguindo_artistas(usuario_id, artista_id)
VALUES (3, 2);
INSERT INTO SpotifyClone.seguindo_artistas(usuario_id, artista_id)
VALUES (3, 1);
INSERT INTO SpotifyClone.seguindo_artistas(usuario_id, artista_id)
VALUES (4, 4);

CREATE TABLE SpotifyClone.artistas (
artista_id INT PRIMARY KEY AUTO_INCREMENT,
artista VARCHAR(100) NOT NULL
)

INSERT INTO SpotifyClone.artistas(artista_id, artista)
VALUES (1, 'Walter Phoenix');
INSERT INTO SpotifyClone.artistas(artista_id, artista)
VALUES (2, 'Peter Strong');
INSERT INTO SpotifyClone.artistas(artista_id, artista)
VALUES (3, 'Lance Day');
INSERT INTO SpotifyClone.artistas(artista_id, artista)
VALUES (4, 'Freedie Shannon');

CREATE TABLE SpotifyClone.albuns (
album_id INT PRIMARY KEY AUTO_INCREMENT,
album VARCHAR(100) NOT NULL,
artista_id INT NOT NULL, 
FOREIGN KEY (artista_id) REFERENCES artistas(artista_id)
)

INSERT INTO SpotifyClone.albuns(album_id, album, artista_id)
VALUES (1, 'Envious', 1);
INSERT INTO SpotifyClone.albuns(album_id, album, artista_id)
VALUES (2, 'Exuberant', 1);
INSERT INTO SpotifyClone.albuns(album_id, album, artista_id)
VALUES (3, 'Hallowed Steam', 2);
INSERT INTO SpotifyClone.albuns(album_id, album, artista_id)
VALUES (4, 'Incandescent', 3);
INSERT INTO SpotifyClone.albuns(album_id, album, artista_id)
VALUES (5, 'Temporary Culture', 4);

CREATE TABLE SpotifyClone.cancoes (
cancoes_id INT PRIMARY KEY AUTO_INCREMENT,
cancao VARCHAR(255) NOT NULL,
album_id INT NOT NULL,
FOREIGN KEY (album_id) REFERENCES albuns(album_id)
)engine=InnoDB;

INSERT INTO SpotifyClone.cancoes(cancoes_id, cancao, album_id)
VALUES (1, "Soul For Us", 1);
INSERT INTO SpotifyClone.cancoes(cancoes_id, cancao, album_id)
VALUES (2, "Reflections Of Magic", 1);
INSERT INTO SpotifyClone.cancoes(cancoes_id, cancao, album_id)
VALUES (3, "Dance With Her Own", 1);
INSERT INTO SpotifyClone.cancoes(cancoes_id, cancao, album_id)
VALUES (4, "Troubles Of My Inner Fire", 2);
INSERT INTO SpotifyClone.cancoes(cancoes_id, cancao, album_id)
VALUES (5, "Time Fireworks", 2);
INSERT INTO SpotifyClone.cancoes(cancoes_id, cancao, album_id)
VALUES (6, "Magic Circus", 3);
INSERT INTO SpotifyClone.cancoes(cancoes_id, cancao, album_id)
VALUES (7, "Honey, So Do I", 3);
INSERT INTO SpotifyClone.cancoes(cancoes_id, cancao, album_id)
VALUES (8, "Sweetie, Let's Go Wild", 3);
INSERT INTO SpotifyClone.cancoes(cancoes_id, cancao, album_id)
VALUES (9, "She Knows", 3);
INSERT INTO SpotifyClone.cancoes(cancoes_id, cancao, album_id)
VALUES (10, "Fantasy For Me", 4);
INSERT INTO SpotifyClone.cancoes(cancoes_id, cancao, album_id)
VALUES (11, "Celebration Of More", 4);
INSERT INTO SpotifyClone.cancoes(cancoes_id, cancao, album_id)
VALUES (12, "Rock His Everything", 4);
INSERT INTO SpotifyClone.cancoes(cancoes_id, cancao, album_id)
VALUES (13, "Home Forever", 4);
INSERT INTO SpotifyClone.cancoes(cancoes_id, cancao, album_id)
VALUES (14, "Diamond Power", 4);
INSERT INTO SpotifyClone.cancoes(cancoes_id, cancao, album_id)
VALUES (15, "Honey, Let's Be Silly", 4);
INSERT INTO SpotifyClone.cancoes(cancoes_id, cancao, album_id)
VALUES (16, "Thang Of Thunder", 5);
INSERT INTO SpotifyClone.cancoes(cancoes_id, cancao, album_id)
VALUES (17, "Words Of Her Life", 5);
INSERT INTO SpotifyClone.cancoes(cancoes_id, cancao, album_id)
VALUES (18, "Without My Streets", 5);