CREATE VIEW perfil_artistas AS
SELECT
ar.artista,
ab.album,
COUNT(s.artista_id) AS seguidores
FROM artistas ar
INNER JOIN albums ab ON ar.artista_id = ab.artista_id
INNER JOIN seguindo_artistas s ON ar.artista_id = s.artista_id
GROUP BY ar.artista, ab.album
ORDER BY seguidores DESC, ar.artista ASC, ab.album ASC;
