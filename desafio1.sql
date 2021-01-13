DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE planos(
plano_id INT PRIMARY KEY auto_increment,
plano VARCHAR(50) NOT NULL,
valor_plano DECIMAL(3, 2) NOT NULL
) engine = InnoDB;

CREATE TABLE usuarios(
usuario_id INT PRIMARY KEY auto_increment,
usuario VARCHAR(50) NOT NULL,
idade TINYINT NOT NULL,
plano_id INT NOT NULL,
FOREIGN KEY (plano_id) REFERENCES planos(plano_id)
) engine = InnoDB;

CREATE TABLE artistas(
artista_id INT PRIMARY KEY auto_increment,
artista VARCHAR(50) NOT NULL
) engine = InnoDB;

CREATE TABLE albuns(
album_id INT PRIMARY KEY auto_increment,
album_nome VARCHAR(100) NOT NULL, 
artista_id INT NOT NULL,
FOREIGN KEY (artista_id) REFERENCES artistas(artista_id)
) engine = InnoDB;

CREATE TABLE musicas(
musica_id INT PRIMARY KEY auto_increment,
musica_nome VARCHAR(300) NOT NULL,
album_id INT NOT NULL,
FOREIGN KEY (album_id) REFERENCES albuns(album_id)
) engine = InnoDB;

CREATE TABLE historico(
usuario_id INT NOT NULL,
musica_id INT NOT NULL,
FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
FOREIGN KEY (musica_id) REFERENCES musicas(musica_id),
PRIMARY KEY (usuario_id, musica_id)
) engine = InnoDB;

CREATE TABLE follow(
usuario_id INT NOT NULL,
artista_id INT NOT NULL,
FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
FOREIGN KEY (artista_id) REFERENCES artistas(artista_id),
PRIMARY KEY (usuario_id, artista_id)
) engine = InnoDB;

INSERT INTO planos (plano, valor_plano)
VALUES
('Gratuito', 0),
('Familiar', 7.99),
('Universitário', 5.99);

INSERT INTO usuarios (usuario, idade, plano_id)
VALUES
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);
    
INSERT INTO artistas (artista)
VALUES
('Walter Phoenix'),
('Lance Day'),
('Peter Strong'),
('Freedie Shannon');
    
INSERT INTO albuns (album_nome, artista_id)
VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 3),
('Incandescent', 2),
('Temporary Culture', 4);
    
INSERT INTO musicas (musica_nome, album_id)
VALUES 
('"Celebration Of More"', 4),
('"Dance With Her Own"', 1),
('"Diamond Power"', 4),
('"Fantasy For Me"', 4),
('"Home Forever"', 4),
('"Honey, Let´s Be Silly"', 4),
('"Honey, So Do I"', 3),
('"Magic Circus"', 3),
('"Reflections Of Magic"', 1),
('"Rock His Everything"', 4),
('"She Knows"', 3),
('"Soul For Us"', 1),
('"Sweetie, Let´s Go Wild"', 3),
('"Thang Of Thunder"', 5),
('"Time Fireworks"', 2),
('"Troubles Of My Inner Fire"', 2),
('"Without My Streets"', 5),
('"Words Of Her Life"', 5);
    
INSERT INTO historico (usuario_id, musica_id)
VALUES 
(1, 12),
(1, 8),
(1, 3),
(1, 14),
(2, 5),
(2, 18),
(2, 9),
(2, 6),
(3, 16),
(3, 14),
(3, 8),
(4, 2),
(4, 17),
(4, 1);
    
INSERT INTO follow (usuario_id, artista_id)
VALUES
(1, 1),
(1, 4),
(1, 2),
(2, 1),
(2, 2),
(3, 3),
(3, 1),
(4, 4);
