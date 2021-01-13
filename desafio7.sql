CREATE VIEW perfil_artistas AS
SELECT
ar.artista,
ab.album,
COUNT(s.artista_id) AS `seguidores`
FROM spotifyclone.artistas ar
INNER JOIN spotifyclone.albums ab ON ar.artista_id = ab.artista_id
INNER JOIN spotifyclone.seguindo_artistas s ON ar.artista_id = s.artista_id
GROUP BY ab.album
ORDER BY `seguidores` DESC, ar.artista ASC, ab.album;
