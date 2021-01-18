DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;
USE SpotifyClone;
DROP TABLE IF EXISTS planos;
CREATE TABLE planos(
  `PLANO_ID` DECIMAL NOT NULL PRIMARY KEY,
  `PLANO_NOME` VARCHAR(50) NOT NULL,
  `PLANO_VALOR` DECIMAL(10,2)
) engine = InnoDB;
INSERT INTO
  planos(`PLANO_ID`, `PLANO_NOME`, `PLANO_VALOR`)
VALUES
  (1, 'gratuito', 0),
  (2, 'familiar', 5.99),
  (3, 'universitario', 7.99);
DROP TABLE IF EXISTS author;
CREATE TABLE author(
    `Author_ID` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Author_Nome` VARCHAR(50) NOT NULL
  ) engine = InnoDB;
INSERT INTO
  author(`Author_Nome`)
VALUES
  ("Walter Phoenix"),
  ("Peter Strong"),
  ("Lance Day"),
  ("Freedie Shannon");
CREATE TABLE usuario(
    `USUARIO_ID` INT NOT NULL AUTO_INCREMENT,
    `USUARIO_NOME` VARCHAR(40) NOT NULL,
    `USUARIO_IDADE` DECIMAL NOT NULL,
    `PLANO_ID` DECIMAL NOT NULL,
    PRIMARY KEY(`USUARIO_ID`),
    FOREIGN KEY(`PLANO_ID`) REFERENCES planos(`PLANO_ID`)
  ) engine = InnoDB;
INSERT INTO
  usuario(
    `USUARIO_IDADE`,
    `USUARIO_NOME`,
    `PLANO_ID`
  )
VALUES
  (23, "Thati", 1),
  (35, "Cintia", 3),
  (20, "Bill", 2),
  (45, "Roger", 1);
DROP TABLE IF EXISTS preferencias;
CREATE TABLE preferencias(
    `USUARIO_ID` INT NOT NULL,
    `Author_ID` INT NOT NULL,
    PRIMARY KEY (`USUARIO_ID`, `Author_ID`),
    FOREIGN KEY (`USUARIO_ID`) REFERENCES usuario(`USUARIO_ID`),
    FOREIGN KEY (`Author_ID`) REFERENCES author(`Author_ID`)
  ) engine = InnoDB;
INSERT INTO
  preferencias(`USUARIO_ID`, `Author_ID`)
VALUES
  (1, 1),
  (1, 4),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 2),
  (3, 1),
  (4, 4);
DROP TABLE IF EXISTS albuns;
CREATE TABLE albuns(
    `ALBUM_ID` INT NOT NULL AUTO_INCREMENT,
    `ALBUM_Nome` VARCHAR(50) NOT NULL,
    `Author_ID` INT NOT NULL,
    primary key(`ALBUM_ID`),
    foreign key(Author_ID) references author(Author_ID)
  ) engine = InnoDB;
INSERT INTO
  albuns(`ALBUM_Nome`, `Author_ID`)
VALUES
  ("Envious", 1),
  ("Exuberant", 1),
  ("Hallowed Steam", 2),
  ("Lance Day", 3),
  ("Freedie Shannon", 4);
DROP TABLE IF EXISTS musicas;
CREATE TABLE musicas(
    `MUSICA_ID` INT NOT NULL AUTO_INCREMENT,
    `MUSICA_NOME` VARCHAR(150) NOT NULL,
    `Author_ID` INT,
    `ALBUM_ID` INT,
    PRIMARY KEY(MUSICA_ID),
    FOREIGN KEY(Author_ID) references author(Author_ID),
    FOREIGN KEY(ALBUM_ID) references albuns(ALBUM_ID)
  ) engine = InnoDB;
INSERT INTO
  musicas(`MUSICA_NOME`, `Author_ID`, `ALBUM_ID`)
VALUES
  ("Soul For Us", 1, 1),
  ("Reflections Of Magic", 1, 1),
  ("Dance With Her Own", 1, 1),
  ("Troubles Of My Inner Fire", 1, 2),
  ("Time Fireworks", 1, 2),
  ("Magic Circus", 2, 3),
  ("Honey, So Do I", 2, 3),
  ("Sweetie, Let`s Go Wild ", 2, 3),
  ("She Knows", 2, 3),
  ("Fantasy For Me", 3, 4),
  ("Celebration Of More", 3, 4),
  ("Rock His Everything", 3, 4),
  ("Home Forever", 3, 4),
  ("Diamond Power", 3, 4),
  ("Honey, Let's Be Silly", 3, 4),
  ("Thang Of Thunder", 4, 5),
  ("Words Of Her Life", 4, 5),
  ("Without My Streets", 4, 5);
DROP TABLE IF EXISTS historico;
CREATE TABLE historico(    
    `USUARIO_ID` INT NOT NULL,
    `MUSICA_ID` INT NOT NULL,
    PRIMARY KEY(USUARIO_ID, MUSICA_ID),
    FOREIGN KEY (USUARIO_ID) REFERENCES usuario(USUARIO_ID),
    FOREIGN KEY (MUSICA_ID) REFERENCES musicas(MUSICA_ID)
  ) engine = InnoDB;
INSERT INTO
  historico(`USUARIO_ID`, `MUSICA_ID`)
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
