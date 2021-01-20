
DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.planos(
plano_id INT PRIMARY KEY AUTO_INCREMENT,
plano_nome VARCHAR(20) NOT NULL,
valor VARCHAR(20) NOT NULL
)engine = InnoDB;

CREATE TABLE SpotifyClone.usuarios(
usuario_id INT PRIMARY KEY AUTO_INCREMENT,
usuario_nome VARCHAR(50) NOT NULL,
idade INT NOT NULL,
user_plano_id INT NOT NULL,
FOREIGN KEY (user_plano_id) REFERENCES SpotifyClone.planos (plano_id)
)engine = InnoDB;

CREATE TABLE SpotifyClone.artista(
artista_id INT PRIMARY KEY AUTO_INCREMENT,
artista_nome VARCHAR(50) NOT NULL
)engine = InnoDB;

CREATE TABLE SpotifyClone.usuario_segue(
artista_id INT NOT NULL,
usuario_id INT NOT NULL,
FOREIGN KEY (usuario_id) REFERENCES SpotifyClone.usuarios (usuario_id),
FOREIGN KEY (artista_id) REFERENCES SpotifyClone.artista (artista_id),
PRIMARY KEY (artista_id, usuario_id)
)engine = InnoDB;

CREATE TABLE SpotifyClone.albuns(
album_id INT PRIMARY KEY AUTO_INCREMENT,
album_nome VARCHAR(50) NOT NULL,
artista_id INT NOT NULL,
FOREIGN KEY (artista_id) REFERENCES SpotifyClone.artista (artista_id)
)engine = InnoDB;

CREATE TABLE SpotifyClone.cancoes(
cancao_id INT PRIMARY KEY AUTO_INCREMENT,
cancao_nome VARCHAR(50) NOT NULL,
cancoes_album_id INT NOT NULL,
FOREIGN KEY (cancoes_album_id) REFERENCES SpotifyClone.albuns(album_id)
)engine = InnoDB;

CREATE TABLE SpotifyClone.historico_reproducao(
usuario_id INT NOT NULL,
cancao_id INT NOT NULL,
FOREIGN KEY (usuario_id) REFERENCES SpotifyClone.usuarios (usuario_id),
FOREIGN KEY (cancao_id) REFERENCES SpotifyClone.cancoes(cancao_id),
PRIMARY KEY (usuario_id, cancao_id)
)engine = InnoDB;


INSERT INTO SpotifyClone.planos (plano_nome,valor)
VALUES
('Gratuito',0),
('Familiar',7.99),
('Universitário',5.99);

INSERT INTO SpotifyClone.usuarios (usuario_nome,idade,user_plano_id)
VALUES 
('Thati',23,1),
('Cintia',35,2),
('Bill',20,3),
('Roger',45,1);

INSERT INTO SpotifyClone.artista (artista_nome) 
VALUES 
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO SpotifyClone.usuario_segue (usuario_id, artista_id) 
VALUES 
(1,1),
(1,4),
(1,3),
(2,1),
(2,3),
(3,2),
(3,1),
(4,4);

INSERT INTO SpotifyClone.albuns (album_nome, artista_id) 
VALUES 
('Envious',1),
('Exuberant',1),
('Hallowed Steam',2),
('Incandescent',3),
('Temporary Culture',4);

INSERT INTO SpotifyClone.cancoes (cancao_nome, cancoes_album_id) 
VALUES 
('Soul For Us',1),
('Reflections Of Magic',1),
('Dance With Her Own',1),
('Troubles Of My Inner Fire',2),
('Time Fireworks',2),
('Magic Circus',3),
('Honey, So Do I',3),
("Sweetie, Let's Go Wild",3),
('She Knows',3),
('Fantasy For Me',4),
('Celebration Of More',4),
('Rock His Everything',4),
('Home Forever',4),
('Diamond Power',4),
("Honey, Let's Be Silly",4),
('Thang Of Thunder',5),
('Words Of Her Life',5),
('Without My Streets',5);

INSERT INTO SpotifyClone.historico_reproducao (usuario_id, cancao_id) 
VALUES 
(1,1),
(1,6),
(1,14),
(1,16),
(2,13),
(2,17),
(2,2),
(2,15),
(3,4),
(3,16),
(3,6),
(4,3),
(4,18),
(4,11);
