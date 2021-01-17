CREATE VIEW top_3_artistas AS
SELECT A.nome AS 'artista',
COUNT(SA.usuario_id) AS 'seguidores'
FROM artista AS A, seguindo_artistas AS SA
WHERE A.artista_id = SA.artista_id
GROUP BY `artista` ORDER BY `seguidores` DESC, `artista` LIMIT 3;
