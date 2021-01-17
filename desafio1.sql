DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

CREATE TABLE IF NOT EXISTS SpotifyClone.Planos (
  planos_id INT NOT NULL AUTO_INCREMENT,
  nome_plano VARCHAR(45) NOT NULL,
  valor_plano DECIMAL(4,2) NOT NULL,
  PRIMARY KEY (planos_id))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table SpotifyClone.Usuarios
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS SpotifyClone.Usuarios (
  usuario_id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45) NOT NULL,
  Planos_planos_id INT NOT NULL,
  PRIMARY KEY (usuario_id),
  INDEX fk_Usuarios_Planos_idx (Planos_planos_id ASC) VISIBLE,
  CONSTRAINT fk_Usuarios_Planos
    FOREIGN KEY (Planos_planos_id)
    REFERENCES SpotifyClone.Planos (planos_id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table SpotifyClone.Artistas
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS SpotifyClone.Artistas (
  artista_id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45) NOT NULL,
  PRIMARY KEY (artista_id))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table SpotifyClone.Albuns
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS SpotifyClone.Albuns (
  album_id INT NOT NULL AUTO_INCREMENT,
  titulo VARCHAR(60) NOT NULL,
  Artistas_artista_id INT NOT NULL,
  PRIMARY KEY (album_id, Artistas_artista_id),
  INDEX fk_Albuns_Artistas1_idx (Artistas_artista_id ASC) VISIBLE,
  CONSTRAINT fk_Albuns_Artistas1
    FOREIGN KEY (Artistas_artista_id)
    REFERENCES SpotifyClone.Artistas (artista_id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table SpotifyClone.Musicas
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS SpotifyClone.Musicas (
  musica_id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  Albuns_album_id INT NOT NULL,
  Albuns_Artistas_artista_id INT NOT NULL,
  PRIMARY KEY (musica_id, Albuns_album_id, Albuns_Artistas_artista_id),
  INDEX fk_Musicas_Albuns1_idx (Albuns_album_id ASC, Albuns_Artistas_artista_id ASC) VISIBLE,
  CONSTRAINT fk_Musicas_Albuns1
    FOREIGN KEY (Albuns_album_id , Albuns_Artistas_artista_id)
    REFERENCES SpotifyClone.Albuns (album_id , Artistas_artista_id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table SpotifyClone.Historico_de_reproducoes
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS SpotifyClone.Historico_de_reproducoes (
  idHistorico_de_reproducoes INT NOT NULL AUTO_INCREMENT,
  nome_musica VARCHAR(100) NOT NULL,
  Usuarios_usuario_id INT NOT NULL,
  PRIMARY KEY (idHistorico_de_reproducoes, Usuarios_usuario_id),
  INDEX fk_Historico_de_reproducoes_Usuarios1_idx (Usuarios_usuario_id ASC) VISIBLE,
  CONSTRAINT fk_Historico_de_reproducoes_Usuarios1
    FOREIGN KEY (Usuarios_usuario_id)
    REFERENCES SpotifyClone.Usuarios (usuario_id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table SpotifyClone.Artistas_favoritos
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS SpotifyClone.Artistas_favoritos (
  id_favoritos INT NOT NULL AUTO_INCREMENT,
  nome_artista VARCHAR(45) NOT NULL,
  Usuarios_usuario_id INT NOT NULL,
  PRIMARY KEY (id_favoritos),
  INDEX fk_Artistas_favoritos_Usuarios1_idx (Usuarios_usuario_id ASC) VISIBLE,
  CONSTRAINT fk_Artistas_favoritos_Usuarios1
    FOREIGN KEY (Usuarios_usuario_id)
    REFERENCES SpotifyClone.Usuarios (usuario_id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO SpotifyClone.Planos(nome_plano, valor_plano) VALUES ('gratuito', 0);
INSERT INTO SpotifyClone.Planos(nome_plano, valor_plano) VALUES ('familiar', 7.99);
INSERT INTO SpotifyClone.Planos(nome_plano, valor_plano) VALUES ('universitário', 5.99);

INSERT INTO SpotifyClone.Usuarios (nome, Planos_planos_id) VALUES ('Thati', '1');
INSERT INTO SpotifyClone.Usuarios (nome, Planos_planos_id) VALUES ('Cintia', '2');
INSERT INTO SpotifyClone.Usuarios (nome, Planos_planos_id) VALUES ('Bill', '3');
INSERT INTO SpotifyClone.Usuarios (nome, Planos_planos_id) VALUES ('Roger', '1');

INSERT INTO SpotifyClone.Artistas(nome) VALUES ('Walter Phoenix');
INSERT INTO SpotifyClone.Artistas(nome) VALUES ('Peter Strong');
INSERT INTO SpotifyClone.Artistas(nome) VALUES ('Lance Day');
INSERT INTO SpotifyClone.Artistas(nome) VALUES ('Freedie Shannon');

INSERT INTO SpotifyClone.Albuns(titulo, Artistas_artista_id) VALUES ('Envious', 1);
INSERT INTO SpotifyClone.Albuns(titulo, Artistas_artista_id) VALUES ('Exuberant', 1);
INSERT INTO SpotifyClone.Albuns(titulo, Artistas_artista_id) VALUES ('Hallowed Steam', 2);
INSERT INTO SpotifyClone.Albuns(titulo, Artistas_artista_id) VALUES ('Incandescent', 3);
INSERT INTO SpotifyClone.Albuns(titulo, Artistas_artista_id) VALUES ('Temporary Culture', 4);

INSERT INTO SpotifyClone.Musicas(nome, Albuns_album_id, Albuns_Artistas_artista_id) VALUES ('Soul For Us', 1, 1);
INSERT INTO SpotifyClone.Musicas(nome, Albuns_album_id, Albuns_Artistas_artista_id) VALUES ('Reflections Of Magic', 1, 1);
INSERT INTO SpotifyClone.Musicas(nome, Albuns_album_id, Albuns_Artistas_artista_id) VALUES ('Dance With Her Own', 1, 1);
INSERT INTO SpotifyClone.Musicas(nome, Albuns_album_id, Albuns_Artistas_artista_id) VALUES ('Troubles Of My Inner Fire', 2, 1);
INSERT INTO SpotifyClone.Musicas(nome, Albuns_album_id, Albuns_Artistas_artista_id) VALUES ('Time Fireworks', 2, 1);
INSERT INTO SpotifyClone.Musicas(nome, Albuns_album_id, Albuns_Artistas_artista_id) VALUES ('Magic Circus', 3, 2);
INSERT INTO SpotifyClone.Musicas(nome, Albuns_album_id, Albuns_Artistas_artista_id) VALUES ('Honey, So Do I', 3, 2);
INSERT INTO SpotifyClone.Musicas(nome, Albuns_album_id, Albuns_Artistas_artista_id) VALUES ("Sweetie, Let's Go Wild", 3, 2);
INSERT INTO SpotifyClone.Musicas(nome, Albuns_album_id, Albuns_Artistas_artista_id) VALUES ('She Knows', 3, 2);
INSERT INTO SpotifyClone.Musicas(nome, Albuns_album_id, Albuns_Artistas_artista_id) VALUES ('Fantasy For Me', 4, 3);
INSERT INTO SpotifyClone.Musicas(nome, Albuns_album_id, Albuns_Artistas_artista_id) VALUES ('Celebration Of More', 4, 3);
INSERT INTO SpotifyClone.Musicas(nome, Albuns_album_id, Albuns_Artistas_artista_id) VALUES ('Rock His Everything', 4, 3);
INSERT INTO SpotifyClone.Musicas(nome, Albuns_album_id, Albuns_Artistas_artista_id) VALUES ('Home Forever', 4, 3);
INSERT INTO SpotifyClone.Musicas(nome, Albuns_album_id, Albuns_Artistas_artista_id) VALUES ('Diamond Power', 4, 3);
INSERT INTO SpotifyClone.Musicas(nome, Albuns_album_id, Albuns_Artistas_artista_id) VALUES ("Honey, Let's Be Silly", 4, 3);
INSERT INTO SpotifyClone.Musicas(nome, Albuns_album_id, Albuns_Artistas_artista_id) VALUES ('Thang Of Thunder', 5, 4);
INSERT INTO SpotifyClone.Musicas(nome, Albuns_album_id, Albuns_Artistas_artista_id) VALUES ('Words Of Her Life', 5, 4);
INSERT INTO SpotifyClone.Musicas(nome, Albuns_album_id, Albuns_Artistas_artista_id) VALUES ('Without My Streets', 5, 4);

INSERT INTO SpotifyClone.Historico_de_reproducoes(nome_musica, Usuarios_usuario_id) VALUES ('Soul For Us', 1);
INSERT INTO SpotifyClone.Historico_de_reproducoes(nome_musica, Usuarios_usuario_id) VALUES ('Magic Circus', 1);
INSERT INTO SpotifyClone.Historico_de_reproducoes(nome_musica, Usuarios_usuario_id) VALUES ('Diamond Power', 1);
INSERT INTO SpotifyClone.Historico_de_reproducoes(nome_musica, Usuarios_usuario_id) VALUES ('Thang Of Thunder', 1);
INSERT INTO SpotifyClone.Historico_de_reproducoes(nome_musica, Usuarios_usuario_id) VALUES ('Home Forever', 2);
INSERT INTO SpotifyClone.Historico_de_reproducoes(nome_musica, Usuarios_usuario_id) VALUES ('Words Of Her Life', 2);
INSERT INTO SpotifyClone.Historico_de_reproducoes(nome_musica, Usuarios_usuario_id) VALUES ('Reflections Of Magic', 2);
INSERT INTO SpotifyClone.Historico_de_reproducoes(nome_musica, Usuarios_usuario_id) VALUES ("Honey, Let's Be Silly", 2);
INSERT INTO SpotifyClone.Historico_de_reproducoes(nome_musica, Usuarios_usuario_id) VALUES ('Troubles Of My Inner Fire', 3);
INSERT INTO SpotifyClone.Historico_de_reproducoes(nome_musica, Usuarios_usuario_id) VALUES ('Thang Of Thunder', 3);
INSERT INTO SpotifyClone.Historico_de_reproducoes(nome_musica, Usuarios_usuario_id) VALUES ('Magic Circus', 3);
INSERT INTO SpotifyClone.Historico_de_reproducoes(nome_musica, Usuarios_usuario_id) VALUES ('Dance With Her Own', 4);
INSERT INTO SpotifyClone.Historico_de_reproducoes(nome_musica, Usuarios_usuario_id) VALUES ('Without My Streets', 4);
INSERT INTO SpotifyClone.Historico_de_reproducoes(nome_musica, Usuarios_usuario_id) VALUES ('Celebration Of More', 4);

INSERT INTO SpotifyClone.Artistas_favoritos(nome_artista, Usuarios_usuario_id) VALUES ('Walter Phoenix', 1);
INSERT INTO SpotifyClone.Artistas_favoritos(nome_artista, Usuarios_usuario_id) VALUES ('Lance Day', 1);
INSERT INTO SpotifyClone.Artistas_favoritos(nome_artista, Usuarios_usuario_id) VALUES ('Freedie Shannon', 1);
INSERT INTO SpotifyClone.Artistas_favoritos(nome_artista, Usuarios_usuario_id) VALUES ('Walter Phoenix', 2);
INSERT INTO SpotifyClone.Artistas_favoritos(nome_artista, Usuarios_usuario_id) VALUES ('Lance Day', 2);
INSERT INTO SpotifyClone.Artistas_favoritos(nome_artista, Usuarios_usuario_id) VALUES ('Peter Strong', 3);
INSERT INTO SpotifyClone.Artistas_favoritos(nome_artista, Usuarios_usuario_id) VALUES ('Walter Phoenix', 3);
INSERT INTO SpotifyClone.Artistas_favoritos(nome_artista, Usuarios_usuario_id) VALUES ('Freedie Shannon', 4);
