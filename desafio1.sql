DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE `planos` (
  `planos_id` INT PRIMARY KEY AUTO_INCREMENT,
  `planos_nome` VARCHAR(45) NOT NULL,
  `planos_valor` DECIMAL(3, 2) NOT NULL)
ENGINE = InnoDB;

CREATE TABLE `SpotifyClone`.`usuarios` (
  `usuarios_id` INT PRIMARY KEY AUTO_INCREMENT,
  `usuarios_nome` VARCHAR(75) NOT NULL,
  `usuarios_idade` INT NULL,
  `planos_id` INT NULL,
    FOREIGN KEY (`planos_id`)
    REFERENCES `SpotifyClone`.`planos` (`planos_id`))
ENGINE = InnoDB;

CREATE TABLE `SpotifyClone`.`artistas` (
  `artistas_id` INT PRIMARY KEY AUTO_INCREMENT,
  `artistas_nome` VARCHAR(45) NOT NULL)
ENGINE = InnoDB;

CREATE TABLE `albuns` (
  `albuns_id` INT PRIMARY KEY AUTO_INCREMENT,
  `albuns_titulo` VARCHAR(75) NOT NULL,
  `artistas_id` INT NOT NULL,
    FOREIGN KEY (`artistas_id`)
    REFERENCES `SpotifyClone`.`artistas` (`artistas_id`))
ENGINE = InnoDB;

CREATE TABLE `SpotifyClone`.`musicas` (
  `musicas_id` INT PRIMARY KEY AUTO_INCREMENT,
  `musicas_titulo` VARCHAR(75) NOT NULL,
  `albuns_id` INT NOT NULL,
    FOREIGN KEY (`albuns_id`)
    REFERENCES `SpotifyClone`.`albuns` (`albuns_id`))
ENGINE = InnoDB;

CREATE TABLE `SpotifyClone`.`historicos` (
  `usuarios_id` INT NOT NULL,
  `musicas_id` INT NOT NULL,
  PRIMARY KEY (`usuarios_id`, `musicas_id`),
    FOREIGN KEY (`usuarios_id`)
    REFERENCES `SpotifyClone`.`usuarios` (`usuarios_id`),
    FOREIGN KEY (`musicas_id`)
    REFERENCES `SpotifyClone`.`musicas` (`musicas_id`))
ENGINE = InnoDB;

CREATE TABLE `SpotifyClone`.`seguindo_artistas` (
  `usuarios_id` INT NOT NULL,
  `artistas_id` INT NOT NULL,
  PRIMARY KEY (`usuarios_id`, `artistas_id`),
    FOREIGN KEY (`usuarios_id`)
    REFERENCES `SpotifyClone`.`usuarios` (`usuarios_id`),
    FOREIGN KEY (`artistas_id`)
    REFERENCES `SpotifyClone`.`artistas` (`artistas_id`))
ENGINE = InnoDB;

-- ----------------------------------------------
-- INSERT 
-- ----------------------------------------------
INSERT INTO planos (planos_nome, planos_valor)
VALUES ('gratuito', 0.00), ('universitário', 5.99), ('familiar', 7.99);

INSERT INTO usuarios (usuarios_nome, usuarios_idade, planos_id)
VALUES ('Thati', 23, 1), ('Cintia', 35, 3), ('Bill', 20, 2), ('Roger', 45, 1);

INSERT INTO artistas (artistas_nome)
VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO albuns (albuns_titulo, artistas_id)
VALUES 
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO musicas (musicas_titulo, albuns_id)
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

INSERT INTO historicos (usuarios_id, musicas_id)
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

INSERT INTO seguindo_artistas (usuarios_id, artistas_id)
VALUES
(1, 1),
(1, 3),
(1, 4),
(2, 1),
(2, 3),
(3, 1),
(3, 2),
(4, 4);

-- referencias
-- https://www.w3resource.com/mysql/mysql-triggers.php
-- https://www.devmedia.com.br/triggers-pl-sql-saiba-quando-e-por-que-usar/30011
-- https://www.mssqltips.com/sqlservertip/5909/sql-server-trigger-example/
-- https://www.mysqltutorial.org/mysql-triggers/mysql-before-delete-trigger/
-- https://pastebin.com/dV5m4UVb
-- https://www.sqlservertutorial.net/
-- https://www.w3schools.com/sql/default.asp
-- https://www.tutorialspoint.com/sql/index.htm
-- YOUTUBE = "tantaum" de videos
-- GITHUB = Havyner
