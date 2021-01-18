DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;

USE SpotifyClone;

DROP TABLE IF EXISTS subscriptions;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS artists;
DROP TABLE IF EXISTS albums;
DROP TABLE IF EXISTS songs;
DROP TABLE IF EXISTS follow;
DROP TABLE IF EXISTS play_history;

CREATE TABLE subscriptions(
  id INT PRIMARY KEY AUTO_INCREMENT,
  subscription_type VARCHAR(50) NOT NULL,
  price DECIMAL(20,2) NOT NULL
) engine = InnoDB;

CREATE TABLE users(
  id INT PRIMARY KEY AUTO_INCREMENT,
  user_name VARCHAR(255) NOT NULL,
  age INT NOT NULL,
  subscription_id INT NOT NULL,
  FOREIGN KEY (subscription_id) REFERENCES subscriptions(id)
) engine = InnoDB;

CREATE TABLE artists(
  id INT PRIMARY KEY AUTO_INCREMENT,
  artist_name VARCHAR(150) NOT NULL
) engine = InnoDB;

CREATE TABLE follow(
  user_id INT NOT NULL,
  artist_id INT NOT NULL,
  PRIMARY KEY(user_id, artist_id),
  FOREIGN KEY (user_id) REFERENCES users(id)
    ON DELETE CASCADE,
  FOREIGN KEY (artist_id) REFERENCES artists(id)
    ON DELETE CASCADE
) engine = InnoDB;

CREATE TABLE albums(
  id INT PRIMARY KEY AUTO_INCREMENT,
  album_name VARCHAR(255) NOT NULL,
  artist_id INT NOT NULL,
  FOREIGN KEY (artist_id) REFERENCES artists(id)
    ON DELETE CASCADE
) engine = InnoDB;

CREATE TABLE songs(
  id INT PRIMARY KEY AUTO_INCREMENT,
  song_name VARCHAR(255) NOT NULL,
  album_id INT NOT NULL,
  artist_id INT NOT NULL,
  FOREIGN KEY (album_id) REFERENCES albums(id)
    ON DELETE CASCADE,
  FOREIGN KEY (artist_id) REFERENCES artists(id)
    ON DELETE CASCADE
) engine = InnoDB;

CREATE TABLE play_history(
  user_id INT NOT NULL,
  song_id INT NOT NULL,
  PRIMARY KEY(user_id, song_id),
  FOREIGN KEY (user_id) REFERENCES users(id)
    ON DELETE CASCADE,
FOREIGN KEY (song_id) REFERENCES songs(id)
  ON DELETE CASCADE
) engine = InnoDB;

INSERT INTO subscriptions (subscription_type, price)
VALUES
  ('gratuito', 0.00),
  ('universitário', 5.99),
  ('familiar', 7.99);

INSERT INTO users (user_name, age, subscription_id)
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
  ('Freedie Shannon');

INSERT INTO follow (user_id, artist_id)
VALUES
  (1, 1),
  (1, 3),
  (1, 4),
  (2, 1),
  (2, 3),
  (3, 2),
  (3, 1),
  (4, 4);

INSERT INTO albums (album_name, artist_id)
VALUES
  ('Envious', 1),
  ('Exuberant', 1),
  ('Hallowed Steam', 2),
  ('Incandescent', 3),
  ('Temporary Culture', 4);

INSERT INTO songs (song_name, album_id, artist_id)
VALUES
  ("Soul For Us", 1, 1),
  ("Reflections Of Magic", 1, 1),
  ("Dance With Her Own", 1, 1),
  ("Troubles Of My Inner Fire", 2, 1),
  ("Time Fireworks", 2, 1),
  ("Magic Circus", 3, 2),
  ("Honey, So Do I", 3, 2),
  ("Sweetie, Let's Go Wild", 3, 2),
  ("She Knows", 3, 2),
  ("Fantasy For Me", 4, 3),
  ("Celebration Of More", 4, 3),
  ("Rock His Everything", 4, 3),
  ("Home Forever", 4, 3),
  ("Diamond Power", 4, 3),
  ("Honey, Let's Be Silly", 4, 3),
  ("Thang Of Thunder", 5, 4),
  ("Words Of Her Life", 5, 4),
  ("Without My Streets", 5, 4);

INSERT INTO play_history (user_id, song_id)
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
