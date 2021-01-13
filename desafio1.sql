DROP DATABASE IF EXISTS `SpotifyClone`;

CREATE DATABASE `SpotifyClone`;

USE `SpotifyClone`;

CREATE TABLE `SpotifyClone`.`plans` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `plan` VARCHAR(100) NOT NULL,
  `value` DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) engine = InnoDB;

CREATE TABLE `SpotifyClone`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `birthdate` DATE NOT NULL,
  `plan_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`plan_id`) REFERENCES plans (`id`)
) engine = InnoDB;

CREATE TABLE `SpotifyClone`.`artists` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `artist` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`)
) engine = InnoDB;

CREATE TABLE `SpotifyClone`.`albums` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `album` VARCHAR(100) NOT NULL,
  `artist_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`artist_id`) REFERENCES artists (`id`)
) engine = InnoDB;

CREATE TABLE `SpotifyClone`.`songs` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `song` VARCHAR(100) NOT NULL,
  `album_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`album_id`) REFERENCES albums (`id`)
) engine = InnoDB;

CREATE TABLE `SpotifyClone`.`followers` (
  `user_id` INT NOT NULL,
  `artist_id` INT NOT NULL,
  PRIMARY KEY (`user_id`, `artist_id`),
  FOREIGN KEY (`user_id`) REFERENCES users (`id`),
  FOREIGN KEY (`artist_id`) REFERENCES artists (`id`)
) engine = InnoDB;

CREATE TABLE `SpotifyClone`.`historic` (
  `user_id` INT NOT NULL,
  `song_id` INT NOT NULL,
  PRIMARY KEY (`user_id`, `song_id`),
  FOREIGN KEY (`user_id`) REFERENCES users (`id`),
  FOREIGN KEY (`song_id`) REFERENCES songs (`id`)
) engine = InnoDB;

INSERT INTO plans (plan, value)
VALUES
('gratuito', 0),
('familiar', 7.99),
('universitário', 5.99);

INSERT INTO users (name, birthdate, plan_id)
VALUES
('Thati', '1998-01-01', 1),
('Cintia', '1986-01-01', 2),
('Bill', '2001-01-01', 3),
('Roger', '1976-01-01', 1);

INSERT INTO artists (artist)
VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO albums (album, artist_id)
VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO songs (song, album_id)
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

INSERT INTO followers (`user_id`, `artist_id`)
VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);

INSERT INTO historic (`user_id`, `song_id`)
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
