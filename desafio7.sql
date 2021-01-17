CREATE VIEW perfil_artistas AS
SELECT 
A.nome AS artista,
AB.album AS album,
COUNT(S.usuario_id) AS seguidores
FROM artistas AS A
INNER JOIN albuns AS AB
ON AB.artista_id = A.artista_id
INNER JOIN seguindo AS S
ON S.artista_id = A.artista_id
GROUP BY AB.album_id
ORDER BY seguidores DESC, artista ASC, album ASC;
