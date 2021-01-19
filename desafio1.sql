DROP DATABASE IF EXISTS ProjectOneForAll;
CREATE DATABASE ProjectOneForAll;
USE ProjectOneForAll;


-- USUARIOS --
CREATE TABLE users (
    user_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(30) NOT NULL,
    user_age INTEGER NOT NULL,
    subscription_id INTEGER NOT NULL,
    FOREIGN KEY (subscription_id) REFERENCES subscriptions(subscription_id)
) engine = InnoDB;

INSERT INTO users (user_name, user_age, subscription_id)
    VALUES ('Thati', 23, 1), ('Cintia', 35, 2), ('Bill', 20, 3), ('Roger', 45, 1);
-- USUARIOS -- 


-- ARTISTAS --
CREATE TABLE artists (
    artist_id INT PRIMARY KEY AUTO_INCREMENT,
    artist_name VARCHAR(40) NOT NULL
) engine = InnoDB;

INSERT INTO artists (artist_name)
    VALUES ('Walter Phoenix'), ('Peter Strong'), ('Lance Day'), ('Freedie Shannon');
--ARTISTAS --

-- ALBUNS --
CREATE TABLE albuns (
    album_id INT PRIMARY KEY AUTO_INCREMENT,
    album_name VARCHAR(50) NOT NULL,
    artist_id INT,
    FOREIGN KEY(artist_id) REFERENCES artists(artist_id)
) engine = InnoDB;

INSERT INTO albuns (album_name, artist_id)
    VALUES ('Envious', 1), ('Exuberant', 1), ('Hallowed Steam', 2), ('Incandescent', 3), ('Temporary Culture', 4);
-- ALBUNS --

-- INSCRIÇÕES --
CREATE TABLE subscriptions (
    subscription_id INT PRIMARY KEY AUTO_INCREMENT,
    subscription_name VARCHAR(40) NOT NULL,
    subscription_cost DECIMAL(10, 2) NOT NULL
) engine = InnoDB;

	INSERT INTO subscriptions (subscription_name, subscription_cost)
    VALUES ('gratuito', 0.00), ('familiar', 7.99), ('universitário', 5.99);
-- INSCRIÇÕES --

-- MUSICAS -- 
CREATE TABLE musics (
    music_id INT PRIMARY KEY AUTO_INCREMENT,
    music_name VARCHAR(80) NOT NULL,
    album_id INT,
    FOREIGN KEY(album_id) REFERENCES albuns(album_id)
) engine = InnoDB;

INSERT INTO musics (music_name, album_id)
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
-- MUSICAS --

-- HISTORICO --
CREATE TABLE histories (
    user_id INT,
    music_id INT,
    PRIMARY KEY(user_id, music_id),
    FOREIGN KEY(user_id) REFERENCES users(user_id),
    FOREIGN KEY(music_id) REFERENCES musics(music_id)
) engine = InnoDB;

INSERT INTO histories (user_id, music_id)
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
-- HISTORICO --

-- SEGUINDO -- 
CREATE TABLE follows (
    user_id INT,
    artist_id INT,
    PRIMARY KEY(user_id, artist_id),
    FOREIGN KEY(user_id) REFERENCES users(user_id),
    FOREIGN KEY(artist_id) REFERENCES artists(artist_id)
) engine = InnoDB;

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
-- SEGUINDO --