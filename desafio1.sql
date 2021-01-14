CREATE DATABASE IF NOT EXISTS `SpotifyClone`;

-- -----------------------------------------------------
-- Table `SpotifyClone`.`planos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SpotifyClone`.`planos` ;

CREATE TABLE IF NOT EXISTS `SpotifyClone`.`planos` (
  `plano_id` INT NOT NULL,
  `plano` VARCHAR(45) NOT NULL,
  `valor_plano` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`plano_id`));

-- -----------------------------------------------------
-- Table `SpotifyClone`.`usuarios`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SpotifyClone`.`usuarios` ;

CREATE TABLE IF NOT EXISTS `SpotifyClone`.`usuarios` (
  `usuario_id` INT NOT NULL,
  `usuario` VARCHAR(45) NOT NULL,
  `idade` VARCHAR(45) NOT NULL,
  `planos_plano_id` INT NOT NULL,
  PRIMARY KEY (`usuario_id`),
  INDEX `fk_usuarios_planos_idx` (`planos_plano_id` ASC),
  CONSTRAINT `fk_usuarios_planos`
    FOREIGN KEY (`planos_plano_id`)
    REFERENCES `SpotifyClone`.`planos` (`plano_id`)
    );

-- -----------------------------------------------------
-- Table `SpotifyClone`.`artistas`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SpotifyClone`.`artistas` ;

CREATE TABLE IF NOT EXISTS `SpotifyClone`.`artistas` (
  `artista_id` INT NOT NULL,
  `artista` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`artista_id`));

-- -----------------------------------------------------
-- Table `SpotifyClone`.`albuns`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SpotifyClone`.`albuns` ;

CREATE TABLE IF NOT EXISTS `SpotifyClone`.`albuns` (
  `album_id` INT NOT NULL,
  `album` VARCHAR(45) NOT NULL,
  `artista_id` INT NOT NULL,
  PRIMARY KEY (`album_id`),
  INDEX `fk_albuns_artistas1_idx` (`artista_id` ASC),
  CONSTRAINT `fk_albuns_artistas1`
    FOREIGN KEY (`artista_id`)
    REFERENCES `SpotifyClone`.`artistas` (`artista_id`)
    );

-- -----------------------------------------------------
-- Table `SpotifyClone`.`seguindo_artistas`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SpotifyClone`.`seguindo_artistas` ;

CREATE TABLE IF NOT EXISTS `SpotifyClone`.`seguindo_artistas` (
  `usuario_id` INT NOT NULL,
  `artista_id` INT NOT NULL,
  INDEX `fk_seguindo_artistas_usuarios1_idx` (`usuario_id` ASC),
  INDEX `fk_seguindo_artistas_artistas1_idx` (`artista_id` ASC),
  PRIMARY KEY (`artista_id`, `usuario_id`),
  CONSTRAINT `fk_seguindo_artistas_usuarios1`
    FOREIGN KEY (`usuario_id`)
    REFERENCES `SpotifyClone`.`usuarios` (`usuario_id`)
    ,
  CONSTRAINT `fk_seguindo_artistas_artistas1`
    FOREIGN KEY (`artista_id`)
    REFERENCES `SpotifyClone`.`artistas` (`artista_id`)
    );


-- -----------------------------------------------------
-- Table `SpotifyClone`.`cancoes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SpotifyClone`.`cancoes` ;

CREATE TABLE IF NOT EXISTS `SpotifyClone`.`cancoes` (
  `cancao_id` INT NOT NULL,
  `cancao` VARCHAR(45) NOT NULL,
  `album_id` INT NOT NULL,
  PRIMARY KEY (`cancao_id`),
  INDEX `fk_cancoes_albuns1_idx` (`album_id` ASC),
  CONSTRAINT `fk_cancoes_albuns1`
    FOREIGN KEY (`album_id`)
    REFERENCES `SpotifyClone`.`albuns` (`album_id`)
    );

-- -----------------------------------------------------
-- Table `SpotifyClone`.`historico_execucoes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SpotifyClone`.`historico_execucoes` ;

CREATE TABLE IF NOT EXISTS `SpotifyClone`.`historico_execucoes` (
  `cancao_id` INT NOT NULL,
  `usuario_id` INT NOT NULL,
  INDEX `fk_historico_execucoes_cancoes1_idx` (`cancao_id` ASC),
  INDEX `fk_historico_execucoes_usuarios1_idx` (`usuario_id` ASC),
  PRIMARY KEY (`cancao_id`, `usuario_id`),
  CONSTRAINT `fk_historico_execucoes_cancoes1`
    FOREIGN KEY (`cancao_id`)
    REFERENCES `SpotifyClone`.`cancoes` (`cancao_id`)
    ,
  CONSTRAINT `fk_historico_execucoes_usuarios1`
    FOREIGN KEY (`usuario_id`)
    REFERENCES `SpotifyClone`.`usuarios` (`usuario_id`)
    );
