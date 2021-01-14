-- aqui dropamos o db SpotifyClone, no caso de ele existir
-- e depois criamos o db SpotifyClone
DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;

-- aqui definimos que iremos usar o db SpotifyClone 
USE SpotifyClone;

-- aqui criamos a tabela planos com as colunas plano_id(PK), plano e valor_plano
CREATE TABLE planos(
plano_id INT PRIMARY KEY auto_increment,
plano VARCHAR(50) NOT NULL,
valor_plano DECIMAL(4,2) NOT NULL
) engine = InnoDB;

-- aqui criamos a tabela artistas com as colunas artista_id(PK) e artista
CREATE TABLE artistas (
artista_id INT PRIMARY KEY auto_increment,
artista VARCHAR(50) NOT NULL
) engine = InnoDB;

-- aqui criamos a tabela albuns com as colunas album_id(PK), album e artista_id(FK)
CREATE TABLE albuns(
album_id INT PRIMARY KEY auto_increment,
album VARCHAR(50) NOT NULL,
artista_id INT NOT NULL,
FOREIGN KEY (artista_id) references artistas (artista_id)
) engine = InnoDB;

-- aqui criamos a tabela cancoes com as colunas cancao_id(PK), cancao e album_id(FK)
CREATE TABLE cancoes(
cancao_id INT PRIMARY KEY auto_increment,
cancao VARCHAR(50) NOT NULL,
album_id INT NOT NULL,
FOREIGN KEY (album_id) references albuns (album_id)
) engine = InnoDB;

-- aqui criamos a tabela usuario com as colunas usuario_id(PK), nome, idade, plano_id(FK)
CREATE TABLE usuario(
usuario_id INT PRIMARY KEY auto_increment,
nome VARCHAR(50) NOT NULL,
idade INT NOT NULL,
plano_id INT NOT NULL,
FOREIGN KEY (plano_id) references planos (plano_id)
) engine = InnoDB;

-- aqui criamos a tabela seguidores com as colunas usuario_id(PK)(FK), artista_id(PK)(FK)
CREATE TABLE seguidores(
usuario_id INT NOT NULL,
artista_id INT NOT NULL,
PRIMARY KEY (usuario_id, artista_id),
FOREIGN KEY (usuario_id) references usuario (usuario_id),
FOREIGN KEY (artista_id) references artistas (artista_id)
) engine = InnoDB;

-- aqui criamos a tabela reproducoes com as colunas cancao_id(PK)(FK) e usuario_id(PK)(FK)
CREATE TABLE reproducoes(
cancao_id INT NOT NULL,
usuario_id INT NOT NULL,
PRIMARY KEY (cancao_id, usuario_id),
FOREIGN KEY (usuario_id) references usuario (usuario_id),
FOREIGN KEY (cancao_id) references cancoes (cancao_id)
) engine = InnoDB;

-- aqui inserimos na tabela planos: plano_id, plano e valor_plano
INSERT INTO planos (plano_id, plano, valor_plano)
VALUES
(1,'gratuito',0.00),
(2,'familiar',7.99),
(3,'universitário',5.99);

-- aqui inserimos na tabela artistas: artista_id e artista
INSERT INTO artistas (artista_id, artista)
VALUES
(1,'Walter Phoenix'),
(2,'Peter Strong'),
(3,'Lance Day'),
(4,'Freedie Shannon');

-- aqui inserimos na tabela albuns: album_id, album e artista_id
INSERT INTO albuns (album_id, album, artista_id)
VALUES
(1,'Envious',1),
(2,'Exuberant',1),
(3,'Hallowed Steam',2),
(4,'Incandescent',3),
(5,'Temporary Culture',4);

-- aqui inserimos na tabela albuns: cancao_id, cancao e album_id
INSERT INTO cancoes (cancao_id, cancao, album_id)
VALUES
(1,'Soul For Us',1),
(2,'Reflections Of Magic',1),
(3,'Dance With Her Own',1),
(4,'Troubles Of My Inner Fire',2),
(5,'Time Fireworks',2),
(6,'Magic Circus',3),
(7,'Honey, So Do I',3),
(8,"Sweetie, Let's Go Wild",3),
(9,'She Knows',3),
(10,'Fantasy For Me',4),
(11,'Celebration Of More',4),
(12,'Rock His Everything',4),
(13,'Home Forever',4),
(14,'Diamond Power',4),
(15,"Honey, Let's Be Silly",4),
(16,'Thang Of Thunder',5),
(17,'Words Of Her Life',5),
(18,'Without My Streets',5);

-- aqui inserimos na tabela albuns: usuario_id, nome, idade e plano_id
INSERT INTO usuario (usuario_id, nome, idade, plano_id)
VALUES
(1,'Thati',23, 1),
(2,'Cintia',35, 2),
(3,'Bill',20, 3),
(4,'Roger',45, 1);

-- aqui inserimos na tabela albuns: artista_id e usuario_id
INSERT INTO seguidores (artista_id, usuario_id)
VALUES
(1,1),
(4,1),
(3,1),
(1,2),
(3,2),
(2,3),
(1,3),
(4,4);

-- aqui inserimos na tabela albuns: usuario_id, e cancao_id
INSERT INTO reproducoes (usuario_id, cancao_id)
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