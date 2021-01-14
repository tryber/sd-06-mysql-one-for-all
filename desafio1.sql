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

INSERT INTO planos VALUES (1, 'gratuito', 0);
INSERT INTO planos VALUES (2, 'familiar', 7.99);
INSERT INTO planos VALUES (3, 'gratuito', 5.99);

INSERT INTO usuarios VALUES (1, 'Thati', 23, 1);
INSERT INTO usuarios VALUES (2, 'Cintia', 35, 2);
INSERT INTO usuarios VALUES (3, 'Bill', 20, 3);
INSERT INTO usuarios VALUES (4, 'Roger', 45, 1);

INSERT INTO artistas VALUES (1, 'Walter Phoenix');
INSERT INTO artistas VALUES (2, 'Peter Strong');
INSERT INTO artistas VALUES (3, 'Lance Day');
INSERT INTO artistas VALUES (4, 'Freedie Shannon');

INSERT INTO albuns VALUES (1, 'Envious', 1);
INSERT INTO albuns VALUES (2, 'Exuberant', 1);
INSERT INTO albuns VALUES (3, 'Hallowed Steam', 2);
INSERT INTO albuns VALUES (4, 'Incandescent', 3);
INSERT INTO albuns VALUES (5, 'Temporary Culture', 4);

INSERT INTO cancoes VALUES(1,"Soul For Us",1);
INSERT INTO cancoes VALUES(2,"Reflections of Magic",1);
INSERT INTO cancoes VALUES(3,"Dance With Her Own",1);
INSERT INTO cancoes VALUES(4,"Troubles Of My Inner Fire",2);
INSERT INTO cancoes VALUES(5,"Time Fireworks",2);
INSERT INTO cancoes VALUES(6,"Magic Circus",3);
INSERT INTO cancoes VALUES(7,"Honey,So Do I",3);
INSERT INTO cancoes VALUES(8,"Sweetie,Let's Go Wild",3);
INSERT INTO cancoes VALUES(9,"She Knows",3);
INSERT INTO cancoes VALUES(10,"Fantasy For Me",4);
INSERT INTO cancoes VALUES(11,"Celebration Of More",4);
INSERT INTO cancoes VALUES(12,"Rock His Everything",4);
INSERT INTO cancoes VALUES(13,"Home Forever",4);
INSERT INTO cancoes VALUES(14,"Diamond Power",4);
INSERT INTO cancoes VALUES(15,"Honey,Let's Be Silly",4);
INSERT INTO cancoes VALUES(16,"Thang Of Thunder",5);
INSERT INTO cancoes VALUES(17,"Words Of Her Life",5);
INSERT INTO cancoes VALUES(18,"Without My Streets",5);

INSERT INTO seguindo_artistas VALUES(1,1);
INSERT INTO seguindo_artistas VALUES(1,4);
INSERT INTO seguindo_artistas VALUES(1,3);
INSERT INTO seguindo_artistas VALUES(2,1);
INSERT INTO seguindo_artistas VALUES(2,3);
INSERT INTO seguindo_artistas VALUES(3,2);
INSERT INTO seguindo_artistas VALUES(3,1);
INSERT INTO seguindo_artistas VALUES(4,4);

INSERT INTO historico_execucoes(usuario_id, cancao_id) VALUES(1,1);
INSERT INTO historico_execucoes(usuario_id, cancao_id) VALUES(1,6);
INSERT INTO historico_execucoes(usuario_id, cancao_id) VALUES(1,14);
INSERT INTO historico_execucoes(usuario_id, cancao_id) VALUES(1,16);
INSERT INTO historico_execucoes(usuario_id, cancao_id) VALUES(2,13);
INSERT INTO historico_execucoes(usuario_id, cancao_id) VALUES(2,17);
INSERT INTO historico_execucoes(usuario_id, cancao_id) VALUES(2,2);
INSERT INTO historico_execucoes(usuario_id, cancao_id) VALUES(2,15);
INSERT INTO historico_execucoes(usuario_id, cancao_id) VALUES(3,4);
INSERT INTO historico_execucoes(usuario_id, cancao_id) VALUES(3,16);
INSERT INTO historico_execucoes(usuario_id, cancao_id) VALUES(3,6);
INSERT INTO historico_execucoes(usuario_id, cancao_id) VALUES(4,3);
INSERT INTO historico_execucoes(usuario_id, cancao_id) VALUES(4,18);
INSERT INTO historico_execucoes(usuario_id, cancao_id) VALUES(4,11);
