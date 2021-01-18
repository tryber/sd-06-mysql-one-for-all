CREATE VIEW top_3_artistas AS
SELECT a.nome AS `artista`, COUNT(sa.usuario_id) AS `seguidores`
FROM SpotifyClone.artista a
INNER JOIN SpotifyClone.seguidor_artista sa ON a.artista_id = sa.artista_id
GROUP BY sa.artista_id
ORDER BY `seguidores` DESC, `artista` LIMIT 3;
