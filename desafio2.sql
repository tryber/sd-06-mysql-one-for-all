CREATE VIEW estatisticas_musicais AS
SELECT
COUNT(DISTINCT can.cancao_id) AS `cancoes`,
COUNT(DISTINCT art.artista_id) AS `artistas`,
COUNT(DISTINCT alb.album_id) AS `albuns`
FROM SpotifyClone.cancoes AS can
JOIN SpotifyClone.albuns AS alb
ON alb.album_id = can.album
JOIN SpotifyClone.artistas AS art
ON alb.artista = art.artista_id;
