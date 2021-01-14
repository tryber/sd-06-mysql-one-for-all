CREATE VIEW perfil_artistas AS
SELECT a.nome_artista AS artista,
ab.nome_album AS album,
c.numero AS seguidores
FROM (SELECT artista_id, COUNT(*) AS numero
FROM seguindo
GROUP BY artista_id) AS c
INNER JOIN artistas AS a ON c.artista_id = a.artista_id
INNER JOIN albums AS ab ON a.artista_id = ab.artista_id
ORDER BY seguidores DESC, artista, album;
