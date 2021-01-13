DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE `Users` (
    `user_id` INTEGER PRIMARY KEY AUTO_INCREMENT,
    `user_name` VARCHAR(64) NOT NULL,
    `age` INTEGER NOT NULL,
    `subscription_id` INTEGER
) engine = InnoDB;

CREATE TABLE `Subscriptions` (
    `subscription_id` INTEGER PRIMARY KEY AUTO_INCREMENT,
    `subscription` VARCHAR(64) NOT NULL,
    `subscription_cost` DOUBLE NOT NULL
) engine = InnoDB;

CREATE TABLE `Artists` (
    `artist_id` INTEGER PRIMARY KEY AUTO_INCREMENT,
    `artist_name` VARCHAR(64) NOT NULL
) engine = InnoDB;

CREATE TABLE `Songs` (
    `song_id` INTEGER PRIMARY KEY AUTO_INCREMENT,
    `song_name` VARCHAR(64) NOT NULL
) engine = InnoDB;

CREATE TABLE `Albums` (
    `album_id` INTEGER PRIMARY KEY AUTO_INCREMENT,
    `album_name` VARCHAR(64) NOT NULL,
    `artist_id` INTEGER
) engine = InnoDB;

CREATE TABLE `Albums_songs` (
    `albums_songs_id` INTEGER PRIMARY KEY AUTO_INCREMENT,
    `album_id` INTEGER,
    `song_id` INTEGER
) engine = InnoDB;

CREATE TABLE `Follow` (
    `follow_id` INTEGER PRIMARY KEY AUTO_INCREMENT,
    `user_id` INTEGER,
    `artist_id` INTEGER
) engine = InnoDB;

CREATE TABLE `History` (
    `history_id` INTEGER PRIMARY KEY AUTO_INCREMENT,
    `user_id` INTEGER,
    `song_id` INTEGER
) engine = InnoDB;

ALTER TABLE `Users` ADD FOREIGN KEY (`subscription_id`) REFERENCES `Subscriptions` (`subscription_id`);

ALTER TABLE `Albums_songs` ADD FOREIGN KEY (`album_id`) REFERENCES `Albums` (`album_id`);

ALTER TABLE `Albums_songs` ADD FOREIGN KEY (`song_id`) REFERENCES `Songs` (`song_id`);

ALTER TABLE `Albums` ADD FOREIGN KEY (`artist_id`) REFERENCES `Artists` (`artist_id`);

ALTER TABLE `Follow` ADD FOREIGN KEY (`user_id`) REFERENCES `Users` (`user_id`);

ALTER TABLE `Follow` ADD FOREIGN KEY (`artist_id`) REFERENCES `Artists` (`artist_id`);

ALTER TABLE `History` ADD FOREIGN KEY (`user_id`) REFERENCES `Users` (`user_id`);

ALTER TABLE `History` ADD FOREIGN KEY (`song_id`) REFERENCES `Songs` (`song_id`);

INSERT INTO Artists(artist_name)
VALUES
('Walter Phoenix'), ('Peter Strong'),  ('Lance Day'), ('Freedie Shanno');

INSERT INTO Subscriptions(subscription, subscription_cost)
VALUES
('gratuito', 0), ('familiar', 7.99), ('universitário', 5.99);

INSERT INTO Users(user_name, age, subscription_id)
VALUES
('Thati', 23, 1), ('Cíntia', 35, 2), ('Bill', 20, 3), ('Roger', 45, 1);

INSERT INTO Songs(song_name)
VALUES
('Soul For Us'),
('Reflections Of Magic'),
('Dance With Her Own'),
('Troubles Of My Inner Fire'),
('Time Fireworks'),
('Magic Circus'),
('Honey, So Do I'),
('Sweetie, Let\'s Go Wild'),
('She Knows'),
('Fantasy For Me'),
('Celebration Of More'),
('Rock His Everything'),
('Home Forever'),
('Diamond Power'),
('Honey, Let\'s Be Silly'),
('Thang Of Thunder'),
('Words Of Her Life'),
('Without My Streets');

INSERT INTO Albums(album_name, artist_id)
VALUES
('Envious', 1), ('Exuberant', 1), ('Hallowed Steam', 2),
('Incandescent', 3), ('Temporary Culture', 4);

INSERT INTO Albums_songs(album_id, song_id)
    VALUE
    (1, 1), (1, 2), (1, 3),
    (2, 4), (2, 5),
    (3, 6), (3, 7), (3, 8), (3, 9),
    (4, 10), (4, 11), (4, 12), (4, 13), (4, 14), (4, 15),
    (5, 16), (5, 16), (5, 17);

INSERT INTO Follow(user_id, artist_id)
VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 3);

INSERT INTO History (user_id, song_id)
VALUES
(1, 1),
(1, 6),
(1, 14),
(1, 16),
(2, 13),
(2, 18),
(2, 2),
(2, 15),
(3, 15),
(3, 16),
(3, 6),
(4, 3),
(4, 18),
(4, 11);
