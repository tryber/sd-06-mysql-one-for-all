DROP SCHEMA SpotifyClone;

CREATE SCHEMA IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

CREATE TABLE plan(
	id_plan INT PRIMARY KEY AUTO_INCREMENT,
	type VARCHAR(50) NOT NULL,
	value DECIMAL(5,2) NOT NULL
)engine=InnoDB;

CREATE TABLE users(
	id_user INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(50) NOT NULL,
	age INT NOT NULL,
    id_plan INT NOT NULL,
    FOREIGN KEY (id_plan) REFERENCES plan(id_plan)
)engine=InnoDB;

CREATE TABLE artists(
	id_artist INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(50) NOT NULL
)engine=InnoDB;

CREATE TABLE albuns(
	id_album INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(50) NOT NULL,
	id_artist INT NOT NULL,
    FOREIGN KEY (id_artist) REFERENCES artists(id_artist)
)engine=InnoDB;

CREATE TABLE songs(
	id_song INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(200) NOT NULL,
    id_album INT NOT NULL,
    FOREIGN KEY (id_album) REFERENCES albuns(id_album)
)engine=InnoDB;

CREATE TABLE reproductory_history(
	id_reproductory_history INT PRIMARY KEY AUTO_INCREMENT,
	id_user INT NOT NULL,
    id_song INT NOT NULL,
    FOREIGN KEY (id_user) REFERENCES users(id_user),
    FOREIGN KEY (id_song) REFERENCES songs(id_song)
)engine=InnoDB;

CREATE TABLE following_artist(
	id_following_artist INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(80),
    id_user INT NOT NULL,
    id_artist INT NOT NULL,
    FOREIGN KEY (id_user) REFERENCES users(id_user),
    FOREIGN KEY (id_artist) REFERENCES artists(id_artist)
)engine=InnoDB;

INSERT INTO plan(id_plan, type, value)
VALUES
  (1, 'gratuito', 0),
  (2, 'universitário', 5.99),
  (3, 'familiar', 7.99);
  
INSERT INTO users(id_user, name, age, id_plan)
VALUES
  (1, 'Thati', 23, 1),
  (2, 'Cintia', 35, 3),
  (3, 'Bill', 20, 2),
  (4, 'Roger', 45, 1);
  
INSERT INTO artists(id_artist, name)
VALUES
  (1, 'Walter Phoenix'),
  (2, 'Peter Strong'),
  (3, 'Lance Day'),
  (4, 'Freedie Shannon');

INSERT INTO albuns(id_album, title, id_artist)
VALUES
  (1, 'Envious', 1),
  (2, 'Exuberant', 1),
  (3, 'Hallowed Steam', 2),
  (4, 'Incandescent', 3),
  (5, 'Temporary Culture', 4);

INSERT INTO songs(id_song, name, id_album)
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

INSERT INTO reproductory_history(id_user, id_song)
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
  
INSERT INTO following_artist(id_user, id_artist)
VALUES
  (1, 1),
  (1, 4),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 2),
  (3, 1),
  (4, 4);
