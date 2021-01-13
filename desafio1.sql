DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

CREATE TABLE Plans (
  plan_id INT PRIMARY KEY AUTO_INCREMENT,
  plan_type VARCHAR(45) NOT NULL,
  plan_value DECIMAL(8, 2) NOT NULL
) engine = InnoDB;

CREATE TABLE Users (
  user_id INT PRIMARY KEY AUTO_INCREMENT,
  user_name VARCHAR(45) NOT NULL,
  age INT NOT NULL,
  plan_id INT NOT NULL,
  FOREIGN KEY (plan_id) REFERENCES Plans (plan_id)
) engine = InnoDB;

CREATE TABLE Artists (
  artist_id INT PRIMARY KEY AUTO_INCREMENT,
  artist_name VARCHAR(45) NOT NULL
) engine = InnoDB;

CREATE TABLE Users_Following_Artists (
  user_id INT NOT NULL,
  artist_id INT NOT NULL,
  PRIMARY KEY (user_id, artist_id),
  FOREIGN KEY (user_id) REFERENCES Users (user_id),
  FOREIGN KEY (artist_id) REFERENCES Artists (artist_id)
) engine = InnoDB;

CREATE TABLE Albuns (
  album_id INT PRIMARY KEY AUTO_INCREMENT,
  album_name VARCHAR(45) NOT NULL,
  artist_id INT NOT NULL,
  FOREIGN KEY (artist_id) REFERENCES Artists (artist_id)
) engine = InnoDB;

CREATE TABLE Songs (
  song_id INT PRIMARY KEY AUTO_INCREMENT,
  song_name VARCHAR(45) NOT NULL
) engine = InnoDB;

CREATE TABLE Users_Reprod_History (
  user_id INT NOT NULL,
  song_id INT NOT NULL,
  PRIMARY KEY (user_id, song_id),
  FOREIGN KEY (user_id) REFERENCES Users (user_id),
  FOREIGN KEY (song_id) REFERENCES Songs (song_id)
) engine = InnoDB;

CREATE TABLE Songs_Per_Album (
  album_id INT NOT NULL,
  song_id INT NOT NULL,
  PRIMARY KEY (album_id, song_id),
  FOREIGN KEY (album_id) REFERENCES Albuns (album_id),
  FOREIGN KEY (song_id) REFERENCES Songs (song_id)
) engine = InnoDB;

INSERT INTO Plans (plan_type, plan_value) VALUES
('gratuito', 0),
('familiar', 7.99),
('universitário', 5.99);

INSERT INTO Users (user_name, age, plan_id) VALUES
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

INSERT INTO Songs (song_name) VALUES
('Soul For Us'),
('Reflections Of Magic'),
('Dance With Her Own'),
('Troubles Of My Inner Fire'),
('Time Fireworks'),
('Magic Circus'),
('Honey, So Do I'),
("Sweetie, Let's Go Wild"),
('She Knows'),
('Fantasy For Me'),
('Celebration Of More'),
('Rock His Everything'),
('Home Forever'),
('Diamond Power'),
("Honey, Let's Be Silly"),
('Thang Of Thunder'),
('Words Of Her Life'),
('Without My Streets');

INSERT INTO Artists (artist_name) VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO Albuns (album_name, artist_id) VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO Songs_Per_Album (song_id, album_id) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 2),
(5, 2),
(6, 3),
(7, 3),
(8, 3),
(9, 3),
(10, 4),
(11, 4),
(12, 4),
(13, 4),
(14, 4),
(15, 4),
(16, 5),
(17, 5),
(18, 5);

INSERT INTO Users_Following_Artists (user_id, artist_id) VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);

INSERT INTO Users_Reprod_History (user_id, song_id) VALUES
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
