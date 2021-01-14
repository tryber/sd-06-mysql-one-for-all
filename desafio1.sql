DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE subscriptions(
	id INT PRIMARY KEY AUTO_INCREMENT,
    subscription_plan VARCHAR(50) NOT NULL,
    price DOUBLE NOT NULL,
    created_at DATETIME DEFAULT NOW()
) engine = InnoDB;

CREATE TABLE users(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    subscription_id INT NOT NULL,
    created_at DATETIME DEFAULT NOW(),
    FOREIGN KEY (subscription_id) REFERENCES subscriptions(id)
) engine = InnoDB;

CREATE TABLE artists(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    created_at DATETIME DEFAULT NOW()
) engine = InnoDB;

CREATE TABLE follows(
	PRIMARY KEY(user_id, artist_id),
    user_id INT NOT NULL,
    artist_id INT NOT NULL,
    created_at DATETIME DEFAULT NOW(),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (artist_id) REFERENCES artists(id)
) engine = InnoDB;

CREATE TABLE albums(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    artist_id INT NOT NULL,
    created_at DATETIME DEFAULT NOW(),
    FOREIGN KEY (artist_id) REFERENCES artists(id)
) engine = InnoDB;

CREATE TABLE songs(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    artist_id INT NOT NULL,
    album_id INT NOT NULL,
    created_at DATETIME DEFAULT NOW(),
    FOREIGN KEY (artist_id) REFERENCES artists(id),
    FOREIGN KEY (album_id) REFERENCES albums(id)
) engine = InnoDB;

CREATE TABLE play_history(
	PRIMARY KEY(user_id, song_id),
    user_id INT NOT NULL,
    song_id INT NOT NULL,
    created_at DATETIME DEFAULT NOW(),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (song_id) REFERENCES songs(id)
) engine = InnoDB;

INSERT INTO artists(name)
VALUES
('Walter Phoenix'), ('Peter Strong'),  ('Lance Day'), ('Freedie Shanno');

INSERT INTO subscriptions(subscription_plan, price)
VALUES
('gratuito', 0), ('familiar', 7.99), ('universitário', 5.99);

INSERT INTO users(name, age, subscription_id)
VALUES
('Thati', 23, 1), ('Cíntia', 35, 2), ('Bill', 20, 3), ('Roger', 45, 1);

INSERT INTO albums(name, artist_id)
VALUES
('Envious', 1), ('Exuberant', 1), ('Hallowed Steam', 2),
('Incandescent', 3), ('Temporary Culture', 4);

INSERT INTO songs(name, artist_id, album_id)
VALUES
    ('Soul For Us', 1, 1),
    ('Reflections Of Magic', 1, 1),
    ('Dance With Her Own', 1, 1),
    ('Troubles Of My Inner Fire', 1, 2),
    ('Time Fireworks', 1, 2),
    ('Magic Circus', 2, 3),
    ('Honey, So Do I', 2, 3),
    ("Sweetie, Let's Go Wild", 2, 3),
    ('She Knows', 2, 3),
    ('Fantasy For Me', 3, 4),
    ('Celebration Of More', 3, 4),
    ('Rock His Everything', 3, 4),
    ('Home Forever', 3, 4),
    ('Diamond Power', 3, 4),
    ("Honey, Let's Be Silly", 3, 4),
    ('Thang Of Thunder', 4, 5),
    ('Words Of Her Life', 4, 5),
    ('Without My Streets', 4, 5);

INSERT INTO follows (user_id, artist_id)
VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);

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
