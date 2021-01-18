CREATE VIEW estatisticas_musicais AS SELECT
COUNT(DISTINCT c.cancao) AS `cancoes`,
COUNT(DISTINCT a.artista) AS `artistas`,
COUNT(DISTINCT alb.album) AS `albuns`
FROM SpotifyClone.cancoes AS c, SpotifyClone.artistas AS a, SpotifyClone.albuns AS alb;
