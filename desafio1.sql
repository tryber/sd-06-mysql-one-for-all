DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;

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
PRIMARY KEY(cancao_id, usuario_id),
cancao_id INT NOT NULL,
usuario_id INT NOT NULL,
FOREIGN KEY (cancao_id) REFERENCES cancao(cancao_id),
FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id)
) engine = InnoDB;

CREATE TABLE seguindo(
PRIMARY KEY(artista_id, usuario_id),
artista_id INT NOT NULL,
usuario_id INT NOT NULL,
FOREIGN KEY (artista_id) REFERENCES artista(artista_id),
FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id)
) engine = InnoDB;

INSERT INTO plano(nome, preco)
VALUES
("gratuito", 0.00),
("universitário", 5.99),
("familiar", 7.99);

INSERT INTO usuario(nome, idade, plano_id)
VALUES
("Thati", 23, 1),
("Cintia", 35, 3),
("Bill", 20, 2),
("Roger", 45, 1);

INSERT INTO artista(nome)
VALUES
("Walter Phoenix"),
("Peter Strong"),
("Lance Day"),
("Freedie Shanno");

INSERT INTO album(nome, artista_id)
VALUES
("Envious", 1),
("Exuberant", 1),
("Hallowed Steam", 2),
("Incandescent", 3),
("Temporary Culture", 4);

INSERT INTO cancao(nome, album_id)
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

INSERT INTO reproducao(cancao_id, usuario_id)
VALUES
(1, 1), (6, 1), (14, 1), (16, 1),
(13, 2), (17, 2), (2, 2), (15, 2),
(4, 3), (16, 3), (6, 3),
(3, 4), (18, 4), (11, 4);

INSERT INTO seguindo(artista_id, usuario_id)
VALUES
(1, 1), (4, 1), (3, 1),
(1, 2), (3, 2),
(2, 3), (1, 3),
(4, 4);
