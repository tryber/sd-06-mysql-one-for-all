CREATE VIEW perfil_artistas AS
SELECT t1.artista AS artista,
t2.album AS album,
COUNT(t3.usuarios_id) AS seguidores
FROM artistas AS t1
INNER JOIN albuns AS t2
ON t1.id = t2.artistas_id
INNER JOIN usuarios_has_artistas AS t3
ON t1.id = t3.artistas_id
GROUP BY t2.id
ORDER BY seguidores DESC, artista, album;
