DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE Subscriptions (
    subscription_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    subscription VARCHAR(64) NOT NULL,
    subscription_cost DECIMAL(10, 2) NOT NULL
) engine = InnoDB;

CREATE TABLE Users (
    user_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(64) NOT NULL,
    age INTEGER NOT NULL,
    subscription_id INTEGER NOT NULL,
    FOREIGN KEY (subscription_id) REFERENCES Subscriptions(subscription_id)
) engine = InnoDB;

CREATE TABLE Artists (
    artist_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    artist_name VARCHAR(128) NOT NULL
) engine = InnoDB;

CREATE TABLE Albums (
    album_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    album_name VARCHAR(64) NOT NULL,
    artist_id INTEGER NOT NULL,
    FOREIGN KEY (artist_id) REFERENCES Artists(artist_id)
) engine = InnoDB;

CREATE TABLE Songs (
    song_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    song_name VARCHAR(64) NOT NULL,
    album_id INTEGER NOT NULL,
    FOREIGN KEY (album_id) REFERENCES Albums(album_id)
) engine = InnoDB;

CREATE TABLE History (
    user_id INTEGER NOT NULL,
    song_id INTEGER NOT NULL,
    PRIMARY KEY (user_id, song_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (song_id) REFERENCES Songs(song_id)
) engine = InnoDB;

CREATE TABLE Follow (
    user_id INTEGER NOT NULL,
    artist_id INTEGER NOT NULL,
    PRIMARY KEY (user_id, artist_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (artist_id) REFERENCES Artists(artist_id)
) engine = InnoDB;

INSERT INTO Artists(artist_name)
VALUES
  ('Walter Phoenix'), ('Peter Strong'),  ('Lance Day'), ('Freedie Shanno');

INSERT INTO Subscriptions(subscription, subscription_cost)
VALUES
  ('gratuito', 0), ('familiar', 7.99), ('universitário', 5.99);

INSERT INTO Users(user_name, age, subscription_id)
VALUES
  ('Thati', 23, 1), ('Cíntia', 35, 3), ('Bill', 20, 2), ('Roger', 45, 1);

INSERT INTO Albums(album_name, artist_id)
VALUES
  ('Envious', 1), ('Exuberant', 1), ('Hallowed Steam', 2),
  ('Incandescent', 3), ('Temporary Culture', 4);

INSERT INTO Songs(song_name, album_id)
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

INSERT INTO Follow(user_id, artist_id)
VALUES
  (1, 1),
  (1, 4),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 2),
  (3, 1),
  (4, 4);

INSERT INTO History (user_id, song_id)
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
