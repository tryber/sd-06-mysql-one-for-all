DROP DATABASE IF EXISTS Spotifyclone;

CREATE SCHEMA IF NOT EXISTS `Spotifyclone` ;
USE `Spotifyclone` ;

DROP TABLE IF EXISTS `plano`;
CREATE TABLE IF NOT EXISTS `Spotifyclone`.`plano` (
  `plano_id` INT NOT NULL AUTO_INCREMENT,
  `nome_plano` VARCHAR(60) NOT NULL,
  `valor_plano` DECIMAL(4,2) NOT NULL,
  PRIMARY KEY (`plano_id`),
  UNIQUE INDEX `nome_plano_UNIQUE` (`nome_plano`) VISIBLE
)
ENGINE = InnoDB;


DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `Spotifyclone`.`usuario` (
  `usuario_id` INT NOT NULL AUTO_INCREMENT,
  `nome_usuario` VARCHAR(100) NOT NULL,
  `idade_usuario` INT NOT NULL,
  `plano_id` INT NOT NULL,
  PRIMARY KEY (`usuario_id`),
  UNIQUE INDEX `plano_id_UNIQUE` (`plano_id`) VISIBLE,
  CONSTRAINT `plano_id`
    FOREIGN KEY (`plano_id`)
    REFERENCES `Spotifyclone`.`plano` (`plano_id`)
)
ENGINE = InnoDB;


DROP TABLE IF EXISTS `artista`;
CREATE TABLE IF NOT EXISTS `Spotifyclone`.`artista` (
  `artista_id` INT NOT NULL AUTO_INCREMENT,
  `nome_artista` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`artista_id`)
)
ENGINE = InnoDB;


DROP TABLE IF EXISTS `album`;
CREATE TABLE IF NOT EXISTS `Spotifyclone`.`album` (
  `album_id` INT NOT NULL AUTO_INCREMENT,
  `nome_album` VARCHAR(100) NOT NULL,
  `artista_id` INT NULL,
  PRIMARY KEY (`album_id`),
  UNIQUE INDEX `artista_id_UNIQUE` (`artista_id`) VISIBLE,
  CONSTRAINT `artista_id`
    FOREIGN KEY (`artista_id`)
    REFERENCES `Spotifyclone`.`artista` (`artista_id`)
)
ENGINE = InnoDB;


DROP TABLE IF EXISTS `musica`;
CREATE TABLE IF NOT EXISTS `Spotifyclone`.`musica` (
  `musica_id` INT NOT NULL AUTO_INCREMENT,
  `nome_musica` VARCHAR(100) NOT NULL,
  `album_id` INT NULL,
  PRIMARY KEY (`musica_id`),
  UNIQUE INDEX `album_id_UNIQUE` (`album_id`) VISIBLE,
  CONSTRAINT `album_id`
    FOREIGN KEY (`album_id`)
    REFERENCES `Spotifyclone`.`album` (`album_id`)
)
ENGINE = InnoDB;


DROP TABLE IF EXISTS `historico_reproducao`;
CREATE TABLE IF NOT EXISTS `Spotifyclone`.`historico_reproducao` (
  `musica_id` INT NOT NULL,
  `usuario_id` INT NOT NULL,
  PRIMARY KEY (`musica_id`, `usuario_id`),
  UNIQUE INDEX `musica_id_UNIQUE` (`musica_id`) VISIBLE,
  UNIQUE INDEX `usuario_id_UNIQUE` (`usuario_id`) VISIBLE,
  CONSTRAINT `musica_id`
    FOREIGN KEY (`musica_id`)
    REFERENCES `Spotifyclone`.`musica` (`musica_id`),
  CONSTRAINT `usuario_id`
    FOREIGN KEY (`usuario_id`)
    REFERENCES `Spotifyclone`.`usuario` (`usuario_id`)
)
ENGINE = InnoDB;


DROP TABLE IF EXISTS `segue_artista`;
CREATE TABLE IF NOT EXISTS `Spotifyclone`.`segue_artista` (
  `usuario_id` INT NOT NULL,
  `artista_id` INT NOT NULL,
  PRIMARY KEY (`usuario_id`, `artista_id`),
  INDEX `artista_id_idx` (`artista_id`) VISIBLE,
  CONSTRAINT `usuario_id`
    FOREIGN KEY (`usuario_id`)
    REFERENCES `Spotifyclone`.`usuario` (`usuario_id`),
  CONSTRAINT `artista_id`
    FOREIGN KEY (`artista_id`)
    REFERENCES `Spotifyclone`.`artista` (`artista_id`)
)
ENGINE = InnoDB;


-- Inserindo dados nas tabelas
INSERT INTO `Spotifyclone`.`plano` (`plano_id`, `nome_plano`, `valor_plano`) VALUES
(1, 'Individual', 16.90),
(2, 'Duo', 21.90),
(3, 'Familia', 26.90);

INSERT INTO `Spotifyclone`.`usuario` (`usuario_id`, `nome_usuario`, `idade_usuario`, `plano_id`) VALUES
(1, 'João', 25, 1),
(2, 'Marcos', 50, 3),
(3, 'Patricia', 32, 2),
(4, 'Alana', 29, 1);

INSERT INTO `Spotifyclone`.`artista` (`artista_id`, `nome_artista`) VALUES
(1, 'Dire Straits'),
(2, 'Metallica'),
(3, 'Queen'),
(4, 'Beatles'),
(5, 'Iron Maiden'),
(6, 'Bob Marley'),
(7, 'Jack Johnson'),

INSERT INTO `Spotifyclone`.`album` (`album_id`, `nome_album`, `artista_id`) VALUES
(1, 'Jack Johnson Best of', 7),
(2, 'Legends', 6),
(3, 'Metallica', 2),
(4, 'Beatles Best of', 4),
(5, 'A Night at the Opera', 3),
(6, 'Brothers in Arms', 1),
(7, 'Alchemy', 1),
(8, 'Fear of the Dark', 5);

INSERT INTO `Spotifyclone`.`musica` (`musica_id`, `nome_musica`, `album_id`) VALUES
(1, 'Be Quick or Be Dead', 8),
(1, 'From Here to Eternity', 8),
(1, 'So Far Away', 6),
(1, 'Money For Nothing', 6),
(1, 'Walk of Life', 6),
(1, 'Lazing On a Sunday Afternoon', 5),
(1, 'Death on Two Legs', 5),
(1, 'Banana Pancakes', 1),
(1, 'In Between Dreams', 1),
(1, 'Is This Love', 2),
(1, 'Three Little Birds', 2),
(1, 'Enter Sadman', 3),
(1, 'Nothing Else Matters', 3),
(1, 'Help', 4),
(1, 'The Night Before', 4),
(1, 'Expresso Love', 7),
(1, 'Romeo and Juliet', 7);
