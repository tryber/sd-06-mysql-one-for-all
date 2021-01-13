DROP DATABASE IF EXISTS `SpotifyClone`;

CREATE DATABASE `SpotifyClone`;
USE `SpotifyClone`;

CREATE TABLE IF NOT EXISTS `SpotifyClone`.`plano` (
  `plano_id` INT NOT NULL,
  `plano_nm` VARCHAR(45) NOT NULL,
  `valor` DOUBLE NOT NULL,
  PRIMARY KEY (`plano_id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `SpotifyClone`.`usuario` (
  `usuario_id` INT NOT NULL,
  `usuario_nm` VARCHAR(45) NOT NULL,
  `idade` INT NOT NULL,
  `plano_id` INT NOT NULL,
  PRIMARY KEY (`usuario_id`),
    FOREIGN KEY (`plano_id`)
    REFERENCES `SpotifyClone`.`plano` (`plano_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `SpotifyClone`.`artista` (
  `artista_id` INT NOT NULL,
  `artista_nm` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`artista_id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `SpotifyClone`.`album` (
  `album_id` INT NOT NULL,
  `album_nm` VARCHAR(45) NULL,
  `artista_id` INT NOT NULL,
  PRIMARY KEY (`album_id`),
    FOREIGN KEY (`artista_id`)
    REFERENCES `SpotifyClone`.`artista` (`artista_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `SpotifyClone`.`cancoes` (
  `cancoes_id` INT NOT NULL,
  `cancoes_nm` VARCHAR(45) NOT NULL,
  `album_id` INT NOT NULL,
  PRIMARY KEY (`cancoes_id`),
    FOREIGN KEY (`album_id`)
    REFERENCES `SpotifyClone`.`album` (`album_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `SpotifyClone`.`historico` (
  `historico_id` INT NOT NULL AUTO_INCREMENT,
  `usuario_id` INT NOT NULL,
  `cancoes_id` INT NOT NULL,
  PRIMARY KEY (`historico_id`),
    FOREIGN KEY (`cancoes_id`)
    REFERENCES `SpotifyClone`.`cancoes` (`cancoes_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    FOREIGN KEY (`usuario_id`)
    REFERENCES `SpotifyClone`.`usuario` (`usuario_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `SpotifyClone`.`artista_usuario` (
  `artista_usuario_id` INT NOT NULL AUTO_INCREMENT,
  `usuario_id` INT NOT NULL,
  `artista_id` INT NOT NULL,
  PRIMARY KEY (`artista_usuario_id`),
    FOREIGN KEY (`usuario_id`)
    REFERENCES `SpotifyClone`.`usuario` (`usuario_id`),
    FOREIGN KEY (`artista_id`)
    REFERENCES `SpotifyClone`.`artista` (`artista_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO `plano` (`plano_id`, `plano_nm`, `valor`)
VALUES
  (1, 'gratuito', 0),
  (2, 'familiar', 7.99),
  (3, 'universitário', 5.99);

INSERT INTO `usuario` (`usuario_id`, `usuario_nm`, `idade`,`plano_id`)
VALUES
  (1, 'Thati', 23, 1),
  (2, 'Cintia', 35, 2),
  (3, 'Bill', 20, 3),
  (4, 'Roger', 45, 1);

INSERT INTO `artista` (`artista_id`, `artista_nm`)
VALUES
  (1, 'Walter Phoenix'),
  (2, 'Freedie Shannon'),
  (3, 'Lance Day'),
  (4, 'Peter Strong'), 
  (5, 'Freedie Shannon');

INSERT INTO `album` (`album_id`, `album_nm`, `artista_id`)
VALUES
  (1, 'Envious', 1),
  (2, 'Exuberant', 1),
  (3, 'Hallowed Steam', 4),
  (4, 'Incandescent', 3), 
  (5, 'Temporary Culture', 5);

INSERT INTO `cancoes` (`cancoes_id`, `cancoes_nm`, `album_id`)
VALUES
  (1, 'Soul For Us', 1),
  (2, 'Reflections Of Magic', 1),
  (3, 'Dance With Her Own', 1),
  (4, 'Troubles Of My Inner Fire', 2), 
  (5, 'Time Fireworks', 2),
  (6, 'Magic Circus', 3), 
  (7, 'Honey, So Do I', 3),
  (8, "Sweetie, Let's Go Wild", 3),
  (9, 'She Knows', 3),
  (11, 'Fantasy For Me', 4),  
  (12, 'Celebration Of More', 4),
  (13, 'Rock His Everything', 4), 
  (14, 'Home Forever', 4),
  (15, 'Diamond Power', 4),
  (16, "Honey, Let's Be Silly", 4),
  (17, 'Thang Of Thunder', 5),
  (18, 'Words Of Her Life', 5),
  (19, 'Without My Streets', 5);

INSERT INTO `historico` (`usuario_id`, `cancoes_id`)
VALUES
  (1, 1),
  (1, 6),
  (1, 15),
  (1, 17),
  (2, 14),
  (2, 18),
  (2, 2),
  (2, 16),
  (3, 4),
  (3, 17),
  (3, 6),
  (4, 3),
  (4, 19),
  (4, 12);

INSERT INTO `artista_usuario` (`usuario_id`, `artista_id`)
VALUES
  (1, 1),
  (1, 2),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 4),
  (3, 1),
  (4, 2);
