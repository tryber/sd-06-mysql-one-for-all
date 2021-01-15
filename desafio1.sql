DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE plan(
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  plan_type VARCHAR(50) NOT NULL,
  cost DECIMAL(5, 2) NOT NULL
) ENGINE = InnoDB;

INSERT INTO
  plan (plan_type, cost)
VALUES
  ("gratuito", 0),
  ("familiar", 7.99),
  ("universitário", 5.99);

CREATE TABLE artist(
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  artist_name VARCHAR(50) NOT NULL
) ENGINE = InnoDB;

INSERT INTO
  artist (artist_name)
VALUES
  ("Walter Phoenix"),
  ("Peter Strong"),
  ("Lance Day"),
  ("Freedie Shannon");

CREATE TABLE album(
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  album_title VARCHAR(50) NOT NULL,
  artist_id INT NOT NULL,
  FOREIGN KEY (artist_id) REFERENCES artist(id)
) ENGINE = InnoDB;

INSERT INTO
  album (album_title, artist_id)
VALUES
  ("Envious", 1),
  ("Exuberant", 1),
  ("Hallowed Steam", 2),
  ("Incandescent", 3),
  ("Temporary Culture", 4);

CREATE TABLE users(
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  user_name VARCHAR(50) NOT NULL,
  age INT(3),
  plan_id INT NOT NULL,
  FOREIGN KEY (plan_id) REFERENCES plan(id)
) ENGINE = InnoDB;

INSERT INTO
  users (user_name, age, plan_id)
VALUES
  ("Thati", 23, 1),
  ("Cintia", 35, 2),
  ("Bill", 20, 3),
  ("Roger", 45, 1);

CREATE TABLE song_list(
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  title VARCHAR(50) NOT NULL,
  album_id INT NOT NULL,
  FOREIGN KEY (album_id) REFERENCES album(id)
) ENGINE = InnoDB;

INSERT INTO
  song_list (title, album_id)
VALUES
  ("Soul For Us", 1),
  ("Reflections Of Magic", 1),
  ("Dance With Her Own", 1),
  ("Troubles Of My Inner Fire", 2),
  ("Time Fireworks", 2),
  ("Magic Circus", 3),
  ("Honey, So Do I", 3),
  ("Sweetie, Let's Go Wild", 3),
  ("She Knows", 3),
  ("Fantasy For Me", 4),
  ("Celebration Of More", 4),
  ("Rock His Everything", 4),
  ("Home Forever", 4),
  ("Diamond Power", 4),
  ("Honey, Let's Be Silly", 4),
  ("Thang Of Thunder", 5),
  ("Words Of Her Life", 5),
  ("Without My Streets", 5);

CREATE TABLE play_history(
  song_list_id INT NOT NULL,
  user_id INT NOT NULL,
  PRIMARY KEY (song_list_id, user_id),
  FOREIGN KEY (song_list_id) REFERENCES song_list(id),
  FOREIGN KEY (user_id) REFERENCES users(id)
) ENGINE = InnoDB;

INSERT INTO
  play_history (song_list_id, user_id)
VALUES
  (1, 1),
  (6, 1),
  (14, 1),
  (16, 1),
  (13, 2),
  (17, 2),
  (2, 2),
  (15, 2),
  (4, 3),
  (16, 3),
  (6, 3),
  (3, 4),
  (18, 4),
  (11, 4);

CREATE TABLE artist_following(
  user_id INT NOT NULL,
  artist_id INT NOT NULL,
  PRIMARY KEY (user_id, artist_id),
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (artist_id) REFERENCES artist(id)
) ENGINE = InnoDB;

INSERT INTO
  artist_following (user_id, artist_id)
VALUES
  (1, 1),
  (1, 4),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 1),
  (3, 2),
  (4, 4);
