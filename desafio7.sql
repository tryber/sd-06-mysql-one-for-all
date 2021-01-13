USE SpotifyClone;
CREATE VIEW perfil_artistas AS
SELECT 
artista AS artista,
album AS album,
COUNT(usuario_id) AS seguidores
FROM artistas ar
INNER JOIN seguidores s ON ar.artista = s.seguindo
INNER JOIN albuns al ON ar.artista_id = al.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;
