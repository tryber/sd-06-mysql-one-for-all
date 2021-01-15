DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE plans(
plan_id INT PRIMARY KEY auto_increment,
plan_name VARCHAR(15) NOT NULL,
plan_price DOUBLE NOT NULL
) engine = InnoDB;

CREATE TABLE users(
user_id INT PRIMARY KEY auto_increment,
user_name VARCHAR(50) NOT NULL,
user_age INT NOT NULL,
plan_id INT NOT NULL,
FOREIGN KEY (plan_id) references plans(plan_id)
) engine = InnoDB;

CREATE TABLE artists(
artist_id INT PRIMARY KEY auto_increment,
artist_name VARCHAR(50) NOT NULL
) engine = InnoDB;

CREATE TABLE albums(
album_id INT PRIMARY KEY auto_increment,
album_name VARCHAR(50) NOT NULL,
artist_id INT NOT NULL,
FOREIGN KEY (artist_id) references artists(artist_id)
) engine = InnoDB;

CREATE TABLE songs(
song_id INT PRIMARY KEY auto_increment,
song VARCHAR(50) NOT NULL,
album_id INT NOT NULL,
FOREIGN KEY (album_id) references albums(album_id)
) engine = InnoDB;

CREATE TABLE artists_following(
user_id INT NOT NULL,
artists_following INT NOT NULL,
PRIMARY KEY(user_id, artists_following),
FOREIGN KEY (user_id) references users(user_id),
FOREIGN KEY (artists_following) references artists(artist_id)
) engine = InnoDB;

CREATE TABLE songs_played(
user_id INT NOT NULL,
song_played INT NOT NULL,
PRIMARY KEY(user_id, song_played),
FOREIGN KEY (user_id) references users(user_id),
FOREIGN KEY (song_played) references songs(song_id)
) engine = InnoDB;

INSERT INTO plans (plan_id, plan_name, plan_price)
VALUES
(1, 'gratuito', 0),
(2, 'universitário', 5.99),
(3, 'familiar', 7.99);

INSERT INTO users (user_id, user_name, user_age, plan_id)
VALUES
(1, 'Thati', 23, 1),
(2, 'Cintia', 35, 3),
(3, 'Bill', 20, 2),
(4, 'Roger', 45, 1);

INSERT INTO artists (artist_id, artist_name)
VALUES
(1, 'Walter Phoenix'),
(2, 'Peter Strong'),
(3, 'Lance Day'),
(4, 'Freedie Shannon');

INSERT INTO albums (album_id, album_name, artist_id)
VALUES
(1, 'Envious', 1),
(2, 'Exuberant', 1),
(3, 'Hallowed Steam', 2),
(4, 'Incandescent', 3),
(5, 'Temporary Culture', 4);

INSERT INTO songs (song_id, song, album_id)
VALUES
(1, 'Soul For Us', 1),
(2, 'Reflections Of Magic', 1),
(3, 'Dance With Her Own', 1),
(4, 'Troubles Of My Inner Fire', 2),
(5, 'Timer Fireworks', 2),
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

INSERT INTO artists_following (user_id, artists_following)
VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);

INSERT INTO songs_played (user_id, song_played)
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
