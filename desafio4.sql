CREATE VIEW top_3_artistas AS
SELECT A.artista_nome AS `artista`,
COUNT(SA.artista_id) AS `seguidores`
FROM SpotifyClone.artistas AS A, SpotifyClone.seguindo_artistas AS SA
WHERE A.artista_id = SA.artista_id
GROUP BY SA.artista_id
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;
