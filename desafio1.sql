DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE IF NOT EXISTS plans (
  plan_id INT NOT NULL AUTO_INCREMENT,
  plan_name VARCHAR(45) NOT NULL,
  plan_value FLOAT NOT NULL,
  PRIMARY KEY (plan_id),
  UNIQUE INDEX plan_name_UNIQUE (plan_name ASC) VISIBLE)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS users (
  user_id INT NOT NULL AUTO_INCREMENT,
  user_name VARCHAR(45) NOT NULL,
  year_old INT NOT NULL,
  plan_id INT NOT NULL,
  PRIMARY KEY (user_id),
  INDEX fk_users_plans_idx (plan_id ASC) VISIBLE,
  CONSTRAINT fk_users_plans
    FOREIGN KEY (plan_id)
    REFERENCES plans (plan_id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS artists (
  artist_id INT NOT NULL AUTO_INCREMENT,
  artist_name VARCHAR(45) NOT NULL,
  PRIMARY KEY (artist_id),
  UNIQUE INDEX artist_name_UNIQUE (artist_name ASC) VISIBLE)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS albuns (
  album_id INT NOT NULL AUTO_INCREMENT,
  album_name VARCHAR(100) NOT NULL,
  artist_id INT NOT NULL,
  PRIMARY KEY (album_id),
  UNIQUE INDEX album_name_UNIQUE (album_name ASC) VISIBLE,
  INDEX fk_albuns_artists1_idx (artist_id ASC) VISIBLE,
  CONSTRAINT fk_albuns_artists1
    FOREIGN KEY (artist_id)
    REFERENCES artists (artist_id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS songs (
  song_id INT NOT NULL AUTO_INCREMENT,
  song_name VARCHAR(100) NOT NULL,
  album_id INT NOT NULL,
  artist_id INT NOT NULL,
  PRIMARY KEY (song_id),
  UNIQUE INDEX song_name_UNIQUE (song_name ASC) VISIBLE,
  INDEX fk_songs_albuns1_idx (album_id ASC) VISIBLE,
  INDEX fk_songs_artists1_idx (artist_id ASC) VISIBLE,
  CONSTRAINT fk_songs_albuns1
    FOREIGN KEY (album_id)
    REFERENCES albuns (album_id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_songs_artists1
    FOREIGN KEY (artist_id)
    REFERENCES artists (artist_id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS followers (
  user_id INT NOT NULL,
  artist_id INT NOT NULL,
  PRIMARY KEY (user_id, artist_id),
  INDEX fk_users_has_artists_artists1_idx (artist_id ASC) VISIBLE,
  INDEX fk_users_has_artists_users1_idx (user_id ASC) VISIBLE,
  CONSTRAINT fk_users_has_artists_users1
    FOREIGN KEY (user_id)
    REFERENCES users (user_id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_users_has_artists_artists1
    FOREIGN KEY (artist_id)
    REFERENCES artists (artist_id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS history_songs (
  user_id INT NOT NULL,
  song_id INT NOT NULL,
  PRIMARY KEY (user_id, song_id),
  INDEX fk_users_has_songs_songs1_idx (song_id ASC) VISIBLE,
  INDEX fk_users_has_songs_users1_idx (user_id ASC) VISIBLE,
  CONSTRAINT fk_users_has_songs_users1
    FOREIGN KEY (user_id)
    REFERENCES users (user_id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_users_has_songs_songs1
    FOREIGN KEY (song_id)
    REFERENCES songs (song_id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO plans(plan_name, plan_value)
VALUES
  ('gratuito', 0),
  ('familiar', 7.99),
  ('universitario', 5.99);

INSERT INTO users(user_name, year_old, plan_id)
VALUES
  ('Thati', 23, 1),
  ('Cintia', 35, 2),
  ('Bill', 20, 3),
  ('Roger', 45, 1);

INSERT INTO artists(artist_name)
VALUES
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shannon');

INSERT INTO albuns(album_name, artist_id)
VALUES
  ('Envious', 1),
  ('Exuberant', 1),
  ('Hallowed Steam', 2),
  ('Incandescent', 3),
  ('Temporary Culture', 4);

INSERT INTO songs(song_name, album_id, artist_id)
VALUES
  ('Soul For Us', 1, 1),
  ('Reflections Of Magic', 1, 1),
  ('Dance With Her Own', 1, 1),
  ('Troubles Of My Inner Fire', 2, 1),
  ('Time Fireworks', 2, 1),
  ('Magic Circus', 3, 2),
  ('Honey, So Do I', 3, 2),
  ('Sweet, Let’s Go Wild', 3, 2),
  ('She Knows', 3, 2),
  ('Fantasy For Me', 4, 3),
  ('Celebration Of More', 4, 3),
  ('Rock His Everything', 4, 3),
  ('Home Forever', 4, 3),
  ('Diamond Power', 4, 3),
  ('Honey, Let’s Be Silly', 4, 3),
  ('Thang Of Thunder', 5, 4),
  ('Words Of Her Life', 5, 4),
  ('Without My Streets', 5, 4);

INSERT INTO history_songs(user_id, song_id)
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
