-- DROP VIEW IF EXISTS `top_3_artistas`;
CREATE VIEW top_3_artistas AS
SELECT
SpotifyClone.artistas.artistas_nome AS 'artista',
COUNT(SpotifyClone.seguindo_artistas.usuarios_id) AS `seguidores`
FROM SpotifyClone.seguindo_artistas, SpotifyClone.artistas

WHERE
SpotifyClone.artistas.artistas_id = SpotifyClone.seguindo_artistas.artistas_id

GROUP BY SpotifyClone.artistas.artistas_nome

ORDER BY `seguidores` DESC, SpotifyClone.artistas.artistas_nome
LIMIT 3;
