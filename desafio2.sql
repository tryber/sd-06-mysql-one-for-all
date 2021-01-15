CREATE VIEW estatisticas_musicais AS
SELECT
COUNT(DISTINCT a.musica_id) AS `cancoes`,
COUNT(DISTINCT b.artista_id) AS `artistas`,
COUNT(DISTINCT c.album_id) AS `albuns`
FROM SpotifyClone.musicas AS a
JOIN SpotifyClone.albuns AS c
ON c.album_id = a.album
JOIN SpotifyClone.artistas AS b
ON c.artista = b.artista_id;
