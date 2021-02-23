DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE plan (
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(45) NOT NULL,
price DECIMAL (10, 2) NOT NULL
);

CREATE TABLE artist (
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(45) NOT NULL
);

CREATE TABLE album (
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(45) NOT NULL,
artist_id INT NOT NULL,
CONSTRAINT `fk_artist_album` FOREIGN KEY (artist_id) REFERENCES SpotifyClone.artist (id)
);

CREATE TABLE `user` (
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(45) NOT NULL,
age INT NOT NULL,
plan_id INT NOT NULL,
CONSTRAINT `fk_plano_user` FOREIGN KEY (plan_id) REFERENCES SpotifyClone.plan (id)
);

CREATE TABLE music (
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(45) NOT NULL,
album_id INT NOT NULL,
CONSTRAINT `album_id_music` FOREIGN KEY (album_id) REFERENCES SpotifyClone.album (id)
);

CREATE TABLE following (
user_id INT NOT NULL,
artist_id INT NOT NULL,
PRIMARY KEY (user_id, artist_id),
CONSTRAINT `fk_user_following` FOREIGN KEY (user_id) REFERENCES SpotifyClone.user (id),
CONSTRAINT `fk_artist_following` FOREIGN KEY (artist_id) REFERENCES SpotifyClone.artist (id)
);

CREATE TABLE history (
user_id INT NOT NULL,
music_id INT NOT NULL,
PRIMARY KEY (user_id, music_id),
CONSTRAINT `fk_user_history` FOREIGN KEY (user_id) REFERENCES SpotifyClone.user (id),
CONSTRAINT `fk_music_history` FOREIGN KEY (music_id) REFERENCES SpotifyClone.music (id)
);

INSERT INTO plan (name, price) VALUES
('gratuito', 0), ('familiar', 7.99), ('universitário', 5.99);

INSERT INTO user (name, age, plan_id) VALUES
('Thati', 23, 1), ('Cintia', 35, 2), ('Bill', 20, 3), ('Roger', 45, 1);

INSERT INTO artist (name) VALUES
('Walter Phoenix'), ('Peter Strong'), ('Lance Day'), ('Freedie Shannon');

INSERT INTO album (name, artist_id) VALUES
('Envious', 1), ('Exuberant', 1), ('Hallowed Steam', 2), ('Incandescent', 3), ('Temporary Culture', 4);

INSERT INTO music (name, album_id) VALUES
('Soul For Us', 1), ('Reflections Of Magic', 1), ('Dance With Her Own', 1),
('Troubles Of My Inner Fire', 2), ('Time Fireworks', 2),
('Magic Circus', 3), ('Honey, So Do I', 3), ('Sweetie, Let''s Go Wild', 3), ('She Knows', 3),
('Fantasy For Me', 4), ('Celebration Of More', 4), ('Rock His Everything', 4),
('Home Forever', 4), ('Diamond Power', 4), ('Honey, Let''s Be Silly', 4),
('Thang Of Thunder', 5), ('Words Of Her Life', 5), ('Without My Streets', 5);

INSERT INTO following (user_id, artist_id) VALUES
(1, 1), (1, 4), (1, 3),
(2,1), (2, 3),
(3, 2), (3, 1),
(4, 4);

INSERT INTO history (user_id, music_id) VALUES
(1, 1), (1, 6), (1, 14), (1, 16),
(2, 13), (2, 17), (2, 2), (2, 15),
(3, 4), (3, 16),  (3, 6),
(4, 3), (4,18), (4, 11);
