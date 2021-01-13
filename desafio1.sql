CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

CREATE TABLE plans(
plan_id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(50) NOT NULL,
value DECIMAL(3, 2)
);

INSERT INTO plans(name, value)
VALUES ('gratuito', 0),
('familiar', 7.99),
('universitário', 5.99);

CREATE TABLE users(
user_id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100) NOT NULL,
age INT NOT NULL,
plan_id INT NOT NULL,
FOREIGN KEY (plan_id) REFERENCES plans(plan_id)
);

INSERT INTO users(name, age, plan_id)
VALUES ('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

CREATE TABLE artists(
artist_id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100) NOT NULL
);

INSERT INTO artists(name)
VALUES ('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

CREATE TABLE followers(
artist_id INT NOT NULL,
user_id INT NOT NULL,
PRIMARY KEY (artist_id, user_id)
);

INSERT INTO followers(artist_id, user_id)
VALUES (1, 1),
(4, 1),
(3, 1),
(1, 2),
(3, 2),
(2, 3),
(1, 3),
(4, 4);

CREATE TABLE albums(
album_id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100) NOT NULL,
artist_id INT NOT NULL,
FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
);

INSERT INTO albums(name, artist_id)
VALUES ('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

CREATE TABLE songs(
song_id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100) NOT NULL,
album_id INT NOT NULL,
FOREIGN KEY (album_id) REFERENCES albums(album_id)
);

INSERT INTO songs(name, album_id)
VALUES ('Soul For Us', 1),
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

CREATE TABLE playback_history(
user_id INT NOT NULL,
song_id INT NOT NULL,
PRIMARY KEY (user_id, song_id)
);

INSERT INTO playback_history(user_id, song_id)
VALUES (1, 1),
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
(4, 17),
(4, 11);
