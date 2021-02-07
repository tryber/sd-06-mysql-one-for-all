DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE IF NOT EXISTS `SpotifyClone`.`plans`(
  plan_id INT PRIMARY KEY AUTO_INCREMENT,
  plan_type VARCHAR(50) NOT NULL,
  plan_value DECIMAL(5,2) NOT NULL
) engine = InnoDB;

CREATE TABLE IF NOT EXISTS `SpotifyClone`.`users`(
  user_id INT PRIMARY KEY AUTO_INCREMENT,
  user_name VARCHAR(50) NOT NULL,
  user_age INT NOT NULL,
  plan_id INT NOT NULL,
  FOREIGN KEY (plan_id) REFERENCES `SpotifyClone`.`plans`(plan_id)
) engine = InnoDB;

CREATE TABLE IF NOT EXISTS `SpotifyClone`.`artists`(
  artist_id INT PRIMARY KEY AUTO_INCREMENT,
  artist_name VARCHAR(50) NOT NULL
) engine = InnoDB;

CREATE TABLE IF NOT EXISTS `SpotifyClone`.`albuns`(
  album_id INT PRIMARY KEY AUTO_INCREMENT,
  album_name VARCHAR(50) NOT NULL,
  artist_id INT NOT NULL,
  FOREIGN KEY (artist_id) REFERENCES `SpotifyClone`.`artists` (artist_id)
) engine = InnoDB;

CREATE TABLE IF NOT EXISTS `SpotifyClone`.`songs`(
  song_id INT PRIMARY KEY AUTO_INCREMENT,
  song_name VARCHAR(50) NOT NULL,
  album_id INT NOT NULL,
  FOREIGN KEY (album_id) REFERENCES `SpotifyClone`.`albuns` (album_id)
) engine = InnoDB;

CREATE TABLE IF NOT EXISTS `SpotifyClone`.`followed_artists`(
  user_id INT NOT NULL,
  artist_id INT NOT NULL,
  PRIMARY KEY (user_id, artist_id),
  FOREIGN KEY (user_id) REFERENCES `SpotifyClone`.`users` (user_id),
  FOREIGN KEY (artist_id) REFERENCES `SpotifyClone`.`artists` (artist_id)
) engine = InnoDB;

CREATE TABLE IF NOT EXISTS `SpotifyClone`.`songs_history`(
  user_id INT NOT NULL,
  song_id INT NOT NULL,
  PRIMARY KEY (user_id, song_id),
  FOREIGN KEY (user_id) REFERENCES `SpotifyClone`.`users` (user_id),
  FOREIGN KEY (song_id) REFERENCES `SpotifyClone`.`songs` (song_id)
) engine = InnoDB;


-- FOREIGN KEY (nome_coluna) REFERENCES tabela_referência(coluna_referência),
-- FOREIGN KEY (nome_coluna) REFERENCES tabela_referência(coluna_referência), ...
-- SÓ DA PARA CRIAR REFERÊNCIAS PARA TABELAS QUE JÁ EXISTEM!!