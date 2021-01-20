DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

DROP TABLE IF EXISTS `plano`;
CREATE TABLE `plano` (
`plano_id` INT PRIMARY KEY AUTO_INCREMENT,
`nome` VARCHAR(50) NOT NULL,
`valor_plano` DECIMAL(4,2) NOT NULL
) engine = InnoDb;

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
`usuario_id` INT PRIMARY KEY AUTO_INCREMENT,
`nome` VARCHAR(50) NOT NULL,
`idade` INT NOT NULL,
`plano_id` INT NOT NULL,
FOREIGN KEY (`plano_id`) REFERENCES `plano`(`plano_id`)
) engine = InnoDB;

DROP TABLE IF EXISTS `artista`;
CREATE TABLE `artista` (
`artista_id` INT PRIMARY KEY AUTO_INCREMENT,
`nome` VARCHAR(50) NOT NULL
) engine = InnoDB;

DROP TABLE IF EXISTS `album`;
CREATE TABLE `album` (
`album_id` INT PRIMARY KEY AUTO_INCREMENT,
`nome` VARCHAR(50) NOT NULL,
`artista_id` INT NOT NULL,
FOREIGN KEY (`artista_id`) REFERENCES `artista`(`artista_id`)
) engine = InnoDB;

DROP TABLE IF EXISTS `segue_artistas`;
CREATE TABLE `segue_artistas` (
`usuario_id` INT NOT NULL,
`artista_id` INT NOT NULL,
PRIMARY KEY (`usuario_id`, `artista_id`),
FOREIGN KEY (`usuario_id`) REFERENCES `usuario`(`usuario_id`),
FOREIGN KEY (`artista_id`) REFERENCES `artista`(`artista_id`)
) engine = InnoDB;

DROP TABLE IF EXISTS `musica`;
CREATE TABLE `musica` (
`musica_id` INT PRIMARY KEY AUTO_INCREMENT,
`nome` VARCHAR(100) NOT NULL,
`album_id` INT NOT NULL,
FOREIGN KEY (`album_id`) REFERENCES `album`(`album_id`)
) engine = InnoDB;

DROP TABLE IF EXISTS `historico_reproducao`;
CREATE TABLE `historico_reproducao` (
`musica_id` INT NOT NULL,
`usuario_id` INT NOT NULL,
PRIMARY KEY (`musica_id`, `usuario_id`),
FOREIGN KEY (`musica_id`) REFERENCES `musica`(`musica_id`),
FOREIGN KEY (`usuario_id`) REFERENCES `usuario`(`usuario_id`)
) engine = InnoDB;

INSERT INTO `plano` (`plano_id`, `nome`, `valor_plano`)
VALUES
(1,'individual',16.90),
(2,'Duo',21.90),
(3,'Família',26.90);

INSERT INTO `usuario` (`usuario_id`, `nome`, `idade`, `plano_id`)
VALUES
(1,'João',23,1),
(2,'Marcos',35,2),
(3,'Patricia',20,3),
(4,'Alana',45,1);

INSERT INTO `artista` (`artista_id`, `nome`)
VALUES
(1,'Dire Straits'),
(2,'Metallica'),
(3,'Queen'),
(4,'Beatles'),
(5,'Iron Maiden'),
(6,'Bob Marley'),
(7,'Jack Johnson');

INSERT INTO `album` (`album_id`, `nome`, `artista_id`)
VALUES
(1,'Jack Johnson Best of',7),
(2,'Legends',6),
(3,'Metallica',2),
(4,'Beatles Best of',4),
(5,'A Night at the Opera',3),
(6,'Brothers in Arms',1),
(7,'Alchemy',1),
(8,'Fear of the Dark',5);

INSERT INTO `segue_artistas` (`usuario_id`, `artista_id`)
VALUES
(1,1),
(1,2),
(2,5),
(2,7),
(3,3),
(3,6),
(4,4),
(4,1);

INSERT INTO `musica` (`musica_id`, `nome`, `album_id`)
VALUES
(1,'Be Quick or Be Dead',1),
(2,'From Here to Eternity',1),
(3,'So Far Away',1),
(4,'Money For Nothing',2),
(5,'Walk of Life',2),
(6,'Lazing On a Sunday Afternoon',3),
(7,'Death on Two Legs',3),
(8,"Banana Pancakes",3),
(9,'In Between Dreams',3),
(10,'Is This Love',4),
(11,'Three Little Birds',4),
(12,'Enter Sadman',4),
(13,'Nothing Else Matters',4),
(14,'Help',4),
(15,'The Night Before',4),
(16,'Expresso Love',5),
(17,'Romeo and Juliet',5);

INSERT INTO `historico_reproducao` (`musica_id`, `usuario_id`)
VALUES
(1,1),
(13,1),
(9,2),
(7,2),
(2,3),
(6,3),
(15,4),
(12,4);
