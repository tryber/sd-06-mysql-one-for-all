-- Dropa o banco caso ele exista
DROP DATABASE IF EXISTS SpotifyClone;
-- Cria o banco
CREATE DATABASE SpotifyClone;

USE SpotifyClone;

-- Cria a tabela plano.
-- Pode ser criada, antes de qualquer outra, pois não depende de nenhum dado externo

CREATE TABLE planos (
  id_plano INT PRIMARY KEY AUTO_INCREMENT,
  tipo_plano VARCHAR(80) NOT NULL UNIQUE,
  valor_plano DECIMAL(4,2) NOT NULL
) engine = InnoDB;

-- Cria a tabela artistas
-- Assim como a tabela plano, pode ser criada, antes de qualquer outra, pois não depende de nenhum dado externo

CREATE TABLE artistas (
  id_artista INT PRIMARY KEY AUTO_INCREMENT,
  nome_artista VARCHAR(200) NOT NULL
) engine = InnoDB;

-- Cria a tabela usuários
-- Depende da criação da tabela plano (id_plano é fk dos usuários)

CREATE TABLE usuarios (
  id_usuario INT PRIMARY KEY AUTO_INCREMENT,
  nome_usuario VARCHAR(200) NOT NULL,
  idade INT NOT NULL,
  plano_associado INT NOT NULL,
  CONSTRAINT `fk_usuario_plano` FOREIGN KEY (plano_associado) REFERENCES planos(id_plano)
  -- visto em 13/1/2021 - Revisão bloco 22 pt1 (+/- min. 25 à 28)
  -- constrain impede que essa tabela seja deletada antes de se eliminar todas suas dependências
) engine = InnoDB;

-- Cria a tabela albuns
-- Depende da criação da tabela artistas (id_artista é fk dos álbuns)

CREATE TABLE albuns (
  id_album INT PRIMARY KEY AUTO_INCREMENT,
  nome_album VARCHAR(200) NOT NULL,
  artista_associado INT NOT NULL,
  FOREIGN KEY (artista_associado) REFERENCES artistas(id_artista) 
) engine = InnoDB;

-- Cria a tabela cancoes
-- Aqui as canções pertencem a um álbum e também um artista, porém apenas a tabela albuns
-- será considerada (id_albuns é fk das canções)

CREATE TABLE cancoes (
  id_cancao INT PRIMARY KEY AUTO_INCREMENT,
  nome_cancao VARCHAR(200) NOT NULL,
  album_associado INT NOT NULL,
  FOREIGN KEY (album_associado) REFERENCES albuns(id_album)
) engine = InnoDB;

-- Cria a tabela historico
-- Essa tabela vai relacionar os usuarios com as canções. 
-- Servirá como intermediária entre duas tabelas. uma vez que muitos usuários, podem
-- ouvir muitas canções (e muitas canções podem ser ouvidas por muitos usuários). 

CREATE TABLE historico (
  -- Quando for necessário fazer uso do relacionamento muitos para muitos (N..N), 
  -- a tabela criada para modelar esse tipo de relacionamento precisa ter sua 
  -- chave primária composta por suas foreign keys
  id_usuario INT NOT NULL,
  id_cancao INT NOT NULL,
  PRIMARY KEY (id_usuario, id_cancao),
  FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
  FOREIGN KEY (id_cancao) REFERENCES cancoes(id_cancao)
  -- como visto na thread 13/01 :
  -- [https://trybecourse.slack.com/archives/C016CCMKN9E/p1610577501391800]
) engine = InnoDB;

CREATE TABLE seguidores (
  id_usuario INT NOT NULL,
  id_artista INT NOT NULL,
  PRIMARY KEY (id_usuario, id_artista),
  FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
  FOREIGN KEY (id_artista) REFERENCES artistas(id_artista)
) engine = InnoDB;

-- A partir daqui os valores são inseridos nas tabelas usando os comandos 
-- INSERT INTO nome_da_tabela (coluna1, coluna2) VALUES ('registro1', 'registro2') 

-- Inserindo valores em PLANOS:
INSERT INTO planos (tipo_plano, valor_plano ) VALUES 
('gratuito', 0),
('familiar', 7.99),
('universitário', 5.99);

-- Inserindo valores em ARTISTAS:
INSERT INTO artistas (nome_artista) VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

-- Inserindo valores em USUARIOS:
INSERT INTO usuarios (nome_usuario, idade, plano_associado) VALUES
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

-- Inserindo valores em ALBUNS:
INSERT INTO albuns (nome_album, artista_associado) VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

-- Inserindo valores em CANCOES:
INSERT INTO cancoes (nome_cancao, album_associado) VALUES
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

-- Inserindo valores em HISTORICO:
INSERT INTO historico (id_usuario, id_cancao) VALUES 
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

-- Inserindo valores em SEGUIDORES
INSERT INTO seguidores (id_usuario, id_artista) VALUES
(1, 1),
(1, 3),
(1, 4),
(2, 1),
(2, 3),
(3, 1),
(3, 2),
(4, 4);
