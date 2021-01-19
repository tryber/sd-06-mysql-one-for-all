DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE plans(
plan_id INT PRIMARY KEY auto_increment ,
plan_name VARCHAR(20) NOT NULL,
plan_price DOUBLE NOT NULL
) engine = InnoDB;

CREATE TABLE users(
user_id INT PRIMARY KEY auto_increment,
user_name VARCHAR(30) NOT NULL,
user_age INT NOT NULL,
plan_id INT NOT NULL,
FOREIGN KEY (plan_id) references plans(plan_id)
) engine = InnoDB;

CREATE TABLE artists(
artist_id INT PRIMARY KEY auto_increment,
artist_name VARCHAR(100) NOT NULL
) engine = InnoDB;

CREATE TABLE albuns(
album_id INT PRIMARY KEY auto_increment,
album_name VARCHAR(60) NOT NULL,
artist_id INT NOT NULL,
FOREIGN KEY (artist_id) references artists(artist_id)
) engine = InnoDB;

CREATE TABLE songs(
songs_id INT PRIMARY KEY auto_increment,
songs_name VARCHAR(100),
album_id INT NOT NULL,
FOREIGN KEY (album_id) references albuns(album_id)
) engine = InnoDB;

CREATE TABLE artists_following(
user_id INT NOT NULL,
artist_id INT NOT NULL,
PRIMARY KEY (user_id, artist_id),
FOREIGN KEY (user_id) references users(user_id),
FOREIGN KEY (artist_id) references artists(artist_id)
) engine = InnoDB;

CREATE TABLE song_played(
user_id INT NOT NULL,
song_id INT NOT NULL,
PRIMARY KEY (user_id, song_id),
FOREIGN KEY (user_id) references users(user_id),
FOREIGN KEY (song_id) references songs(songs_id)
) engine = InnoDB;

INSERT INTO plans (plan_name, plan_price)
VALUES
('gratuito', 0),
('universitário', 5.99),
('familiar', 7.99);

INSERT INTO users (user_name, user_age, plan_id)
VALUES
('Thati', 23, 1),
('Cintia', 35, 3),
('Bill', 20, 2),
('Roger', 45, 1);

INSERT INTO artists (artist_name)
VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freddie Shannon');

INSERT INTO albuns (album_name, artist_id)
VALUES
('Envious',1 ),
('Exuberant',1 ),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO songs (songs_name, album_id)
VALUES
('Soul For Us', 1),
('Reflections Of Magic', 1),
('Dance With Her Own', 1),
('Troubles Of My Inner Fire', 2),
('Timer Fireworks', 2),
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

INSERT INTO artists_following (user_id, artist_id)
VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);

INSERT INTO song_played(user_id, song_id)
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