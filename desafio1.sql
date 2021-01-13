CREATE SCHEMA IF NOT EXISTS `SpotifyClone` DEFAULT CHARACTER SET utf8 ;
USE `SpotifyClone` ;

CREATE TABLE IF NOT EXISTS `SpotifyClone`.`plano` (
  `plano_id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `valor_plano` DECIMAL(4,2) NOT NULL,
  PRIMARY KEY (`plano_id`),
  UNIQUE INDEX `plano_id_UNIQUE` (`plano_id` ASC) VISIBLE)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `SpotifyClone`.`usuarios` (
  `usuario_id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `idade` INT NULL,
  `plano_id` INT NOT NULL,
  PRIMARY KEY (`usuario_id`),
  UNIQUE INDEX `usuario_id_UNIQUE` (`usuario_id` ASC) VISIBLE,
  INDEX `fk_usuarios_plano1_idx` (`plano_id` ASC) VISIBLE,
  CONSTRAINT `fk_usuarios_plano1`
    FOREIGN KEY (`plano_id`)
    REFERENCES `SpotifyClone`.`plano` (`plano_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `SpotifyClone`.`artistas` (
  `artista_id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`artista_id`),
  UNIQUE INDEX `artista_id_UNIQUE` (`artista_id` ASC) VISIBLE)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `SpotifyClone`.`albuns` (
  `album_id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `artista_id` INT NOT NULL,
  PRIMARY KEY (`album_id`),
  UNIQUE INDEX `album_id_UNIQUE` (`album_id` ASC) VISIBLE,
  INDEX `fk_albuns_artistas1_idx` (`artista_id` ASC) VISIBLE,
  CONSTRAINT `fk_albuns_artistas1`
    FOREIGN KEY (`artista_id`)
    REFERENCES `SpotifyClone`.`artistas` (`artista_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `SpotifyClone`.`cancoes` (
  `cancao_id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `album_id` INT NOT NULL,
  INDEX `fk_cancoes_albuns1_idx` (`album_id` ASC) VISIBLE,
  PRIMARY KEY (`cancao_id`),
  CONSTRAINT `fk_cancoes_albuns1`
    FOREIGN KEY (`album_id`)
    REFERENCES `SpotifyClone`.`albuns` (`album_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `SpotifyClone`.`artistas_seguidos` (
  `usuario_id` INT NOT NULL,
  `artista_id` INT NOT NULL,
  INDEX `fk_usuarios_artistas_usuarios1_idx` (`usuario_id` ASC) VISIBLE,
  INDEX `fk_usuarios_artistas_artistas1_idx` (`artista_id` ASC) VISIBLE,
  PRIMARY KEY (`usuario_id`, `artista_id`),
  CONSTRAINT `fk_usuarios_artistas_usuarios1`
    FOREIGN KEY (`usuario_id`)
    REFERENCES `SpotifyClone`.`usuarios` (`usuario_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarios_artistas_artistas1`
    FOREIGN KEY (`artista_id`)
    REFERENCES `SpotifyClone`.`artistas` (`artista_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `SpotifyClone`.`historico_de_reproducoes` (
  `usuario_id` INT NOT NULL,
  `cancao_id` INT NOT NULL,
  INDEX `fk_usuarios_cancoes_usuarios1_idx` (`usuario_id` ASC) VISIBLE,
  INDEX `fk_usuarios_cancoes_cancoes1_idx` (`cancao_id` ASC) VISIBLE,
  PRIMARY KEY (`usuario_id`,`cancao_id`),
  CONSTRAINT `fk_usuarios_cancoes_usuarios1`
    FOREIGN KEY (`usuario_id`)
    REFERENCES `SpotifyClone`.`usuarios` (`usuario_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarios_cancoes_cancoes1`
    FOREIGN KEY (`cancao_id`)
    REFERENCES `SpotifyClone`.`cancoes` (`cancao_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO SpotifyClone.plano (nome, valor_plano)
VALUES
('gratuito', 0),
('familiar', 7.99),
('universitário', 5.99);

INSERT INTO SpotifyClone.usuarios(nome, idade, plano_id)
VALUES
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

INSERT INTO SpotifyClone.artistas(nome)
VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO SpotifyClone.albuns(nome, artista_id)
VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incadescent', 3),
('Temporary Culture', 4);

INSERT INTO SpotifyClone.cancoes(nome, album_id)
VALUES
('Soul For Us', 1), ('Reflections Of Magic', 1), ('Dance With Her Own', 1),
('Troubles Of My Inner Fire', 2), ('Time Fireworks', 2),
("Magic Circus", 3), ("Honey, So Do I", 3), ("Sweetie, Let's Go Wild", 3), ("She Knows", 3),
("Fantasy For Me", 4), ("Celebration Of More", 4), ("Rock His Everything", 4), ("Home Forever", 4), ("Diamond Power", 4), ("Honey, Let's Be Silly", 4),
("Thang Of Thunder", 5), ("Words Of Her Life", 5), ("Without My Streets", 5);

INSERT INTO SpotifyClone.artistas_seguidos(usuario_id, artista_id)
VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);

INSERT INTO SpotifyClone.historico_de_reproducoes(usuario_id, cancao_id)
VALUES
(1, 1), (1, 6), (1, 14), (1, 16),
(2, 13), (2, 17), (2, 2), (2, 15),
(3, 4), (3, 16), (3, 6),
(4, 3), (4, 18), (4, 11);
