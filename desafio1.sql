CREATE DATABASE SpotifyClone;
USE SpotifyClone;

CREATE TABLE planos (
plano_id INT PRIMARY KEY AUTO_INCREMENT,
nome_plano VARCHAR(40) UNIQUE NOT NULL,
valor_plano DECIMAL(5, 2) NOT NULL
);

CREATE TABLE usuarios (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(40) NOT NULL,
idade INT NOT NULL,
plano_id INT NOT NULL,
FOREIGN KEY (plano_id) REFERENCES planos(plano_id)
);

CREATE TABLE artistas (
artista_id INT PRIMARY KEY AUTO_INCREMENT,
nome_artista VARCHAR(40) NOT NULL
);

CREATE TABLE albums (
album_id INT PRIMARY KEY AUTO_INCREMENT,
nome_album VARCHAR (40) NOT NULL,
artista_id INT NOT NULL,
FOREIGN KEY (artista_id) REFERENCES artistas(artista_id)
);

CREATE TABLE cancoes (
cancao_id INT PRIMARY KEY AUTO_INCREMENT,
nome_cancao VARCHAR(40) NOT NULL,
album_id INT NOT NULL,
FOREIGN KEY (album_id) REFERENCES albums(album_id)
);

CREATE TABLE seguindo (
usuario_id INT NOT NULL,
FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
artista_id INT NOT NULL,
FOREIGN KEY (artista_id) REFERENCES artistas(artista_id),
PRIMARY KEY (usuario_id, artista_id)
);

CREATE TABLE historico (
usuario_id INT NOT NULL,
FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
cancao_id INT NOT NULL,
FOREIGN KEY (cancao_id) REFERENCES cancoes(cancao_id),
PRIMARY KEY (usuario_id, cancao_id)
);

-- PLANOS

INSERT INTO planos (plano_id, nome_plano, valor_plano)
VALUES (1, "gratuito", 0.00);

INSERT INTO planos (plano_id, nome_plano, valor_plano)
VALUES (2, "universitário", 5.99);

INSERT INTO planos (plano_id, nome_plano, valor_plano)
VALUES (3, "familiar", 7.99);

-- USUARIOS

INSERT INTO usuarios (id, nome, idade, plano_id)
VALUES (1, "Thati", 23, 1);

INSERT INTO usuarios (id, nome, idade, plano_id)
VALUES (2, "Cintia", 35, 3);

INSERT INTO usuarios (id, nome, idade, plano_id)
VALUES (3, "Bill", 20, 2);

INSERT INTO usuarios (id, nome, idade, plano_id)
VALUES (4, "Roger", 45, 1);

-- ARTISTAS

INSERT INTO artistas (artista_id, nome_artista)
VALUES (1, "Freedie Shannon");

INSERT INTO artistas (artista_id, nome_artista)
VALUES (2, "Lance Day");

INSERT INTO artistas (artista_id, nome_artista)
VALUES (3, "Peter Strong");

INSERT INTO artistas (artista_id, nome_artista)
VALUES (4, "Walter Phoenix");

-- ALBUMS

INSERT INTO albums (album_id, nome_album, artista_id)
VALUES (1, "Temporary Culture", 1);

INSERT INTO albums (album_id, nome_album, artista_id)
VALUES (2, "Incandescent", 2);

INSERT INTO albums (album_id, nome_album, artista_id)
VALUES (3, "Hallowed Steam", 3);

INSERT INTO albums (album_id, nome_album, artista_id)
VALUES (4, "Envious", 4);

INSERT INTO albums (album_id, nome_album, artista_id)
VALUES (5, "Exuberant", 4);

-- CANCOES

INSERT INTO cancoes (cancao_id, nome_cancao, album_id)
VALUES (1, "Thang Of Thunder", 1);

INSERT INTO cancoes (cancao_id, nome_cancao, album_id)
VALUES (2, "Words Of Her Life", 1);

INSERT INTO cancoes (cancao_id, nome_cancao, album_id)
VALUES (3, "Without My Streets", 1);

INSERT INTO cancoes (cancao_id, nome_cancao, album_id)
VALUES (4, "Fantasy For Me", 2);

INSERT INTO cancoes (cancao_id, nome_cancao, album_id)
VALUES (5, "Celebration Of More", 2);

INSERT INTO cancoes (cancao_id, nome_cancao, album_id)
VALUES (6, "Rock His Everything", 2);

INSERT INTO cancoes (cancao_id, nome_cancao, album_id)
VALUES (7, "Home Forever", 2);

INSERT INTO cancoes (cancao_id, nome_cancao, album_id)
VALUES (8, "Diamond Power", 2);

INSERT INTO cancoes (cancao_id, nome_cancao, album_id)
VALUES (9, ("Honey, Let's Be Silly"), 2);

INSERT INTO cancoes (cancao_id, nome_cancao, album_id)
VALUES (10, "Magic Circus", 3);

INSERT INTO cancoes (cancao_id, nome_cancao, album_id)
VALUES (11, "Honey, So Do I", 3);

INSERT INTO cancoes (cancao_id, nome_cancao, album_id)
VALUES (12, ("Sweetie, Let's Go Wild"), 3);

INSERT INTO cancoes (cancao_id, nome_cancao, album_id)
VALUES (13, "She Knows", 3);

INSERT INTO cancoes (cancao_id, nome_cancao, album_id)
VALUES (14, "Soul For Us", 4);

INSERT INTO cancoes (cancao_id, nome_cancao, album_id)
VALUES (15, "Reflections Of Magic", 4);

INSERT INTO cancoes (cancao_id, nome_cancao, album_id)
VALUES (16, "Dance With Her Own", 4);

INSERT INTO cancoes (cancao_id, nome_cancao, album_id)
VALUES (17, "Troubles Of My Inner Fire", 5);

INSERT INTO cancoes (cancao_id, nome_cancao, album_id)
VALUES (18, "Time Fireworks", 5);

-- SEGUINDO

INSERT INTO seguindo (usuario_id, artista_id)
VALUES (1, 1);

INSERT INTO seguindo (usuario_id, artista_id)
VALUES (1, 2);

INSERT INTO seguindo (usuario_id, artista_id)
VALUES (1, 4);

INSERT INTO seguindo (usuario_id, artista_id)
VALUES (2, 2);

INSERT INTO seguindo (usuario_id, artista_id)
VALUES (2, 4);

INSERT INTO seguindo (usuario_id, artista_id)
VALUES (3, 3);

INSERT INTO seguindo (usuario_id, artista_id)
VALUES (3, 4);

INSERT INTO seguindo (usuario_id, artista_id)
VALUES (4, 1);

-- HISTORICO

INSERT INTO historico (usuario_id, cancao_id)
VALUES (1, 14);

INSERT INTO historico (usuario_id, cancao_id)
VALUES (1, 10);

INSERT INTO historico (usuario_id, cancao_id)
VALUES (1, 8);

INSERT INTO historico (usuario_id, cancao_id)
VALUES (1, 1);

INSERT INTO historico (usuario_id, cancao_id)
VALUES (2, 7);

INSERT INTO historico (usuario_id, cancao_id)
VALUES (2, 2);

INSERT INTO historico (usuario_id, cancao_id)
VALUES (2, 15);

INSERT INTO historico (usuario_id, cancao_id)
VALUES (2, 9);

INSERT INTO historico (usuario_id, cancao_id)
VALUES (3, 17);

INSERT INTO historico (usuario_id, cancao_id)
VALUES (3, 1);

INSERT INTO historico (usuario_id, cancao_id)
VALUES (3, 10);

INSERT INTO historico (usuario_id, cancao_id)
VALUES (4, 16);

INSERT INTO historico (usuario_id, cancao_id)
VALUES (4, 3);

INSERT INTO historico (usuario_id, cancao_id)
VALUES (4, 5);
