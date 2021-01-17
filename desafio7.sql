CREATE VIEW perfil_artistas AS
SELECT 
A.nome AS artista,
AB.album AS album,
COUNT(S.usuario_id) AS seguidores
FROM artistas AS A
INNER JOIN albuns AS AB
ON A.artista_id = AB.artista_id
INNER JOIN seguindo AS S
ON A.artista_id = S.artista_id
GROUP BY AB.album_id
ORDER BY seguidores DESC, artista ASC, album ASC;
