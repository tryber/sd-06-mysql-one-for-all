CREATE VIEW top_3_artistas AS
SELECT a.artista as `artista`, COUNT(s.id_usuario) as `seguidores`
FROM SpotifyClone.artistas as a
INNER JOIN SpotifyClone.seguindo_artistas s on a.id_artista = s.id_artista
GROUP BY `artista` 
ORDER BY `seguidores` DESC, `artista`
limit 3;
