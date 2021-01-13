DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;
DROP TABLE IF EXISTS plano;
DROP TABLE IF EXISTS usuario;
DROP TABLE IF EXISTS artista;
DROP TABLE IF EXISTS album;
DROP TABLE IF EXISTS cancao;
DROP TABLE IF EXISTS seguindo;
DROP TABLE IF EXISTS reproducao;

CREATE TABLE plano(
plano_id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL,
preco DECIMAL(5,2) NOT NULL
) engine = InnoDB;

CREATE TABLE usuario(
usuario_id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL,
idade INT NOT NULL,
plano_id INT NOT NULL,
FOREIGN KEY (plano_id) REFERENCES plano(plano_id) 
) engine = InnoDB;

CREATE TABLE artista(
artista_id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL
) engine = InnoDB;

CREATE TABLE album(
album_id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL,
artista_id INT NOT NULL,
FOREIGN KEY (artista_id) REFERENCES artista(artista_id)
) engine = InnoDB;

CREATE TABLE cancao(
cancao_id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL,
album_id INT NOT NULL,
FOREIGN KEY (album_id) REFERENCES album(album_id)
) engine = InnoDB;

CREATE TABLE reproducao(
reproducao_id INT PRIMARY KEY,
cancao_id INT NOT NULL,
usuario_id INT NOT NULL,
FOREIGN KEY (cancao_id) REFERENCES cancao(cancao_id),
FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id)
) engine = InnoDB;

CREATE TABLE seguindo(
seguindo_id INT PRIMARY KEY,
artista_id INT NOT NULL,
usuario_id INT NOT NULL,
FOREIGN KEY (artista_id) REFERENCES artista(artista_id),
FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id)
) engine = InnoDB;

INSERT INTO plano(plano_id, nome, preco)
VALUES
("gratuito", 0.00),
("universitário", 5.99),
("familiar", 7.99);

INSERT INTO usuario(usuario_id, nome, idade, plano_id)
VALUES
("Thati", 23, 1),
("Cintia", 35, 3),
("Bill", 20, 2),
("Roger", 45, 1);

INSERT INTO artista(artista_id, nome)
VALUES
("Walter Phoenix"),
("Peter Strong"),
("Lance Day"),
("Freedie Shanno");

INSERT INTO album(album_id, nome, artista_id)
VALUES
("Envious", 1),
("Exuberant", 1),
("Hallowed Steam", 2),
("Incandescent", 3),
("Temporary Culture", 4);

INSERT INTO cancao(cancao_id, nome, album_id)
VALUES
("Soul For Us", 1),
("Reflections of Magic", 1),
("Dance With Her Own", 1),
("Troubles Of My Inner Fire", 2),
("Time Fireworks", 2),
("Magic Circus", 3),
("Honey, So Do I", 3),
("Sweetie, Let's Go Wild", 3),
("She Knows", 3),
("Fantasy For Me", 4),
("Celebration of More", 4),
("Rock His Everything", 4),
("Home Forever", 4),
("Diamond Power", 4),
("Honey, Let's Be Silly", 4),
("Thang of Thunder", 5),
("Words Of Her Life", 5),
("Without My Streets", 5);

INSERT INTO reproducao(reproducao_id, cancao_id, usuario_id)
VALUES
(11, 1, 1), (61, 6, 1), (141, 14, 1), (161, 16, 1),
(132, 13, 2), (172, 17, 2), (22, 2, 2), (152, 15, 2),
(43, 4, 3), (163, 16, 3), (63, 6, 3),
(34, 3, 4), (184, 18, 4), (114, 11, 4);

INSERT INTO seguindo(seguindo_id, artista_id, usuario_id)
VALUES
(11, 1, 1), (41, 4, 1), (31, 3, 1),
(12, 1, 2), (32, 3, 2),
(23, 2, 3), (13, 1, 3),
(44, 4, 4);
