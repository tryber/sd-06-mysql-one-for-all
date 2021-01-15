CREATE VIEW perfil_artistas AS
SELECT 
AR.nome_artista AS artista,
AL.nome_album AS album,
COUNT(UA.usuario_id) AS seguidores
FROM artistas AS AR
INNER JOIN albuns AS AL
ON AL.artista_id = AR.artista_id
INNER JOIN usuarios_artistas AS UA
ON UA.artista_id = AR.artista_id
GROUP BY AL.album_id
ORDER BY seguidores DESC, artista, album;
