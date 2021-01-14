SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema SpotifyClone
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `SpotifyClone` ;

-- -----------------------------------------------------
-- Schema SpotifyClone
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `SpotifyClone` ;
USE `SpotifyClone` ;

-- -----------------------------------------------------
-- Table `SpotifyClone`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SpotifyClone`.`usuarios` (
  `usuarios_id` INT NOT NULL AUTO_INCREMENT,
  `usuarios_nome` VARCHAR(75) NOT NULL,
  `usuarios_idade` INT NULL,
  PRIMARY KEY (`usuarios_id`),
  UNIQUE INDEX `usuarios_id_UNIQUE` (`usuarios_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SpotifyClone`.`planos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SpotifyClone`.`planos` (
  `planos_id` INT NOT NULL AUTO_INCREMENT,
  `planos_nome` VARCHAR(45) NOT NULL,
  `planos_valor` DECIMAL NOT NULL,
  PRIMARY KEY (`planos_id`),
  UNIQUE INDEX `planos_id_UNIQUE` (`planos_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SpotifyClone`.`albuns`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SpotifyClone`.`albuns` (
  `albuns_id` INT NOT NULL AUTO_INCREMENT,
  `albuns_titulo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`albuns_id`),
  UNIQUE INDEX `albuns_id_UNIQUE` (`albuns_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SpotifyClone`.`artistas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SpotifyClone`.`artistas` (
  `artistas_id` INT NOT NULL AUTO_INCREMENT,
  `artistas_nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`artistas_id`),
  UNIQUE INDEX `artistas_id_UNIQUE` (`artistas_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SpotifyClone`.`musicas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SpotifyClone`.`musicas` (
  `musicas_id` INT NOT NULL AUTO_INCREMENT,
  `musicas_titulo` VARCHAR(75) NOT NULL,
  PRIMARY KEY (`musicas_id`),
  UNIQUE INDEX `musicas_id_UNIQUE` (`musicas_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SpotifyClone`.`historicos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SpotifyClone`.`historicos` (
  `usuarios_id` INT NOT NULL,
  `musicas_id` INT NOT NULL,
  INDEX `fk_historico_usuarios_id_idx` (`usuarios_id` ASC) VISIBLE,
  INDEX `fk_historico_musicas_id_idx` (`musicas_id` ASC) VISIBLE,
  CONSTRAINT `fk_historicos_usuarios_id`
    FOREIGN KEY (`usuarios_id`)
    REFERENCES `SpotifyClone`.`usuarios` (`usuarios_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_historicos_musicas_id`
    FOREIGN KEY (`musicas_id`)
    REFERENCES `SpotifyClone`.`musicas` (`musicas_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SpotifyClone`.`seguindo_artistas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SpotifyClone`.`seguindo_artistas` (
  `usuarios_id` INT NOT NULL,
  `artistas_id` INT NOT NULL,
  INDEX `fk_seguindo_artistas_usuarios_id_idx` (`usuarios_id` ASC) VISIBLE,
  INDEX `fk_seguindo_artistas_artistas_id_idx` (`artistas_id` ASC) VISIBLE,
  CONSTRAINT `fk_seguindo_artistas_usuarios_id`
    FOREIGN KEY (`usuarios_id`)
    REFERENCES `SpotifyClone`.`usuarios` (`usuarios_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_seguindo_artistas_artistas_id`
    FOREIGN KEY (`artistas_id`)
    REFERENCES `SpotifyClone`.`artistas` (`artistas_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- INSERT ----------------------------------------------
INSERT INTO usuarios (colunas)
VALUES ('coluna', dados), ('coluna', dados), ('coluna', dados);

INSERT INTO planos (planoS_nome, planoS_valor)
VALUES ('gratuito', 0.00), ('universitário', 5.99), ('familiar', 7.99);

INSERT INTO albuns (colunas)
VALUES ('coluna', dados), ('coluna', dados), ('coluna', dados);

INSERT INTO artistas (colunas)
VALUES ('coluna', dados), ('coluna', dados), ('coluna', dados);

INSERT INTO artistas (musicas)
VALUES ('coluna', dados), ('coluna', dados), ('coluna', dados);

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
