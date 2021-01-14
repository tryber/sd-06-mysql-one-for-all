CREATE VIEW estatisticas_musicais AS SELECT
COUNT(DISTINCT c.nome) AS `cancoes`,
COUNT(DISTINCT a.nome) AS `artistas`,
COUNT(DISTINCT ab.nome) AS `albuns`
FROM SpotifyClone.cancoes AS c, SpotifyClone.artistas AS a, SpotifyClone.albuns AS ab;
