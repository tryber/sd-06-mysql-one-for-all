DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE IF NOT EXISTS SpotifyClone;
USE SpotifyClone;
CREATE TABLE planos(
id INT PRIMARY KEY auto_increment,
nome_plano VARCHAR(50) NOT NULL,
valor DOUBLE NOT NULL
)ENGINE=InnoDB;

CREATE TABLE usuario(
id INT PRIMARY KEY auto_increment,
nome_usuario VARCHAR(50) NOT NULL,
idade INT NOT NULL,
id_plano INT NOT NULL,
FOREIGN KEY (id_plano) REFERENCES planos(id)
)ENGINE=InnoDB;

CREATE TABLE artista(
id INT PRIMARY KEY auto_increment,
nome_artista VARCHAR(50) NOT NULL
)ENGINE=InnoDB;

CREATE TABLE album(
id INT PRIMARY KEY auto_increment,
nome_album VARCHAR(50) NOT NULL,
id_artista INT NOT NULL,
FOREIGN KEY (id_artista) REFERENCES artista(id)
)ENGINE=InnoDB;

CREATE TABLE cancao(
id INT PRIMARY KEY auto_increment,
nome_cancao VARCHAR(50) NOT NULL,
id_album INT NOT NULL,
FOREIGN KEY (id_album) REFERENCES album(id)
)ENGINE=InnoDB;

CREATE TABLE seguindo_artista(
id_usuario INT NOT NULL,
id_artista INT NOT NULL,
FOREIGN KEY (id_usuario) REFERENCES usuario(id),
FOREIGN KEY (id_artista) REFERENCES artista(id),
PRIMARY KEY (id_usuario, id_artista)
)ENGINE=InnoDB;

CREATE TABLE historico_de_reproducao(
id_usuario INT NOT NULL,
id_cancao INT NOT NULL,
FOREIGN KEY (id_usuario) REFERENCES usuario(id),
FOREIGN KEY (id_cancao) REFERENCES cancao(id),
PRIMARY KEY (id_usuario, id_cancao)
)ENGINE=InnoDB;

INSERT INTO planos (nome_plano, valor)
VALUES ('gratuito', 0),
('familiar', 7.99),
('universitário', 5.99);

INSERT INTO usuario (nome_usuario, idade, id_plano)
VALUES ('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

INSERT INTO artista (nome_artista)
VALUES ('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO album (nome_album, id_artista)
VALUES ('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO cancao (nome_cancao, id_album)
VALUES ("Soul For Us", 1), ("Reflections Of Magic", 1), ("Dance With Her Own", 1),
("Troubles Of My Inner Fire", 2), ("Time Fireworks", 2),
("Magic Circus", 3), ("Honey, So Do I", 3), ("Sweetie, Let's Go Wild", 3), ("She Knows", 3),
("Fantasy For Me", 4), ("Celebration Of More", 4), ("Rock His Everything", 4), ("Home Forever", 4), ("Diamond Power", 4), ("Honey, Let's Be Silly", 4),
("Thang Of Thunder", 5), ("Words Of Her Life", 5), ("Without My Streets", 5);

INSERT INTO seguindo_artista (id_usuario, id_artista)
VALUES (1, 1), (1, 3), (1, 4),
(2, 1), (2, 3),
(3, 2), (3, 1),
(4, 4);

INSERT INTO historico_de_reproducao (id_usuario, id_cancao)
VALUES (1, 1), (1, 6), (1, 14), (1, 16),
(2, 13), (2, 17), (2, 2), (2, 15),
(3, 4), (3, 16), (3, 6),
(4, 3), (4, 18), (4, 11);
