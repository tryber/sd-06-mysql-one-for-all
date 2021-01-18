CREATE VIEW `estatisticas_musicais` AS
SELECT
  COUNT(DISTINCT(can.titulo_cancao)) AS `cancoes`,
  COUNT(DISTINCT(art.nome_artista)) AS `artistas`,
  COUNT(DISTINCT(alb.titulo_album)) AS `albuns`
FROM 
  SpotifyClone.artistas AS art,
  SpotifyClone.albuns AS alb,
  SpotifyClone.cancoes AS can;
