DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.artists(
  artist_id INT PRIMARY KEY,
  artist_name VARCHAR(50) NOT NULL
) ENGINE = Innodb;

INSERT INTO SpotifyClone.artists (artist_id, artist_name)
VALUES
  (1, 'Freedie Shannon'),
  (2, 'Lance Day'),
  (3, 'Peter Strong'),
  (4, 'Walter Phoenix');
  
CREATE TABLE SpotifyClone.plans(
  plan_id INT PRIMARY KEY,
  plan VARCHAR(50) NOT NULL,
  plan_value FLOAT
) ENGINE = Innodb;

INSERT INTO SpotifyClone.plans (plan_id, plan, plan_value)
VALUES
  (1, 'gratuito', 0),
  (2, 'familiar', 7.99),
  (3, 'universitário', 5.99);
  
CREATE TABLE SpotifyClone.users(
  user_id INT PRIMARY KEY,
  user_name VARCHAR(100) NOT NULL,
  age INT NOT NULL,
  plan_id INT NOT NULL,
  FOREIGN KEY (plan_id) REFERENCES SpotifyClone.plans(plan_id)
) ENGINE = Innodb;

INSERT INTO SpotifyClone.users (user_id, user_name, age, plan_id)
VALUES
  (1, 'Thati', 23, 1),
  (2, 'Cintia', 35, 2),
  (3, 'Bill', 20, 3),
  (4, 'Roger', 45, 1);


CREATE TABLE SpotifyClone.albuns (
  album_id INT PRIMARY KEY,
  album VARCHAR(100),
  artist_id INT,
  FOREIGN KEY (artist_id) REFERENCES SpotifyClone.artists(artist_id)
) ENGINE = Innodb;

INSERT INTO SpotifyClone.albuns (album_id, album, artist_id)
VALUES
  (1, 'Envious', 4),
  (2, 'Exuberant', 4),
  (3, 'Hallowed Steam', 3),
  (4, 'Incandescent', 2),
  (5, 'Temporary Culture', 1);

CREATE TABLE SpotifyClone.songs (
song_id	INT PRIMARY KEY,
song VARCHAR(100),
album_id INT,
FOREIGN KEY (album_id) REFERENCES SpotifyClone.albuns(album_id)
) ENGINE =  Innodb;

INSERT INTO SpotifyClone.songs (song_id, song, album_id)
VALUES
  (1, "Thang Of Thunder", 5),
  (2, "Words Of Her Life", 5),
  (3, "Without My Streets", 5),
  (4, "Fantasy For Me", 4),
  (5, "Celebration Of More", 4),
  (6, "Rock His Everything", 4),
  (7, "Home Forever", 4),
  (8, "Diamond Power", 4),
  (9, "Honey, Let's Be Silly", 4),
  (10, "Magic Circus", 3),
  (11, "Honey, So Do I", 3),
  (12, "Sweetie, Let's Go Wild", 3),
  (13, "She Knows", 3),
  (14, "Soul For Us", 1),
  (15, "Reflections Of Magic", 1),
  (16, "Dance With Her Own", 1),
  (17, "Troubles Of My Inner Fire", 2),
  (18, "Time Fireworks", 2);

CREATE TABLE SpotifyClone.user_song (
  user_id INT NOT NULL,
  song_id INT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES SpotifyClone.users(user_id),
  FOREIGN KEY (song_id) REFERENCES SpotifyClone.songs(song_id)
) ENGINE = Innodb;

INSERT INTO SpotifyClone.user_song (user_id, song_id)
VALUES
  (1, 8),
  (1, 10),
  (1, 14),
  (1, 1),
  (2, 7),
  (2, 9),
  (2, 15),
  (2, 2),
  (3, 10),
  (3, 1),
  (3, 17),
  (4, 5),
  (4, 16),
  (4, 3);
  
CREATE TABLE SpotifyClone.user_artist (
  user_id INT NOT NULL,
  artist_id INT NOT NULL,
  CONSTRAINT PK_user_follows PRIMARY KEY (user_id, artist_id),
  FOREIGN KEY (user_id) REFERENCES SpotifyClone.users(user_id),
  FOREIGN KEY (artist_id) REFERENCES SpotifyClone.artists(artist_id)
) ENGINE = Innodb;

INSERT INTO SpotifyClone.user_artist (user_id, artist_id)
VALUE
  (1, 4),
  (1, 1),
  (1, 2),
  (2, 4),
  (2, 2),
  (3, 3),
  (3, 4),
  (4, 1);
