DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE `SpotifyClone`;

DROP TABLE IF EXISTS `plano`;
CREATE TABLE `SpotifyClone`.`plano` (
  `plano_id` INT PRIMARY KEY AUTO_INCREMENT,
  `nome_plano` VARCHAR(60) NOT NULL,
  `valor_plano` DECIMAL(4,2) NOT NULL,
)
ENGINE = InnoDB;


DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `SpotifyClone`.`usuario` (
  `usuario_id` INT PRIMARY KEY AUTO_INCREMENT,
  `nome_usuario` VARCHAR(100) NOT NULL,
  `idade_usuario` INT NOT NULL,
  `plano_id` INT NOT NULL,
  FOREIGN KEY (`plano_id`) REFERENCES `SpotifyClone`.`plano` (`plano_id`)
)
ENGINE = InnoDB;


DROP TABLE IF EXISTS `artista`;
CREATE TABLE `SpotifyClone`.`artista` (
  `artista_id` INT PRIMARY KEY AUTO_INCREMENT,
  `nome_artista` VARCHAR(100) NOT NULL
)
ENGINE = InnoDB;


DROP TABLE IF EXISTS `album`;
CREATE TABLE `SpotifyClone`.`album` (
  `album_id` INT PRIMARY KEY AUTO_INCREMENT,
  `nome_album` VARCHAR(100) NOT NULL,
  `artista_id` INT NULL,
  FOREIGN KEY (`artista_id`) REFERENCES `SpotifyClone`.`artista` (`artista_id`)
)
ENGINE = InnoDB;


DROP TABLE IF EXISTS `musica`;
CREATE TABLE `SpotifyClone`.`musica` (
  `musica_id` INT PRIMARY KEY AUTO_INCREMENT,
  `nome_musica` VARCHAR(100) NOT NULL,
  `album_id` INT NULL,
  FOREIGN KEY (`album_id`) REFERENCES `SpotifyClone`.`album` (`album_id`)
)
ENGINE = InnoDB;


DROP TABLE IF EXISTS `historico_reproducao`;
CREATE TABLE `SpotifyClone`.`historico_reproducao` (
  `musica_id` INT NOT NULL,
  `usuario_id` INT NOT NULL,
  PRIMARY KEY (`musica_id`, `usuario_id`),
  FOREIGN KEY (`musica_id`) REFERENCES `SpotifyClone`.`musica` (`musica_id`),
  FOREIGN KEY (`usuario_id`) REFERENCES `SpotifyClone`.`usuario` (`usuario_id`)
)
ENGINE = InnoDB;


DROP TABLE IF EXISTS `segue_artista`;
CREATE TABLE `SpotifyClone`.`segue_artista` (
  `usuario_id` INT NOT NULL,
  `artista_id` INT NOT NULL,
  PRIMARY KEY (`usuario_id`, `artista_id`),
  FOREIGN KEY (`usuario_id`) REFERENCES `SpotifyClone`.`usuario` (`usuario_id`),
  FOREIGN KEY (`artista_id`) REFERENCES `SpotifyClone`.`artista` (`artista_id`)
)
ENGINE = InnoDB;


-- Inserindo dados nas tabelas
INSERT INTO `SpotifyClone`.`plano` (`plano_id`, `nome_plano`, `valor_plano`) VALUES
(1, 'Individual', 16.90),
(2, 'Duo', 21.90),
(3, 'Familia', 26.90);

INSERT INTO `SpotifyClone`.`usuario` (`usuario_id`, `nome_usuario`, `idade_usuario`, `plano_id`) VALUES
(1, 'João', 25, 1),
(2, 'Marcos', 50, 3),
(3, 'Patricia', 32, 2),
(4, 'Alana', 29, 1);

INSERT INTO `SpotifyClone`.`artista` (`artista_id`, `nome_artista`) VALUES
(1, 'Dire Straits'),
(2, 'Metallica'),
(3, 'Queen'),
(4, 'Beatles'),
(5, 'Iron Maiden'),
(6, 'Bob Marley'),
(7, 'Jack Johnson'),

INSERT INTO `SpotifyClone`.`album` (`album_id`, `nome_album`, `artista_id`) VALUES
(1, 'Jack Johnson Best of', 7),
(2, 'Legends', 6),
(3, 'Metallica', 2),
(4, 'Beatles Best of', 4),
(5, 'A Night at the Opera', 3),
(6, 'Brothers in Arms', 1),
(7, 'Alchemy', 1),
(8, 'Fear of the Dark', 5);

INSERT INTO `SpotifyClone`.`musica` (`musica_id`, `nome_musica`, `album_id`) VALUES
(1, 'Be Quick or Be Dead', 8),
(2, 'From Here to Eternity', 8),
(3, 'So Far Away', 6),
(4, 'Money For Nothing', 6),
(5, 'Walk of Life', 6),
(6, 'Lazing On a Sunday Afternoon', 5),
(7, 'Death on Two Legs', 5),
(8, 'Banana Pancakes', 1),
(9, 'In Between Dreams', 1),
(10, 'Is This Love', 2),
(11, 'Three Little Birds', 2),
(12, 'Enter Sadman', 3),
(13, 'Nothing Else Matters', 3),
(14, 'Help', 4),
(15, 'The Night Before', 4),
(16, 'Expresso Love', 7),
(17, 'Romeo and Juliet', 7);

INSERT INTO `SpotifyClone`.`segue_artista` (`usuario_id`, `artista_id`) VALUES
(1, 1),
(1, 2),
(2, 5),
(2, 7),
(3, 3),
(3, 6),
(4, 4),
(4, 1);

INSERT INTO `SpotifyClone`.`historico_reproducao` (`musica_id`, `usuario_id`) VALUES
(1, 1),
(13, 1),
(9, 2),
(7, 2),
(2, 3),
(6, 3),
(15, 4),
(12, 4);
