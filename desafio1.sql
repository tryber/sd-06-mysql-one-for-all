
CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE usertable (
  `usuario_id` int NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) NOT NULL,
  `age` int NOT NULL,
  `plan_id` int NOT NULL,
  PRIMARY KEY (`usuario_id`),
  KEY `plan_id` (`plan_id`),
  CONSTRAINT `usertable_ibfk_1` FOREIGN KEY (`plan_id`) REFERENCES `plantable` (`plan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE plantable (
  `plan_id` int NOT NULL AUTO_INCREMENT,
  `planName` varchar(255) NOT NULL,
  `planPrice` int NOT NULL,
  PRIMARY KEY (`plan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE artisttable (
  `artist_id` int NOT NULL AUTO_INCREMENT,
  `artistName` varchar(255) NOT NULL,
  PRIMARY KEY (`artist_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE albumtable (
  `album_id` int NOT NULL AUTO_INCREMENT,
  `albumName` varchar(255) NOT NULL,
  `artist_id` int NOT NULL,
  PRIMARY KEY (`album_id`),
  KEY `artist_id` (`artist_id`),
  CONSTRAINT `albumtable_ibfk_1` FOREIGN KEY (`artist_id`) REFERENCES `artisttable` (`artist_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE songstable (
  `songs_id` int NOT NULL AUTO_INCREMENT,
  `songsname` varchar(255) NOT NULL,
  `album_id` int NOT NULL,
  PRIMARY KEY (`songs_id`),
  KEY `album_id` (`album_id`),
  CONSTRAINT `album_id` FOREIGN KEY (`album_id`) REFERENCES `albumtable` (`album_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE reproductiontable (
  `reproduction_id` int NOT NULL AUTO_INCREMENT,
  `usuario_id` int NOT NULL,
  `songs_id` int NOT NULL,
  PRIMARY KEY (`reproduction_id`),
  KEY `usuario_id` (`usuario_id`),
  KEY `songs_id` (`songs_id`),
  CONSTRAINT `songs_id` FOREIGN KEY (`songs_id`) REFERENCES `songstable` (`songs_id`),
  CONSTRAINT `usuario_id` FOREIGN KEY (`usuario_id`) REFERENCES `usertable` (`usuario_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE followerstable (
  `followers_id` int NOT NULL AUTO_INCREMENT,
  `artist_id` int NOT NULL,
  `usuario_id` int NOT NULL,
  PRIMARY KEY (`followers_id`),
  KEY `FK_artistid` (`artist_id`),
  KEY `FK_userid` (`usuario_id`),
  CONSTRAINT `FK_artistid` FOREIGN KEY (`artist_id`) REFERENCES `artisttable` (`artist_id`),
  CONSTRAINT `FK_userid` FOREIGN KEY (`usuario_id`) REFERENCES `usertable` (`usuario_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO plantable(planName, planprice) VALUES
('gratuito', 0.00),
('universitário', 5.99),
('familiar', 7.99);

INSERT INTO usertable(username, age, plan_id) VALUES
('Thati', 23, 1),
('Cintia', 35, 3),
('Bill', 20, 2),
('Roger', 45, 1);

INSERT INTO artisttable(artistname) VALUES 
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO albumtable(albumname, artist_id) VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO songstable(songsname, album_id) VALUES
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

INSERT INTO reproductiontable(usuario_id, songs_id) VALUES
(1, 1),
(1, 6),
(1, 14),
(1, 16),
(2, 2),
(2, 13),
(2, 15),
(2, 17),
(3, 4),
(3, 6),
(3, 16),
(4, 3),
(4, 11),
(4, 18);

INSERT INTO followerstable(usuario_id, artist_id) VALUES
(1, 1),
(1, 3),
(1, 4),
(2, 1),
(2, 3),
(3, 1),
(3, 2),
(4, 4); 
