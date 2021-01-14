CREATE VIEW top_3_artistas AS
SELECT nome_artista AS artista, ouvintes AS seguidores
FROM (SELECT se.artista_id, ar.nome_artista, COUNT(*) AS ouvintes
FROM seguindo AS se
INNER JOIN artistas AS ar ON se.artista_id = ar.artista_id
GROUP BY artista_id) AS busca
ORDER BY seguidores DESC, artista
LIMIT 3;
