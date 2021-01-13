DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE usuario(
usuario_id INT PRIMARY KEY NOT NULL auto_increment,
nome VARCHAR(50) NOT NULL,
idade INT NOT NULL,
plano_id INT NOT NULL,
FOREIGN KEY (plano_id) references planos (plano_id)
) engine = InnoDB;

CREATE TABLE seguidores(
seguindo VARCHAR(50) NOT NULL,
usuario_id INT NOT NULL,
FOREIGN KEY (usuario_id) references usuario (usuario_id)
) engine = InnoDB;

CREATE TABLE reproducoes(
historico VARCHAR(50) NOT NULL,
usuario_id INT NOT NULL,
FOREIGN KEY (usuario_id) references usuario (usuario_id)
) engine = InnoDB;

CREATE TABLE cancoes(
cancao VARCHAR(50) NOT NULL,
album_id INT NOT NULL,
FOREIGN KEY (album_id) references albuns (album_id)
) engine = InnoDB;

CREATE TABLE albuns(
album_id INT PRIMARY KEY NOT NULL auto_increment,
album VARCHAR(50) NOT NULL,
artista_id INT NOT NULL,
FOREIGN KEY (artista_id) references artistas (artista_id)
) engine = InnoDB;

CREATE TABLE planos(
plano_id INT PRIMARY KEY NOT NULL auto_increment,
plano VARCHAR(50) NOT NULL,
valor_plano DECIMAL(4,2) NOT NULL
) engine = InnoDB;

CREATE TABLE artistas (
artista_id INT PRIMARY KEY NOT NULL auto_increment,
artista VARCHAR(50) NOT NULL
) engine = InnoDB;

INSERT INTO usuario (usuario_id, nome, idade, plano_id)
VALUES
(1,'Thati',23, 1),
(2,'Cintia',35, 2),
(3,'Bill',20, 3),
(4,'Roger',45, 1);

INSERT INTO seguidores (seguindo, usuario_id)
VALUES
('Walter Phoenix',1),
('Freedie Shannon',1),
('Lance Day',1),
('Walter Phoenix',2),
('Lance Day',2),
('Peter Strong',3),
('Walter Phoenix',3),
('Freedie Shannon',4);

INSERT INTO reproducoes (historico, usuario_id)
VALUES
("Soul For Us",1),
("Magic Circus",1),
("Diamond Power",1),
("Thang Of Thunder",1),
("Home Forever",2),
("Words Of Her Life",2),
("Reflections Of Magic",2),
("Honey, Let's Be Silly",2),
("Troubles Of My Inner Fire",3),
("Thang Of Thunder",3),
("Magic Circus",3),
("Dance With Her Own",4),
("Without My Streets",4),
("Celebration Of More",4);

INSERT INTO cancoes (cancao, album_id)
VALUES
("Soul For Us",1),
("Reflections Of Magic",1),
("Dance With Her Own",1),
("Troubles Of My Inner Fire",2),
("Time Fireworks",2),
("Magic Circus",3),
("Honey, So Do I",3),
("Sweetie, Let's Go Wild",3),
("She Knows",3),
("Fantasy For Me",4),
("Celebration Of More",4),
("Rock His Everything",4),
("Home Forever",4),
("Diamond Power",4),
("Honey, Let's Be Silly",4),
("Thang Of Thunder",5),
( "Words Of Her Life",5),
("Without My Streets",5);

INSERT INTO albuns (album_id, album, artista_id)
VALUES
(1,'Envious',1),
(2,'Exuberant',1),
(3,'Hallowed Steam',2),
(4,'Incandescent',3),
(5,'Temporary Culture',4);

INSERT INTO planos (plano_id, plano, valor_plano)
VALUES
(1,'gratuito',0.00),
(2,'familiar',7.99),
(3,'universitário',5.99);

INSERT INTO artistas (artista_id, artista)
VALUES
(1,'Walter Phoenix'),
(2,'Peter Strong'),
(3,'Lance Day'),
(4,'Freedie Shannon');
