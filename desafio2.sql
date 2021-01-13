DROP VIEW IF EXISTS `estatisticas_musicais`;

CREATE VIEW `estatisticas_musicais` AS
SELECT
  COUNT(DISTINCT(can.nome)) AS `cancoes`,
  COUNT(DISTINCT(art.nome)) AS `artistas`,
  COUNT(DISTINCT(alb.nome)) AS `albuns`
FROM 
  SpotifyClone.artista AS art,
  SpotifyClone.album AS alb,
  SpotifyClone.cancoes AS can;
  
  