-- DROP VIEW IF EXISTS `perfil_artistas`;
CREATE VIEW perfil_artistas AS
SELECT
SpotifyClone.artistas.artistas_nome AS 'artista',
SpotifyClone.albuns.albuns_titulo AS 'album',
COUNT(SpotifyClone.seguindo_artistas.usuarios_id) AS `seguidores`

FROM SpotifyClone.artistas, SpotifyClone.albuns, SpotifyClone.seguindo_artistas

WHERE
SpotifyClone.artistas.artistas_id = SpotifyClone.seguindo_artistas.artistas_id
AND
SpotifyClone.artistas.artistas_id = SpotifyClone.albuns.artistas_id

GROUP BY SpotifyClone.artistas.artistas_nome, SpotifyClone.albuns.albuns_titulo

ORDER BY `seguidores` DESC, SpotifyClone.artistas.artistas_nome, SpotifyClone.albuns.albuns_titulo;
