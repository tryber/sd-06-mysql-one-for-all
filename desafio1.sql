DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

CREATE TABLE IF NOT EXISTS Planos (
  planos_id INT NOT NULL AUTO_INCREMENT,
  plano VARCHAR(45) NOT NULL,
  valor_plano DECIMAL(4,2) NOT NULL,
  PRIMARY KEY (planos_id)
);

CREATE TABLE IF NOT EXISTS Usuarios (
  usuario_id INT NOT NULL AUTO_INCREMENT,
  usuario VARCHAR(45) NOT NULL,
  plano_id INT NOT NULL,
	PRIMARY KEY (usuario_id),
    FOREIGN KEY (plano_id)
    REFERENCES Planos (planos_id)
    );

CREATE TABLE IF NOT EXISTS Artistas (
  artista_id INT NOT NULL AUTO_INCREMENT,
  artista VARCHAR(45) NOT NULL,
  PRIMARY KEY (artista_id)
);

CREATE TABLE IF NOT EXISTS Albuns (
  album_id INT NOT NULL AUTO_INCREMENT,
  titulo VARCHAR(60) NOT NULL,
  artista_id INT NOT NULL,
	PRIMARY KEY (album_id),
	FOREIGN KEY (artista_id)
    REFERENCES Artistas (artista_id)
 )
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS Musicas (
  musica_id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  album_id INT NOT NULL,
  artista_id INT NOT NULL,
	PRIMARY KEY (musica_id),
    FOREIGN KEY (album_id)
    REFERENCES Albuns (album_id),
    FOREIGN KEY (artista_id)
    REFERENCES Artistas (artista_id)
    
    );

CREATE TABLE IF NOT EXISTS Historico_de_reproducoes (
  musica_id INT NOT NULL,
  usuario_id INT NOT NULL,
	PRIMARY KEY (musica_id, usuario_id),
    FOREIGN KEY (usuario_id)
    REFERENCES Usuarios (usuario_id),
    FOREIGN KEY (musica_id)
    REFERENCES Musicas (musica_id)
);

CREATE TABLE IF NOT EXISTS Artistas_seguidos (
  id_favoritos INT NOT NULL AUTO_INCREMENT,
  artista_id INT NOT NULL,
  usuario_id INT NOT NULL,
	PRIMARY KEY (id_favoritos),
    FOREIGN KEY (usuario_id)
    REFERENCES Usuarios (usuario_id),
    FOREIGN KEY (artista_id)
    REFERENCES Artistas (artista_id)    
);

INSERT INTO Planos(plano, valor_plano) VALUES ('gratuito', 0);
INSERT INTO Planos(plano, valor_plano) VALUES ('familiar', 7.99);
INSERT INTO Planos(plano, valor_plano) VALUES ('universitário', 5.99);

INSERT INTO Usuarios (usuario, plano_id) VALUES ('Thati', '1');
INSERT INTO Usuarios (usuario, plano_id) VALUES ('Cintia', '2');
INSERT INTO Usuarios (usuario, plano_id) VALUES ('Bill', '3');
INSERT INTO Usuarios (usuario, plano_id) VALUES ('Roger', '1');

INSERT INTO Artistas(artista) VALUES ('Walter Phoenix');
INSERT INTO Artistas(artista) VALUES ('Peter Strong');
INSERT INTO Artistas(artista) VALUES ('Lance Day');
INSERT INTO Artistas(artista) VALUES ('Freedie Shannon');

INSERT INTO Albuns(titulo, artista_id) VALUES ('Envious', 1);
INSERT INTO Albuns(titulo, artista_id) VALUES ('Exuberant', 1);
INSERT INTO Albuns(titulo, artista_id) VALUES ('Hallowed Steam', 2);
INSERT INTO Albuns(titulo, artista_id) VALUES ('Incandescent', 3);
INSERT INTO Albuns(titulo, artista_id) VALUES ('Temporary Culture', 4);

INSERT INTO Musicas(nome, album_id, artista_id) VALUES ('Soul For Us', 1, 1);
INSERT INTO Musicas(nome, album_id, artista_id) VALUES ('Reflections Of Magic', 1, 1);
INSERT INTO Musicas(nome, album_id, artista_id) VALUES ('Dance With Her Own', 1, 1);
INSERT INTO Musicas(nome, album_id, artista_id) VALUES ('Troubles Of My Inner Fire', 2, 1);
INSERT INTO Musicas(nome, album_id, artista_id) VALUES ('Time Fireworks', 2, 1);
INSERT INTO Musicas(nome, album_id, artista_id) VALUES ('Magic Circus', 3, 2);
INSERT INTO Musicas(nome, album_id, artista_id) VALUES ('Honey, So Do I', 3, 2);
INSERT INTO Musicas(nome, album_id, artista_id) VALUES ("Sweetie, Let's Go Wild", 3, 2);
INSERT INTO Musicas(nome, album_id, artista_id) VALUES ('She Knows', 3, 2);
INSERT INTO Musicas(nome, album_id, artista_id) VALUES ('Fantasy For Me', 4, 3);
INSERT INTO Musicas(nome, album_id, artista_id) VALUES ('Celebration Of More', 4, 3);
INSERT INTO Musicas(nome, album_id, artista_id) VALUES ('Rock His Everything', 4, 3);
INSERT INTO Musicas(nome, album_id, artista_id) VALUES ('Home Forever', 4, 3);
INSERT INTO Musicas(nome, album_id, artista_id) VALUES ('Diamond Power', 4, 3);
INSERT INTO Musicas(nome, album_id, artista_id) VALUES ("Honey, Let's Be Silly", 4, 3);
INSERT INTO Musicas(nome, album_id, artista_id) VALUES ('Thang Of Thunder', 5, 4);
INSERT INTO Musicas(nome, album_id, artista_id) VALUES ('Words Of Her Life', 5, 4);
INSERT INTO Musicas(nome, album_id, artista_id) VALUES ('Without My Streets', 5, 4);

INSERT INTO Historico_de_reproducoes(musica_id, usuario_id) VALUES (1, 1);
INSERT INTO Historico_de_reproducoes(musica_id, usuario_id) VALUES (6, 1);
INSERT INTO Historico_de_reproducoes(musica_id, usuario_id) VALUES (14, 1);
INSERT INTO Historico_de_reproducoes(musica_id, usuario_id) VALUES (16, 1);
INSERT INTO Historico_de_reproducoes(musica_id, usuario_id) VALUES (13, 2);
INSERT INTO Historico_de_reproducoes(musica_id, usuario_id) VALUES (17, 2);
INSERT INTO Historico_de_reproducoes(musica_id, usuario_id) VALUES (2, 2);
INSERT INTO Historico_de_reproducoes(musica_id, usuario_id) VALUES (15, 2);
INSERT INTO Historico_de_reproducoes(musica_id, usuario_id) VALUES (4, 3);
INSERT INTO Historico_de_reproducoes(musica_id, usuario_id) VALUES (16, 3);
INSERT INTO Historico_de_reproducoes(musica_id, usuario_id) VALUES (6, 3);
INSERT INTO Historico_de_reproducoes(musica_id, usuario_id) VALUES (3, 4);
INSERT INTO Historico_de_reproducoes(musica_id, usuario_id) VALUES (18, 4);
INSERT INTO Historico_de_reproducoes(musica_id, usuario_id) VALUES (11, 4);

INSERT INTO Artistas_seguidos(artista_id, usuario_id) VALUES (1, 1);
INSERT INTO Artistas_seguidos(artista_id, usuario_id) VALUES (3, 1);
INSERT INTO Artistas_seguidos(artista_id, usuario_id) VALUES (4, 1);
INSERT INTO Artistas_seguidos(artista_id, usuario_id) VALUES (1, 2);
INSERT INTO Artistas_seguidos(artista_id, usuario_id) VALUES (3, 2);
INSERT INTO Artistas_seguidos(artista_id, usuario_id) VALUES (2, 3);
INSERT INTO Artistas_seguidos(artista_id, usuario_id) VALUES (1, 3);
INSERT INTO Artistas_seguidos(artista_id, usuario_id) VALUES (4, 4);