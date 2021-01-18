DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE planos(
plano_id INT PRIMARY KEY auto_increment,
plano VARCHAR(50) NOT NULL,
plano_valor DECIMAL(4,2) NOT NULL
)engine=InnoDB;

CREATE TABLE singers( 
singer_id INT PRIMARY KEY auto_increment,
singer_name VARCHAR(20) NOT NULL UNIQUE
)engine=InnoDB;

CREATE TABLE albuns(
album_id INT PRIMARY KEY auto_increment,
album VARCHAR(20) NOT NULL UNIQUE,
singer_id INT NOT NULL,
FOREIGN KEY (singer_id) REFERENCES singers(singer_id)
)engine=InnoDB;

CREATE TABLE user(
user_id INT PRIMARY KEY auto_increment,
user_name VARCHAR(20) NOT NULL,
idade INT NOT NULL,
plano_id INT NOT NULL,
FOREIGN KEY (plano_id) REFERENCES planos(plano_id)
)engine=InnoDB;

CREATE TABLE songs(
song_id INT PRIMARY KEY auto_increment,
song_name VARCHAR(50) NOT NULL,
album_id INT NOT NULL,
FOREIGN KEY (album_id) REFERENCES albuns(album_id)
)engine=InnoDB;

CREATE TABLE history(
user_id INT NOT NULL,
song_id INT NOT NULL,
FOREIGN KEY (user_id) REFERENCES user(user_id),
FOREIGN KEY (musica_id) REFERENCES songs(musica_id),
PRIMARY KEY (user_id, musica_id)
)engine=InnoDB;

CREATE TABLE following_singer(
singer_id INT NOT NULL,
user_id INT NOT NULL,
FOREIGN KEY (singer_id) REFERENCES singers(singer_id),
FOREIGN KEY (user_id) REFERENCES user(user_id),
PRIMARY KEY (singer_id, user_id)
)engine=InnoDB;

INSERT INTO planos (plano, plano_valor)
VALUES
('gratuito', 0),
('familiar', 7.99),
('universitário', 5.99);

INSERT INTO singers(name)
VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO albuns(album, singer_id)
VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO songs(name, album_id)
VALUES
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

INSERT INTO user(user_name, idade, plano_id)
VALUES
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

INSERT INTO history(user_id, musica_id)
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

INSERT INTO following_singer(user_id, singer_id)
VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);
