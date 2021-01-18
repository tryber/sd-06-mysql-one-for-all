DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;
USE SpotifyClone;
CREATE TABLE plano (
id INT PRIMARY KEY auto_increment,
nome VARCHAR(200) NOT NULL,
valor DECIMAL(5,2) NOT NULL
)engine = InnoDB;
INSERT INTO plano ( nome, valor) VALUES
('gratuito',0),
('familiar',7.99),
('universitario',5.99);
create table artista(
id INT PRIMARY KEY auto_increment,
nome VARCHAR(200) NOT NULL
)engine = InnoDB;
INSERT INTO artista (nome) VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');
create table album(
id INT PRIMARY KEY auto_increment,
nome VARCHAR(200) NOT NULL,
artista_id INT NOT NULL,
foreign key (artista_id) references artista (id)
)engine = InnoDB;
INSERT INTO album (nome, artista_id) VALUES
('Envious',1),
('Exuberant',1),
('Hallowed Steam',2),
('Incandescent',3),
('Temporary Culture',4);
create table cancoes(
id INT PRIMARY KEY auto_increment,
nome VARCHAR(200) NOT NULL,
album_id INT NOT NULL,
foreign key (album_id) references album(id)
)engine = InnoDB;
INSERT INTO cancoes (nome, album_id) VALUES
('Dance With Her Own',1),
('Reflections Of Magic',1),
('Soul For Us',1),
('Time Fireworks',2),
('Troubles Of My Inner Fire',2),
('She Knows',3),
('Sweetie, Lets Go Wild',3),
('Honey, So Do I',3),
('Magic Circus',3),
("Honey, Let's Be Silly",4),
('Diamond Power',4),
('Home Forever',4),
('Rock His Everything',4),
('Celebration Of More',4),
('Fantasy For Me',4),
('Without My Streets',5),
('Words Of Her Life',5),
('Thang Of Thunder',5);
create table usuario(
id INT PRIMARY KEY auto_increment,
nome VARCHAR(100) NOT NULL,
idade INT NOT NULL,
plano_id INT NOT NULL,
foreign key (plano_id) references plano(id)
)engine = InnoDB;
INSERT INTO usuario (nome, idade, plano_id) VALUES
('Thati',23,1),
('Cintia',35,2),
('Bill',20,3),
('Roger',45,1);
create table historico(
cancoes_id INT NOT NULL,
usuario_id INT NOT NULL,
primary key(cancoes_id, usuario_id),
foreign key (cancoes_id) references cancoes(id),
foreign key (usuario_id) references usuario(id)
)engine = InnoDB;
INSERT INTO historico (cancoes_id, usuario_id) VALUES
(18,1),
(11,1),
(9,1),
(3,1),
(10,2),
(2,2),
(17,2),
(12,2),
(9,3),
(18,3),
(5,3),
(14,4),
(16,4),
(1,4);
create table seguindo(
artista_id INT NOT NULL,
usuario_id INT NOT NULL,
primary key(artista_id, usuario_id),
foreign key (artista_id) references artista(id),
foreign key (usuario_id) references usuario(id)
)engine = InnoDB;
INSERT INTO seguindo (artista_id, usuario_id) VALUES
(1,1),
(2,3),
(3,1),
(4,1),
(1,2),
(3,2),
(1,3),
(4,4);
