CREATE VIEW top_3_artistas AS
SELECT a.artista AS `artista`, COUNT(s.usuario_id) AS `seguidores`
FROM SpotifyClone.artista a
INNER JOIN SpotifyClone.seguindo_artistas s ON  a.artista_id=s.artista_id
GROUP BY s.artista_id
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;
