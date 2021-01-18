DROP DATABASE IF EXISTS `SpotifyClone`;

CREATE DATABASE `SpotifyClone`;

USE `SpotifyClone`;

CREATE TABLE plans(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT, 
    plan_type VARCHAR(13) NOT NULL,
    plan_value DECIMAL(10, 2) NOT NULL
) engine = InnoDB;

CREATE TABLE user_table(
	id INT PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    plan_id INT NOT NULL,
    FOREIGN KEY (plan_id) REFERENCES plans (id)
) engine = InnoDB;

CREATE TABLE artists(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    artist VARCHAR(80) NOT NULL
) engine = InnoDB;

CREATE TABLE albums(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    album VARCHAR(80) NOT NULL,
    artist_id INT NOT NULL,
    FOREIGN KEY (artist_id) REFERENCES artists (id)
) engine = InnoDB;

CREATE TABLE songs(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    song VARCHAR(80) NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (album_id) REFERENCES albums (id)
) engine = InnoDB;

CREATE TABLE `followers`(
	user_id INT NOT NULL,
    artist_id INT NOT NULL,
    PRIMARY KEY (`user_id`, `artist_id`),
    FOREIGN KEY (user_id) REFERENCES user_table(id),
    FOREIGN KEY (artist_id) REFERENCES artists(id)
) engine = InnoDB;

CREATE TABLE `historic`(
	user_id INT NOT NULL,
    song_id INT NOT NULL,
    PRIMARY KEY (`user_id`, `song_id`),
    FOREIGN KEY (user_id) REFERENCES user_table(id),
    FOREIGN KEY (song_id) REFERENCES songs(id)
) engine = InnoDB;

INSERT INTO plans(plan_type, plan_value)
VALUES
('gratuito', 0),
('familiar', 7.99),
('universitário', 5.99);

INSERT INTO user_table(user_name, age, plan_id)
VALUES
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

INSERT INTO artists(artist)
VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO albums(album, artist_id)
VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO songs(song, album_id)
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


INSERT INTO followers(user_id, artist_id)
VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);

INSERT INTO historic(user_id, song_id)
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
