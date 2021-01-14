CREATE VIEW top_3_artistas AS
SELECT A.nome_artista AS artistas,
COUNT(SE.usuario_id) AS seguidores
FROM seguindo_artistas SE 
INNER JOIN artistas A ON A.artista_id = SE.artista_id
GROUP BY artistas
ORDER BY seguidores DESC, artistas
LIMIT 3;
