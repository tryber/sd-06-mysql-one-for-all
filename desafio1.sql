DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE membership_plans(
    plan_id INT AUTO_INCREMENT PRIMARY KEY,
    plan_name VARCHAR(20) NOT NULL,
    plan_fee DECIMAL(10, 2) NOT NULL
) engine = InnoDB;

INSERT INTO membership_plans(plan_name, plan_fee)
VALUES
    ('gratuito', 0),
    ('familiar', 7.99),
    ('universitário', 5.99);

CREATE TABLE IF NOT EXISTS artists(
    artist_id INT AUTO_INCREMENT PRIMARY KEY,
    artist_name VARCHAR(50) NOT NULL
) engine = InnoDB;

INSERT INTO artists(artist_name)
VALUES
    ('Walter Phoenix'),
    ('Peter Strong'),
    ('Lance Day'),
    ('Freedie Shannon');

CREATE TABLE IF NOT EXISTS albums(
    album_id INT AUTO_INCREMENT PRIMARY KEY,
    album_name VARCHAR(100) NOT NULL,
    artist_id INT NOT NULL,
    FOREIGN KEY (artist_id)
        REFERENCES artists(artist_id)
    ON DELETE CASCADE
) engine = InnoDB;

INSERT INTO albums(album_name, artist_id)
VALUES
    ('Envious', 1),
    ('Exuberant', 1),
    ('Hallowed Steam', 2),
    ('Incandescent', 3),
    ('Temporary Culture', 4);

CREATE TABLE IF NOT EXISTS songs(
    song_id INT AUTO_INCREMENT PRIMARY KEY,
    song_title VARCHAR(100) NOT NULL,
    album_id INT NOT NULL,
    artist_id INT NOT NULL,
    FOREIGN KEY (album_id)
        REFERENCES albums(album_id)
    ON DELETE CASCADE,
    FOREIGN KEY (artist_id)
        REFERENCES artists(artist_id)
    ON DELETE CASCADE
) engine = InnoDB;

INSERT INTO songs(song_title, album_id, artist_id)
VALUES
    ('Soul For Us', 1, 1),
    ('Reflections Of Magic', 1, 1),
    ('Dance With Her Own', 1, 1),
    ('Troubles Of My Inner Fire', 2, 1),
    ('Time Fireworks', 2, 1),
    ('Magic Circus', 3, 2),
    ('Honey, So Do I', 3, 2),
    ("Sweetie, Let's Go Wild", 3, 2),
    ('She Knows', 3, 2),
    ('Fantasy For Me', 4, 3),
    ('Celebration Of More', 4, 3),
    ('Rock His Everything', 4, 3),
    ('Home Forever', 4, 3),
    ('Diamond Power', 4, 3),
    ("Honey, Let's Be Silly", 4, 3),
    ('Thang Of Thunder', 5, 4),
    ('Words Of Her Life', 5, 4),
    ('Without My Streets', 5, 4);

CREATE TABLE IF NOT EXISTS users(
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    plan_id INT NOT NULL,
    FOREIGN KEY (plan_id)
        REFERENCES membership_plans(plan_id)
    ON DELETE CASCADE
) engine = InnoDB;

INSERT INTO users(user_name, age, plan_id)
VALUES
    ('Thati', 23, 1),
    ('Cintia', 35, 2),
    ('Bill', 20, 3),
    ('Roger', 45, 1);

CREATE TABLE IF NOT EXISTS play_history(
    user_id INT NOT NULL,
    song_id INT NOT NULL,
    PRIMARY KEY (user_id, song_id),
    FOREIGN KEY (user_id)
        REFERENCES users(user_id)
    ON DELETE CASCADE,
    FOREIGN KEY (song_id)
        REFERENCES songs(song_id)
    ON DELETE CASCADE
) engine = InnoDB;

INSERT INTO play_history(user_id, song_id)
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

CREATE TABLE IF NOT EXISTS followings(
    user_id INT NOT NULL,
    artist_id INT NOT NULL,
    PRIMARY KEY (user_id, artist_id),
    FOREIGN KEY (user_id)
        REFERENCES users(user_id)
    ON DELETE CASCADE,
    FOREIGN KEY (artist_id)
        REFERENCES artists(artist_id)
    ON DELETE CASCADE
) engine = InnoDB;

INSERT INTO followings(user_id, artist_id)
VALUES
    (1, 1),
    (1, 4),
    (1, 3),
    (2, 1),
    (2, 3),
    (3, 2),
    (3, 1),
    (4, 4);
