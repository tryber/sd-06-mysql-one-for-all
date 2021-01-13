CREATE TABLE `Users` (
  `user_id` int PRIMARY KEY AUTO_INCREMENT,
  `user_name` varchar(64) NOT NULL,
  `age` int NOT NULL,
  `subscription_id` int
) engine = InnoDB;

CREATE TABLE `Subscriptions` (
  `subscription_id` int PRIMARY KEY AUTO_INCREMENT,
  `subscription` varchar(64) NOT NULL,
  `subscription_cost` double NOT NULL
) engine = InnoDB;

CREATE TABLE `Artists` (
  `artist_id` int PRIMARY KEY AUTO_INCREMENT,
  `artist_name` varchar(64) NOT NULL
) engine = InnoDB;

CREATE TABLE `Songs` (
  `song_id` int PRIMARY KEY AUTO_INCREMENT,
  `song_name` varchar(64) NOT NULL
) engine = InnoDB;

CREATE TABLE `Albums` (
  `album_id` int PRIMARY KEY AUTO_INCREMENT,
  `album_name` varchar(64) NOT NULL,
  `artist_id` int
) engine = InnoDB;

CREATE TABLE `albums_songs` (
  `albums_songs_id` int PRIMARY KEY AUTO_INCREMENT,
  `album_id` int,
  `song_id` int
) engine = InnoDB;

CREATE TABLE `Follow` (
  `follow_id` int PRIMARY KEY AUTO_INCREMENT,
  `user_id` int,
  `artist_id` int
) engine = InnoDB;

CREATE TABLE `History` (
  `history_id` int PRIMARY KEY AUTO_INCREMENT,
  `user_id` int,
  `song_id` int
) engine = InnoDB;

ALTER TABLE `Users` ADD FOREIGN KEY (`subscription_id`) REFERENCES `Subscriptions` (`subscription_id`);

ALTER TABLE `albums_songs` ADD FOREIGN KEY (`album_id`) REFERENCES `Albums` (`album_id`);

ALTER TABLE `albums_songs` ADD FOREIGN KEY (`song_id`) REFERENCES `Songs` (`song_id`);

ALTER TABLE `Albums` ADD FOREIGN KEY (`artist_id`) REFERENCES `Artists` (`artist_id`);

ALTER TABLE `Follow` ADD FOREIGN KEY (`user_id`) REFERENCES `Users` (`user_id`);

ALTER TABLE `Follow` ADD FOREIGN KEY (`artist_id`) REFERENCES `Artists` (`artist_id`);

ALTER TABLE `History` ADD FOREIGN KEY (`user_id`) REFERENCES `Users` (`user_id`);

ALTER TABLE `History` ADD FOREIGN KEY (`song_id`) REFERENCES `Songs` (`song_id`);
