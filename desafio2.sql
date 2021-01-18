CREATE VIEW estatisticas_musicais AS
SELECT COUNT(DISTINCT c.nome) AS `cancoes`, COUNT(DISTINCT a.nome) AS `artistas`,
COUNT(DISTINCT ab.nome) AS `albuns`
FROM SpotifyClone.cancao c, SpotifyClone.artista a, SpotifyClone.album ab;
