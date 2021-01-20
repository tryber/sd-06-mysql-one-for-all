DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

DROP TABLE IF EXISTS `plano`;
CREATE TABLE `plano` (
`plano_id` INT PRIMARY KEY AUTO_INCREMENT,
`nome_plano` VARCHAR(50) NOT NULL,
`valor_plano` DECIMAL(4,2) NOT NULL
)
ENGINE = InnoDb;

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
`usuario_id` INT PRIMARY KEY AUTO_INCREMENT,
`nome_usuario` VARCHAR(50) NOT NULL,
`idade` INT NOT NULL,
`plano_id` INT NOT NULL,
FOREIGN KEY (`plano_id`) REFERENCES `plano`(`plano_id`)
)
ENGINE = InnoDB;

DROP TABLE IF EXISTS `artista`;
CREATE TABLE `artista` (
`artista_id` INT PRIMARY KEY AUTO_INCREMENT,
`nome_artista` VARCHAR(50) NOT NULL
)
ENGINE = InnoDB;

DROP TABLE IF EXISTS `album`;
CREATE TABLE `album` (
`album_id` INT PRIMARY KEY AUTO_INCREMENT,
`nome_album` VARCHAR(50) NOT NULL,
`artista_id` INT NOT NULL,
FOREIGN KEY (`artista_id`) REFERENCES `artista`(`artista_id`)
)
ENGINE = InnoDB;

DROP TABLE IF EXISTS `segue_artistas`;
CREATE TABLE `segue_artistas` (
`usuario_id` INT NOT NULL,
`artista_id` INT NOT NULL,
PRIMARY KEY (`usuario_id`, `artista_id`),
FOREIGN KEY (`usuario_id`) REFERENCES `usuario`(`usuario_id`),
FOREIGN KEY (`artista_id`) REFERENCES `artista`(`artista_id`)
)
ENGINE = InnoDB;

DROP TABLE IF EXISTS `musica`;
CREATE TABLE `musica` (
`musica_id` INT PRIMARY KEY AUTO_INCREMENT,
`nome_musica` VARCHAR(100) NOT NULL,
`album_id` INT NOT NULL,
FOREIGN KEY (`album_id`) REFERENCES `album`(`album_id`)
)
ENGINE = InnoDB;

DROP TABLE IF EXISTS `historico_reproducao`;
CREATE TABLE `historico_reproducao` (
`musica_id` INT NOT NULL,
`usuario_id` INT NOT NULL,
PRIMARY KEY (`musica_id`, `usuario_id`),
FOREIGN KEY (`musica_id`) REFERENCES `musica`(`musica_id`),
FOREIGN KEY (`usuario_id`) REFERENCES `usuario`(`usuario_id`)
)
ENGINE = InnoDB;

INSERT INTO `plano` (`plano_id`, `nome_plano`, `valor_plano`) VALUES
(1,'gratuito',0),
(2,'familiar',7.99),
(3,'universitário',5.99);

INSERT INTO `usuario` (`usuario_id`, `nome_usuario`, `idade`, `plano_id`) VALUES
(1,'Thati',23,1),
(2,'Cintia',35,2),
(3,'Bill',20,3),
(4,'Roger',45,1);

INSERT INTO `artista` (`artista_id`, `nome_artista`) VALUES
(1,'Walter Phoenix'),
(2,'Peter Strong'),
(3,'Lance Day'),
(4,'Freedie Shannon');

INSERT INTO `album` (`album_id`, `nome_album`, `artista_id`) VALUES
(1,'Envious',1),
(2,'Exuberant',1),
(3,'Hallowed Steam',2),
(4,'Incandescent',3),
(5,'Temporary Culture',4);

INSERT INTO `segue_artistas` (`usuario_id`, `artista_id`) VALUES
(1,1),
(1,4),
(1,3),
(2,1),
(2,3),
(3,2),
(3,1),
(4,4);

INSERT INTO `musica` (`musica_id`, `nome_musica`, `album_id`) VALUES
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

INSERT INTO `historico_reproducao` (`musica_id`, `usuario_id`) VALUES
(1,1),
(6,1),
(14,1),
(16,1),
(13,2),
(17,2),
(2,2),
(15,2),
(4,3),
(16,3),
(6,3),
(3,4),
(18,4),
(11,4);
