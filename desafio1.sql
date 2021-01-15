DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;
USE SpotifyClone ;

-- -----------------------------------------------------
-- Table `SpotifyClone`.`planos`
-- -----------------------------------------------------
CREATE TABLE planos (
id INT PRIMARY KEY AUTO_INCREMENT,
plano VARCHAR(45) NOT NULL,
valor DECIMAL NOT NULL)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `SpotifyClone`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS usuarios (
  id INT PRIMARY KEY AUTO_INCREMENT,
  usuario VARCHAR(80) NULL,
  idade INT NULL,
  planos_id INT NOT NULL,
  CONSTRAINT fk_usuarios_planos
    FOREIGN KEY (planos_id)
    REFERENCES SpotifyClone.planos (id)
)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `SpotifyClone`.`artistas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS artistas (
  id INT PRIMARY KEY AUTO_INCREMENT,
  artista VARCHAR(80) NULL)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `SpotifyClone`.`albuns`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS albuns (
  id INT PRIMARY KEY AUTO_INCREMENT,
  album VARCHAR(80) NULL,
  artistas_id INT NOT NULL,
  CONSTRAINT fk_album_artistas1
    FOREIGN KEY (artistas_id)
    REFERENCES SpotifyClone.artistas (id))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `SpotifyClone`.`cancoes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS cancoes (
  id INT PRIMARY KEY AUTO_INCREMENT,
  cancao VARCHAR(80) NULL,
  albuns_id INT NOT NULL,

  CONSTRAINT fk_cancoes_album1
    FOREIGN KEY (albuns_id)
    REFERENCES SpotifyClone.albuns (id))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `SpotifyClone`.`usuarios_has_artistas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS usuarios_has_artistas (
  usuarios_id INT NOT NULL,
  artistas_id INT NOT NULL,
  PRIMARY KEY (usuarios_id, artistas_id),
  CONSTRAINT fk_usuarios_has_artistas_usuarios1
    FOREIGN KEY (usuarios_id)
    REFERENCES SpotifyClone.usuarios (id),
  CONSTRAINT fk_usuarios_has_artistas_artistas1
    FOREIGN KEY (artistas_id)
    REFERENCES SpotifyClone.artistas (id))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `SpotifyClone`.`usuarios_has_cancoes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS usuarios_has_cancoes (
  usuarios_id INT NOT NULL,
  cancoes_id INT NOT NULL,
  PRIMARY KEY (`usuarios_id`, `cancoes_id`),
  CONSTRAINT fk_usuarios_has_cancoes_usuarios1
    FOREIGN KEY (usuarios_id)
    REFERENCES SpotifyClone.usuarios (id),
  CONSTRAINT fk_usuarios_has_cancoes_cancoes1
    FOREIGN KEY (cancoes_id)
    REFERENCES SpotifyClone.cancoes (id))
ENGINE = InnoDB;

INSERT INTO planos (plano, valor)
VALUES ('gratuito', 0),('familiar', 7.99),('universitario', 5.99);

INSERT INTO usuarios (usuario, idade, planos_id)
VALUES ('Thati', 23, 1),('Cintia', 35, 2),('Bill', 20, 3),('Roger', 45, 1);

INSERT INTO artistas (artista)
VALUES ('Walter Phoenix'), ('Petter Strong'), ('Lance Day'), ('Freedi Shanno');

INSERT INTO albuns (album, artistas_id)
VALUES ('Envious', 1),('Exuberant', 1),('Hallowed Steam', 2),('Incandescent', 3),('Temporary Culture', 4);

INSERT INTO cancoes (cancao, albuns_id)
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

INSERT INTO usuarios_has_cancoes (usuarios_id, cancoes_id)
VALUES (1,1),(1,6),(1,14),(1,16),(2,13),(2,17),(2,2),(2,15),(3,4),(3,16),(3,6),(4,3),(4,18),(4,11);

INSERT INTO usuarios_has_artistas (usuarios_id, artistas_id)
VALUES (1,1),(1,3),(1,4),(2,1),(2,3),(3,1),(3,2),(4,4);
