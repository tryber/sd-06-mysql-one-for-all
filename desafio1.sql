CREATE TABLE artista(
artista_id INT PRIMARY KEY,
artista VARCHAR(100) NOT NULL
)engine = InnoDB;
CREATE TABLE album(
album_id INT PRIMARY KEY,
album VARCHAR(100) NOT NULL,
artista_id INT NOT NULL,
FOREIGN KEY(artista_id) references artista(artista_id)
)engine = InnoDB;
CREATE TABLE cancoes(
cancao_id INT PRIMARY KEY,
cancao VARCHAR(100) NOT NULL,
album_id INT NOT NULL,
FOREIGN KEY(album_id) references album(album_id)
)engine = InnoDB;
CREATE TABLE historico_de_reproducoes(
usuario_id INT NOT NULL,
cancao_id INT NOT NULL,
FOREIGN KEY(usuario_id) references usuario(usuario_id),
FOREIGN KEY(cancao_id) references cancoes(cancao_id),
PRIMARY KEY(usuario_id, cancao_id)
)engine = InnoDB;

CREATE TABLE seguindo_artistas(
usuario_id INT NOT NULL,
artista_id INT NOT NULL,
FOREIGN KEY (usuario_id) references usuario(usuario_id),
FOREIGN KEY (artista_id) references artista(artista_id),
PRIMARY KEY(usuario_id, artista_id)
)engine = InnoDB;
INSERT INTO plano(plano_id, plano, valor_plano)
VALUES
(1, 'gratuito', 0),
(2, 'familiar', 7.99),
(3, 'universitario', 5.99);
INSERT INTO usuario(usuario_id, usuario, idade, plano_id)
VALUES
(1, 'Thati', 23, 1),
(2, 'Cintia', 35, 2),
(3, 'Bill', 20, 3),
(4, 'Roger', 45, 1);