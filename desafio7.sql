CREATE VIEW perfil_artistas AS
SELECT artista AS artista, album AS album, COUNT(sa.artista_id) AS seguidores
FROM seguindo_artistas AS sa
INNER JOIN artistas AS ar ON sa.artista_id = ar.artista_id
INNER JOIN albuns AS al ON ar.artista_id = al.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;
